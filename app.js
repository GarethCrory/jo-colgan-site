// Jo Colgan – renders the page from content/site.json (edited at /admin)
(function () {
  const $ = (s, r = document) => r.querySelector(s);
  const $$ = (s, r = document) => [...r.querySelectorAll(s)];
  const get = (o, path) => path.split('.').reduce((v, k) => (v == null ? v : v[k]), o);
  const el = (tag, cls, text) => { const e = document.createElement(tag); if (cls) e.className = cls; if (text != null) e.textContent = text; return e; };
  const img = u => (u ? `url("${String(u).replace(/"/g, '%22')}")` : 'none');
  const tel = p => 'tel:' + String(p || '').replace(/[^\d+]/g, '').replace(/^0/, '+44');

  const ICONS = {
    rings: '<svg viewBox="0 0 48 48" fill="none" stroke="currentColor" stroke-width="1.8"><circle cx="18" cy="26" r="11"/><circle cx="30" cy="26" r="11"/></svg>',
    glasses: '<svg viewBox="0 0 48 48" fill="none" stroke="currentColor" stroke-width="1.6"><path d="M12 8h10l-1 12a4 4 0 0 1-8 0zM17 24v14M12 38h10M26 8h10l-1 12a4 4 0 0 1-8 0zM31 24v14M26 38h10M13 14h8M27 14h8"/></svg>',
    hotel: '<svg viewBox="0 0 48 48" fill="none" stroke="currentColor" stroke-width="1.6"><path d="M12 42V12h24v30M8 42h32M20 6h8v6h-8zM17 17h3M23 17h3M29 17h2M17 23h3M23 23h3M29 23h2M17 29h3M29 29h2M21 42v-8h6v8"/></svg>',
    note: '<svg viewBox="0 0 48 48" fill="currentColor"><path d="M26 6v24.5A7 7 0 1 1 22 24.2V6h4zM26 6c2 6 10 7 10 15-2-4-6-5-10-5z"/></svg>',
    piano: '<svg viewBox="0 0 48 48" fill="none" stroke="currentColor" stroke-width="1.6"><rect x="6" y="12" width="36" height="24" rx="1"/><path d="M12 12v24M18 12v24M24 12v24M30 12v24M36 12v24"/><path d="M10 12v14h4V12M22 12v14h4V12M34 12v14h4V12" fill="currentColor"/></svg>',
    heart: '<svg viewBox="0 0 48 48" fill="none" stroke="currentColor" stroke-width="1.8"><path d="M24 40S8 30 8 18a8 8 0 0 1 16-3 8 8 0 0 1 16 3c0 12-16 22-16 22z"/></svg>',
    star: '<svg viewBox="0 0 48 48" fill="none" stroke="currentColor" stroke-width="1.6"><path d="M24 6l5.5 11.6 12.5 1.6-9.2 8.7 2.3 12.4L24 34.2 12.9 40.3l2.3-12.4L6 19.2l12.5-1.6z"/></svg>'
  };
  const PLAY = '<path d="M6 4l14 8-14 8z"/>', PAUSE = '<path d="M6 4h4v16H6zM14 4h4v16h-4z"/>';

  function applyTheme(t = {}) {
    const map = { background: '--bg', panel: '--panel', header: '--header', text: '--ink', mutedText: '--muted', accent: '--accent', accentDark: '--accent-dark', lines: '--line', heroOverlay: '--overlay' };
    for (const [k, v] of Object.entries(map)) if (t[k]) document.documentElement.style.setProperty(v, t[k]);
  }

  function render(c) {
    applyTheme(c.theme);
    if (c.siteTitle) document.title = `${c.siteTitle} | Professional Pianist – Weddings, Events & Hotel Lounges`;
    if (c.seoDescription) $('meta[name=description]').setAttribute('content', c.seoDescription);

    $$('[data-c]').forEach(e => { const v = get(c, e.dataset.c); if (v != null && v !== '') e.textContent = v; });
    $$('[data-href]').forEach(e => { const v = get(c, e.dataset.href); if (v) e.href = v; });
    $$('#phone-link,#phone-link-2').forEach(a => { if (c.contact?.phone) a.href = tel(c.contact.phone); });

    $('#hero').style.backgroundImage = img(c.hero?.image);
    $('#band').style.backgroundImage = img(c.band?.image);
    if (c.about?.image) $('#about-img').src = c.about.image;

    // Services
    const sv = $('#services'); sv.innerHTML = '';
    (c.services?.items || []).forEach(s => {
      const d = el('div', 'svc'); d.innerHTML = ICONS[s.icon] || ICONS.note;
      d.append(el('h3', null, s.title), el('p', null, s.text)); sv.append(d);
    });
    sv.style.gridTemplateColumns = window.innerWidth > 900 ? `repeat(${Math.min(4, (c.services?.items || []).length) || 1},1fr)` : '';

    // About
    const at = $('#about-text'); at.innerHTML = '';
    (c.about?.paragraphs || []).forEach(p => at.append(el('p', null, p)));
    const q = $('#about-quote'); q.textContent = c.about?.quote ? `“${c.about.quote}”` : ''; q.hidden = !c.about?.quote;

    // Testimonials
    const qs = $('#quotes'); qs.innerHTML = '';
    (c.testimonials?.items || []).forEach(t => {
      const b = el('blockquote', 'quote', `“${t.quote}”`); if (t.by) b.append(el('cite', null, t.by)); qs.append(b);
    });

    renderMusic(c.music || {});
    document.body.classList.remove('loading');
  }

  // ---- Music player ----
  const player = new Audio(); player.preload = 'none';
  let state = null, songs = {};
  function setUI(ui, on) {
    if (!ui) return;
    ui.icon.innerHTML = on ? PAUSE : PLAY; ui.el.classList.toggle('playing', on);
    if (ui.note) ui.note.textContent = on && state ? 'Now playing · ' + state.list[state.i].title : '';
  }
  function load() { player.src = state.list[state.i].audio; player.play().then(() => setUI(state.ui, true)).catch(() => {}); }
  player.addEventListener('ended', () => { if (state && state.i < state.list.length - 1) { state.i++; load(); } else if (state) { setUI(state.ui, false); state = null; } });
  player.addEventListener('error', () => { if (state) { setUI(state.ui, false); if (state.ui.note) state.ui.note.textContent = 'Unable to play'; } });
  function toggle(ui, list) {
    if (!list.length) return;
    if (state && state.ui.el === ui.el) { if (player.paused) { player.play(); setUI(ui, true); } else { player.pause(); setUI(ui, false); } return; }
    if (state) { player.pause(); setUI(state.ui, false); }
    state = { ui, list, i: 0 }; load();
  }

  function renderMusic(m) {
    songs = {}; (m.repertoire || []).forEach(s => { if (s.title && s.audio) songs[s.title.trim().toLowerCase()] = s; });
    const tr = $('#tracks'); tr.innerHTML = '';
    (m.cards || []).forEach(card => {
      const b = el('button', 'track'); b.style.backgroundImage = img(card.image);
      b.innerHTML = `<span class="play"><svg viewBox="0 0 24 24">${PLAY}</svg></span>`;
      const txt = el('span'); txt.append(el('span', 'ttl', card.title));
      const lines = el('span', 'lines'); (card.lines || []).forEach((l, i) => { if (i) lines.append(document.createElement('br')); lines.append(l); });
      const note = el('span', 'note'); txt.append(lines, note); b.append(txt);
      const list = (card.songs || []).map(t => songs[String(t).trim().toLowerCase()]).filter(Boolean);
      const ui = { el: b, icon: b.querySelector('.play svg'), note };
      b.addEventListener('click', () => toggle(ui, list));
      tr.append(b);
    });
    const rep = $('#repertoire'); rep.innerHTML = '';
    (m.repertoire || []).filter(s => s.audio).forEach(s => {
      const li = el('li'), b = el('button');
      b.innerHTML = `<span class="ic"><svg viewBox="0 0 24 24">${PLAY}</svg></span>`;
      const t = el('span', null, s.title); if (s.artist) t.append(el('small', null, s.artist)); b.append(t);
      const ui = { el: b, icon: b.querySelector('svg') };
      b.addEventListener('click', () => toggle(ui, [s]));
      li.append(b); rep.append(li);
    });
  }

  // ---- Page behaviour ----
  const burger = $('.burger'), menu = $('.menu');
  burger.addEventListener('click', () => { const o = menu.classList.toggle('open'); burger.setAttribute('aria-expanded', o); });
  $$('a', menu).forEach(a => a.addEventListener('click', () => menu.classList.remove('open')));

  const repBtn = $('#rep-btn'), rep = $('#repertoire'); let repLabel = '';
  repBtn.addEventListener('click', () => {
    if (!repLabel) repLabel = repBtn.textContent;
    const o = rep.hidden; rep.hidden = !o; repBtn.setAttribute('aria-expanded', o);
    repBtn.textContent = o ? 'Hide the full repertoire ↑' : repLabel;
  });

  const links = $$('a', menu);
  const obs = new IntersectionObserver(es => es.forEach(e => {
    if (e.isIntersecting) links.forEach(l => l.classList.toggle('active', l.getAttribute('href') === '#' + e.target.id));
  }), { rootMargin: '-45% 0px -50% 0px' });
  $$('main section[id]').forEach(s => obs.observe(s));
  $('#yr').textContent = new Date().getFullYear();

  fetch('/content/site.json', { cache: 'no-cache' })
    .then(r => r.json()).then(render)
    .catch(() => document.body.classList.remove('loading'));
})();
