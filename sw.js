const CACHE_VERSION = 'fala-comigo-v5';
const APP_ASSETS = [
  './',
  './index.html',
  './documentacao.html',
  './manifest.json',
  'https://fonts.googleapis.com/css2?family=Nunito:wght@700;800;900&display=swap'
];

self.addEventListener('install', e => {
  e.waitUntil(
    caches.open(CACHE_VERSION)
      .then(c => c.addAll(APP_ASSETS))
      .then(() => self.skipWaiting())
  );
});

self.addEventListener('activate', e => {
  e.waitUntil(
    caches.keys()
      .then(keys => Promise.all(
        keys.filter(k => k !== CACHE_VERSION).map(k => caches.delete(k))
      ))
      .then(() => self.clients.claim())
  );
});

self.addEventListener('fetch', e => {
  const url = new URL(e.request.url);

  // Não interferir na contagem de visitas (GoatCounter): deixa ir direto à rede,
  // sem cache. Mantém a medição funcionando e evita erros de cache.
  if (url.hostname === 'gc.zgo.at' || url.hostname.endsWith('.goatcounter.com')) {
    return; // segue o fluxo normal do navegador
  }

  // Cache-first para pictogramas ARASAAC (imagens externas que não mudam)
  if (url.hostname === 'static.arasaac.org') {
    e.respondWith(
      caches.open(CACHE_VERSION).then(async cache => {
        const cached = await cache.match(e.request);
        if (cached) return cached;
        try {
          const resp = await fetch(e.request);
          if (resp.ok) cache.put(e.request, resp.clone());
          return resp;
        } catch {
          return new Response('', { status: 503 });
        }
      })
    );
    return;
  }

  // Network-first para assets do app (garante versão mais recente)
  e.respondWith(
    fetch(e.request)
      .then(resp => {
        if (resp.ok) {
          const clone = resp.clone();
          caches.open(CACHE_VERSION).then(c => c.put(e.request, clone));
        }
        return resp;
      })
      .catch(() => caches.match(e.request))
  );
});
