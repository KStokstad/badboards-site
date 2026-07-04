# Bad Boards

Landing page for [badboards.org](https://badboards.org).

## Site files

- `index.html` — page content
- `styles.css` — styles
- `bad-boards-cover.jpg` — book cover
- `keri-stokstad-author-photo.jpg` — author photo
- `favicon.svg`, `favicon.ico`, `apple-touch-icon.png` — live site favicons

## Favicon kit (other sites)

Shared favicon bundles for sibling projects live in `favicons/`:

| Folder | Site |
|--------|------|
| `toolkit-badboards` | toolkit.badboards.org |
| `civiccongruence` | civiccongruence.org |
| `decathecting` | decathecting.com |
| `honor-flight` | keristokstadwrites.com / honor-flight |
| `keristokstad` | keristokstad.com |
| `communitymediavoices` | communitymediavoices.org |
| `orrerymap` | orrerymap.com |

Each folder contains: `favicon.svg`, `favicon.ico`, `favicon-16x16.png`, `apple-touch-icon.png`.

Copy a folder into a project's `public/` directory (or site root for static HTML) and add to `<head>`:

```html
<link rel="icon" href="/favicon.svg" type="image/svg+xml" />
<link rel="icon" href="/favicon.ico" sizes="any" />
<link rel="apple-touch-icon" href="/apple-touch-icon.png" />
```

## Sync local with GitHub

```bash
git pull origin main
```

If you have local-only changes you want to discard:

```bash
git fetch origin
git reset --hard origin/main
```
