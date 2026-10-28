# Jo Colgan – website (Netlify + editor)

A plain HTML site with a built-in editor at **/admin**. Everything on the page (wording, photos, colours,
services, songs, testimonials, phone/social links) lives in `content/site.json`, and the editor writes to it.

## 1. Put it on GitHub
1. On github.com create a new **private** repo, e.g. `jo-colgan-site`.
2. Upload everything in this folder to it (drag and drop on the repo page works), or use git.
3. Open `admin/config.yml` and change the line
   `repo: YOUR-GITHUB-USERNAME/jo-colgan-site` to your username and repo name.

## 2. Connect it to Netlify
1. app.netlify.com → **Add new project → Import an existing project → GitHub** → pick the repo.
2. Build command: leave blank. Publish directory: `.` → Deploy.
3. **Project configuration → Change project name** (e.g. `jocolganpianist`).

## 3. Turn on the editor login (one-off, ~5 minutes)
1. GitHub → Settings → Developer settings → **OAuth Apps → New OAuth App**
   - Homepage URL: your Netlify address
   - Authorization callback URL: `https://api.netlify.com/auth/done`
   Copy the **Client ID** and generate a **Client secret**.
2. Netlify → **Project configuration → Security (Access & security) → OAuth → Install provider → GitHub**,
   paste the Client ID and secret.
3. Go to `https://YOUR-SITE.netlify.app/admin` → **Sign in with GitHub**.
   To let Jo edit, invite her GitHub account as a collaborator on the repo.
   (Quick alternative for you only: "Sign in with Token" using a GitHub token with the `repo` scope.)

Saving in the editor commits to GitHub and Netlify republishes automatically in about a minute.

## 4. Enquiry form
Uses Netlify Forms. After the first deploy: **Forms → enable form detection** if asked, redeploy, then
**Forms → Form notifications → Add notification → Email** and enter Jo's email.

## 5. Before cancelling Squarespace
Photos and recordings still load from her old Squarespace site. Run once (Mac/Linux terminal):

    bash move-media-off-squarespace.sh

It downloads everything into `images/` and `audio/` and updates `content/site.json`. Then commit and push.

## Editing tips
- **Colours**: /admin → Homepage → Colours.
- **Songs on the three cards**: the titles in "Songs to play" must match a song in the Repertoire list exactly.
- New photos and MP3s can be uploaded straight from the editor.
