'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "3c8928f87fc4acd9b539a97907bd1585",
"assets/assets/Logo2.png": "678e0c07cbdb8db1b9cbb39bee31ceb0",
"assets/FontManifest.json": "e038b1ad891e8dbfbb4eace61b4bae19",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/fonts/RifficFree-Bold.ttf": "a1caf164c402a3fc938700d04f021d6d",
"assets/fonts/Righteous-Regular.ttf": "77fa00996ecb4104c7880b8749c7c4e0",
"assets/LICENSE": "a4af33af1a1813ca813b8b31fc50645b",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "971511d2b86d9f8972dd3df71e09c0bd",
"/": "971511d2b86d9f8972dd3df71e09c0bd",
"main.dart.js": "dae9dde56fd081b8472fb30f33e6c9ea",
"manifest.json": "3145bd75b4fb6acf0317774a9ea3ded6"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
