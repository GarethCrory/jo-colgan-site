#!/bin/bash
# Copies Jo's photos and recordings off her old Squarespace site into this folder
# and points the website at the local copies. Run once, from inside this folder:
#   bash move-media-off-squarespace.sh
set -e
mkdir -p images audio
curl -fsSL -o "images/A7404805.jpg" "https://images.squarespace-cdn.com/content/v1/6365804e2c2e2b11a837808a/1667727463453-WRH9OJ8Z7WESO04J0ITI/A7404805.jpg?format=2500w" && echo "✓ images/A7404805.jpg"
curl -fsSL -o "images/A7404828.jpg" "https://images.squarespace-cdn.com/content/v1/6365804e2c2e2b11a837808a/1667727124846-91VO2U4RFS6R2VVBINI4/A7404828.jpg?format=2500w" && echo "✓ images/A7404828.jpg"
curl -fsSL -o "images/A7404799.jpg" "https://images.squarespace-cdn.com/content/v1/6365804e2c2e2b11a837808a/1667727146921-I12978ETJZVRVUB6PJ56/A7404799.jpg?format=1500w" && echo "✓ images/A7404799.jpg"
curl -fsSL -o "images/A7404821.jpg" "https://images.squarespace-cdn.com/content/v1/6365804e2c2e2b11a837808a/1667727256593-0K70U36YQLYOBXNU4OAZ/A7404821.jpg?format=1500w" && echo "✓ images/A7404821.jpg"
curl -fsSL -o "images/A7404783.jpg" "https://images.squarespace-cdn.com/content/v1/6365804e2c2e2b11a837808a/1667727284805-1L0K1XFLNB4OK0MX3L8I/A7404783.jpg?format=1500w" && echo "✓ images/A7404783.jpg"
curl -fsSL -o "audio/a-thousand-years.mp3" "https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/63677823efbeb91ebee8e36f/1791835538809/A%2BThousand%2BYears.mp3" && echo "✓ audio/a-thousand-years.mp3"
curl -fsSL -o "audio/ain-t-no-sunshine.mp3" "https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/636778237bdf8d6295d1a778/1667725411688/Ain%27t%2BNo%2BSunshine.mp3" && echo "✓ audio/ain-t-no-sunshine.mp3"
curl -fsSL -o "audio/feather-theme-forrest-gump.mp3" "https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/63677832bff1ee2e74eba749/1667725517381/Forest%2BGump.mp3" && echo "✓ audio/feather-theme-forrest-gump.mp3"
curl -fsSL -o "audio/hallelujah.mp3" "https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/6367783eaad62e55e236ea97/1667725586628/Hallelujah.mp3" && echo "✓ audio/hallelujah.mp3"
curl -fsSL -o "audio/halo.mp3" "https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/63677844a0b2f8274376d12f/1667725595476/Halo.mp3" && echo "✓ audio/halo.mp3"
curl -fsSL -o "audio/have-i-told-you-lately.mp3" "https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/6367784acae2ad63d8101395/1667725700909/Have%2BI%2BTold%2BYou%2BLately.mp3" && echo "✓ audio/have-i-told-you-lately.mp3"
curl -fsSL -o "audio/hello.mp3" "https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/63677851ef73e25bbb562c04/1667725714416/Hello.mp3" && echo "✓ audio/hello.mp3"
curl -fsSL -o "audio/house-of-the-rising-sun.mp3" "https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/63677868a101fd0e9d47c774/1667725763348/House%2Bof%2Bthe%2BRising%2BSun.mp3" && echo "✓ audio/house-of-the-rising-sun.mp3"
curl -fsSL -o "audio/can-t-help-falling-in-love.mp3" "https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/6367787131010f3c83652a44/1667726324018/I%2Bcan%27t%2Bhelp%2Bfalling%2Bin%2Blove%2Bwith%2Byou.mp3" && echo "✓ audio/can-t-help-falling-in-love.mp3"
curl -fsSL -o "audio/sorry.mp3" "https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/63677878c789044e5b07953d/1667725825685/Justin%2BBieber.mp3" && echo "✓ audio/sorry.mp3"
curl -fsSL -o "audio/love-me-tender.mp3" "https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/6367787a85ff2d79b1be89e8/1667725844705/Love%2Bme%2BTender.mp3" && echo "✓ audio/love-me-tender.mp3"
curl -fsSL -o "audio/make-you-feel-my-love.mp3" "https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/63677880056cd96f750ed041/1667725908397/Make%2Byou%2Bfeel%2Bmy%2Blove.mp3" && echo "✓ audio/make-you-feel-my-love.mp3"
curl -fsSL -o "audio/new-world-symphony.mp3" "https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/6367786bc85d7e6f72de9845/1667726312909/Hovis.mp3" && echo "✓ audio/new-world-symphony.mp3"
curl -fsSL -o "audio/over-the-rainbow.mp3" "https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/6367788aecf7782e5e984b20/1667725974824/Over%2Bthe%2Brainbow.mp3" && echo "✓ audio/over-the-rainbow.mp3"
curl -fsSL -o "audio/perfect-day.mp3" "https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/63677895ecf7782e5e984b4b/1667726001292/Perfect%2Bday.mp3" && echo "✓ audio/perfect-day.mp3"
curl -fsSL -o "audio/ride-on.mp3" "https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/6367785b5f063c5f404e9a4c/1667725733061/Horse.mp3" && echo "✓ audio/ride-on.mp3"
curl -fsSL -o "audio/run.mp3" "https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/6367789fe1b65f028fb75933/1667726056911/Run.mp3" && echo "✓ audio/run.mp3"
curl -fsSL -o "audio/runnin.mp3" "https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/636778a7a101fd0e9d47c7d7/1667726041101/Runnin.mp3" && echo "✓ audio/runnin.mp3"
curl -fsSL -o "audio/set-fire-to-the-rain-wrecking-ball.mp3" "https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/636778a92ab6724288d139db/1667726095665/Set%2Bfire%2Bto%2Bthe%2Brain%2B%26%2BWrecking%2Bball.mp3" && echo "✓ audio/set-fire-to-the-rain-wrecking-ball.mp3"
curl -fsSL -o "audio/she-moved-through-the-fair.mp3" "https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/636778b23dde1608dd7a0d1f/1667726150486/She%2Bmoves%2Bthrough%2Bthe%2Bfair.mp3" && echo "✓ audio/she-moved-through-the-fair.mp3"
curl -fsSL -o "audio/smells-like-teen-spirit.mp3" "https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/636778b3d4eaa5274823ff7f/1668190977041/Smells%2Blike%2BTeen%2BSpirit.mp3" && echo "✓ audio/smells-like-teen-spirit.mp3"
curl -fsSL -o "audio/someone-like-you.mp3" "https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/636778bad4eaa52748240275/1668200292312/Someone%2Blike.mp3" && echo "✓ audio/someone-like-you.mp3"
curl -fsSL -o "audio/songbird.mp3" "https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/636778be7686f25e85081307/1667726170938/Songbird.mp3" && echo "✓ audio/songbird.mp3"
curl -fsSL -o "audio/the-sound-of-silence.mp3" "https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/636778c9add0ac1e4f4f3788/1667726184902/Sound%2Bof%2BSilence.mp3" && echo "✓ audio/the-sound-of-silence.mp3"
curl -fsSL -o "audio/star-of-the-county-down.mp3" "https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/636778c99859f31a2c631116/1667726211266/Star%2Bof%2Bthe%2BCounty%2BDown.mp3" && echo "✓ audio/star-of-the-county-down.mp3"
curl -fsSL -o "audio/sweet-child-o-mine.mp3" "https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/636778d1d1be552f5ffa7c7b/1667726196880/Sweet%2BChild%2Bo%27%2Bmine.mp3" && echo "✓ audio/sweet-child-o-mine.mp3"
curl -fsSL -o "audio/take-back-the-river.mp3" "https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/636778d298794148f8eed3b2/1667726226473/Take%2Bback%2Bthe%2BRiver.mp3" && echo "✓ audio/take-back-the-river.mp3"
curl -fsSL -o "audio/thinking-out-loud.mp3" "https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/636778d87be8805f6ea96d5f/1667726240019/Thinking%2Bout%2Bloud.mp3" && echo "✓ audio/thinking-out-loud.mp3"
curl -fsSL -o "images/A7404783.jpg" "https://images.squarespace-cdn.com/content/v1/6365804e2c2e2b11a837808a/1667727284805-1L0K1XFLNB4OK0MX3L8I/A7404783.jpg?format=2500w" && echo "✓ images/A7404783.jpg"
python3 - <<'PY'
import json
p='content/site.json'
s=open(p).read()
s=s.replace("https://images.squarespace-cdn.com/content/v1/6365804e2c2e2b11a837808a/1667727463453-WRH9OJ8Z7WESO04J0ITI/A7404805.jpg?format=2500w","/images/A7404805.jpg")
s=s.replace("https://images.squarespace-cdn.com/content/v1/6365804e2c2e2b11a837808a/1667727124846-91VO2U4RFS6R2VVBINI4/A7404828.jpg?format=2500w","/images/A7404828.jpg")
s=s.replace("https://images.squarespace-cdn.com/content/v1/6365804e2c2e2b11a837808a/1667727146921-I12978ETJZVRVUB6PJ56/A7404799.jpg?format=1500w","/images/A7404799.jpg")
s=s.replace("https://images.squarespace-cdn.com/content/v1/6365804e2c2e2b11a837808a/1667727256593-0K70U36YQLYOBXNU4OAZ/A7404821.jpg?format=1500w","/images/A7404821.jpg")
s=s.replace("https://images.squarespace-cdn.com/content/v1/6365804e2c2e2b11a837808a/1667727284805-1L0K1XFLNB4OK0MX3L8I/A7404783.jpg?format=1500w","/images/A7404783.jpg")
s=s.replace("https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/63677823efbeb91ebee8e36f/1791835538809/A%2BThousand%2BYears.mp3","/audio/a-thousand-years.mp3")
s=s.replace("https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/636778237bdf8d6295d1a778/1667725411688/Ain%27t%2BNo%2BSunshine.mp3","/audio/ain-t-no-sunshine.mp3")
s=s.replace("https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/63677832bff1ee2e74eba749/1667725517381/Forest%2BGump.mp3","/audio/feather-theme-forrest-gump.mp3")
s=s.replace("https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/6367783eaad62e55e236ea97/1667725586628/Hallelujah.mp3","/audio/hallelujah.mp3")
s=s.replace("https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/63677844a0b2f8274376d12f/1667725595476/Halo.mp3","/audio/halo.mp3")
s=s.replace("https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/6367784acae2ad63d8101395/1667725700909/Have%2BI%2BTold%2BYou%2BLately.mp3","/audio/have-i-told-you-lately.mp3")
s=s.replace("https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/63677851ef73e25bbb562c04/1667725714416/Hello.mp3","/audio/hello.mp3")
s=s.replace("https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/63677868a101fd0e9d47c774/1667725763348/House%2Bof%2Bthe%2BRising%2BSun.mp3","/audio/house-of-the-rising-sun.mp3")
s=s.replace("https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/6367787131010f3c83652a44/1667726324018/I%2Bcan%27t%2Bhelp%2Bfalling%2Bin%2Blove%2Bwith%2Byou.mp3","/audio/can-t-help-falling-in-love.mp3")
s=s.replace("https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/63677878c789044e5b07953d/1667725825685/Justin%2BBieber.mp3","/audio/sorry.mp3")
s=s.replace("https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/6367787a85ff2d79b1be89e8/1667725844705/Love%2Bme%2BTender.mp3","/audio/love-me-tender.mp3")
s=s.replace("https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/63677880056cd96f750ed041/1667725908397/Make%2Byou%2Bfeel%2Bmy%2Blove.mp3","/audio/make-you-feel-my-love.mp3")
s=s.replace("https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/6367786bc85d7e6f72de9845/1667726312909/Hovis.mp3","/audio/new-world-symphony.mp3")
s=s.replace("https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/6367788aecf7782e5e984b20/1667725974824/Over%2Bthe%2Brainbow.mp3","/audio/over-the-rainbow.mp3")
s=s.replace("https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/63677895ecf7782e5e984b4b/1667726001292/Perfect%2Bday.mp3","/audio/perfect-day.mp3")
s=s.replace("https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/6367785b5f063c5f404e9a4c/1667725733061/Horse.mp3","/audio/ride-on.mp3")
s=s.replace("https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/6367789fe1b65f028fb75933/1667726056911/Run.mp3","/audio/run.mp3")
s=s.replace("https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/636778a7a101fd0e9d47c7d7/1667726041101/Runnin.mp3","/audio/runnin.mp3")
s=s.replace("https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/636778a92ab6724288d139db/1667726095665/Set%2Bfire%2Bto%2Bthe%2Brain%2B%26%2BWrecking%2Bball.mp3","/audio/set-fire-to-the-rain-wrecking-ball.mp3")
s=s.replace("https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/636778b23dde1608dd7a0d1f/1667726150486/She%2Bmoves%2Bthrough%2Bthe%2Bfair.mp3","/audio/she-moved-through-the-fair.mp3")
s=s.replace("https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/636778b3d4eaa5274823ff7f/1668190977041/Smells%2Blike%2BTeen%2BSpirit.mp3","/audio/smells-like-teen-spirit.mp3")
s=s.replace("https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/636778bad4eaa52748240275/1668200292312/Someone%2Blike.mp3","/audio/someone-like-you.mp3")
s=s.replace("https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/636778be7686f25e85081307/1667726170938/Songbird.mp3","/audio/songbird.mp3")
s=s.replace("https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/636778c9add0ac1e4f4f3788/1667726184902/Sound%2Bof%2BSilence.mp3","/audio/the-sound-of-silence.mp3")
s=s.replace("https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/636778c99859f31a2c631116/1667726211266/Star%2Bof%2Bthe%2BCounty%2BDown.mp3","/audio/star-of-the-county-down.mp3")
s=s.replace("https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/636778d1d1be552f5ffa7c7b/1667726196880/Sweet%2BChild%2Bo%27%2Bmine.mp3","/audio/sweet-child-o-mine.mp3")
s=s.replace("https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/636778d298794148f8eed3b2/1667726226473/Take%2Bback%2Bthe%2BRiver.mp3","/audio/take-back-the-river.mp3")
s=s.replace("https://static1.squarespace.com/static/6365804e2c2e2b11a837808a/636580e89859f31a2c352389/636778d87be8805f6ea96d5f/1667726240019/Thinking%2Bout%2Bloud.mp3","/audio/thinking-out-loud.mp3")
s=s.replace("https://images.squarespace-cdn.com/content/v1/6365804e2c2e2b11a837808a/1667727284805-1L0K1XFLNB4OK0MX3L8I/A7404783.jpg?format=2500w","/images/A7404783.jpg")
open(p,'w').write(s)
print('Website now uses the local copies. Commit & push (or redeploy) to publish.')
PY
