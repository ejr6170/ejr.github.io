# Kishrei Chutz booth site

Four static pages, no build step:

- `index.html`: the partner map (booth screen). Autoplay tour, tappable pins, QR code to the game.
- `day.html`: "A day in the role". Vertical on phones, horizontal with photos on big screens.
- `liaison.html`: "You're the liaison" scenario game.
- `game.html`: "Guess the Flag" passport game.

## Photos for day.html

Run once from this folder:

```bash
bash get-photos.sh
```

It downloads 7 photos from Wikimedia Commons into `images/day-1.jpg` … `images/day-7.jpg`.
Any photo that fails to download shows a styled placeholder instead. To swap a photo, replace the file
with another `.jpg` of the same name. Each Commons file page lists its license and author.

## Editing content

- Day timeline entries: the `CONFIG` block at the bottom of `day.html` (set `isExample: false` after the interview).
- Quotes / "A day in the role" on the map's Role card: the `CONFIG` block at the bottom of `index.html`.
- Game URL for the QR code: `CONFIG.gameUrl` in `index.html` (leave empty to use the hosted site's own address).

## Hosting

Upload the whole folder (including `images/`) to Netlify Drop or GitHub Pages.
