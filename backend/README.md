```
npm install
npm run dev
```

```
npm run deploy
```
package.jsonの
"dev": "wrangler dev",
を
"dev": "wrangler dev --ip 0.0.0.0",
にかえたらdockerで動かせた