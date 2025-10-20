'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "61edc896890e485f148b8a95004573a0",
"assets/AssetManifest.bin.json": "f1f62ac91bfc493e3565a68cdc8a86b8",
"assets/AssetManifest.json": "488585784a51629b281af028b5d17e8a",
"assets/assets/fonts/ALGER.TTF": "a9bc731ef79e8dfba0a32016e5b39076",
"assets/assets/fonts/TIMES.TTF": "31cb63d00d126849b790d7dfc5edd7f0",
"assets/assets/fonts/Wild.ttf": "5b9013ea85429ddeec088d358a0f85ee",
"assets/assets/icons/logo/apple.png": "454fd70656a6b6d024c7868ab7526ae7",
"assets/assets/icons/logo/google.png": "0004a12c10513ccfbc1512b800e5b45d",
"assets/assets/icons/logo/lock.png": "7227b8a3ebe59064f9307f77c264962c",
"assets/assets/icons/sublogo/restaurant.png": "de193d337bb99c8b226b5e22f5f4509e",
"assets/assets/images/alcohol/abc.jpg": "09c48d63197cf2d105600b67d29ffd8b",
"assets/assets/images/alcohol/anchor.jpg": "a3ea762d392f9d6707eabe9fc74efd7a",
"assets/assets/images/alcohol/angkor.jpg": "b71f21311767f8656f894474a6e90bfd",
"assets/assets/images/alcohol/cambodia.jpg": "42fb65053626edc33f6638d868d986e0",
"assets/assets/images/alcohol/carlsberg.jpg": "04374fd917b2d46001772bcdc98881de",
"assets/assets/images/alcohol/hanuman.jpg": "94994034181471c5b53e178e3f080972",
"assets/assets/images/alcohol/heineken.jpg": "84cbcb6398f2fb514d0c0f1a30a112d3",
"assets/assets/images/alcohol/jinro.jpg": "ed622e92dc4a12f90ef7087f9c7a1a81",
"assets/assets/images/alcohol/krud.jpg": "0df432c9f461722c8202e49a3d214008",
"assets/assets/images/alcohol/tiger.jpg": "e19a4b266a0e4fc121ec8914e22bf586",
"assets/assets/images/burger/burger1.jpg": "6a4dfa8a7feaf0aa4a3f88dd0ca2de0f",
"assets/assets/images/burger/burger10.jpg": "a4840a6853ced33d9021cdf4de1fdfc1",
"assets/assets/images/burger/burger2.jpg": "ac5b65a3d82c6ea0ddf44ac140f55fff",
"assets/assets/images/burger/burger3.jpg": "de0b08296124fbf538ed347e15affadb",
"assets/assets/images/burger/burger4.jpg": "58d3a795e747f55dae086e0d8412b6d4",
"assets/assets/images/burger/burger5.jpg": "7121ab3325b5f248c4268537fde44e4a",
"assets/assets/images/burger/burger6.jpg": "3fb2b2036daa4adf86546241fdb12435",
"assets/assets/images/burger/burger7.jpg": "eb96576fe0b8dda4df08ef0143b5cd69",
"assets/assets/images/burger/burger8.jpg": "477b3c5b11e5b04342398a3c1d5341b6",
"assets/assets/images/burger/burger9.jpg": "7a5018cf0566b7e7d3b9ee282cd10ec0",
"assets/assets/images/cake/cake1.jpg": "2bd0695d4b6fca497f5b044039ecfbde",
"assets/assets/images/cake/cake10.jpg": "a235199638e1ecd35fd9c5ea12f8ff12",
"assets/assets/images/cake/cake2.jpg": "f2bceabf0df4b48945afd18df17d3cae",
"assets/assets/images/cake/cake3.jpg": "9867919d61f4bf2f2d61c4df3f8a583b",
"assets/assets/images/cake/cake4.jpg": "a20fc2c17e1b689c49623a0841bc1e60",
"assets/assets/images/cake/cake5.jpg": "40261512b40e28cea8a8915336a5e119",
"assets/assets/images/cake/cake6.jpg": "aa0809b6c57c9618f3df48058a1820a4",
"assets/assets/images/cake/cake7.jpg": "f3c169c8521bf3497e15714fe1e2f1fe",
"assets/assets/images/cake/cake8.jpg": "5225562b8f294d2c26990d789769b055",
"assets/assets/images/cake/cake9.jpg": "b5625bf0643559d4b1e63e3c28a706a8",
"assets/assets/images/cakekh/kh1.jpg": "5598ea36b13504b49f0f29fc4709d798",
"assets/assets/images/cakekh/kh10.jpg": "f91878b07a7952005424ad2ee4765731",
"assets/assets/images/cakekh/kh2.jpg": "2f4f8c47832cce8021bef714e46ef884",
"assets/assets/images/cakekh/kh3.jpg": "14cf0574b992619d0dad915c36fcb4c5",
"assets/assets/images/cakekh/kh4.jpg": "f3778724e2ddd998d4a65a1970f74fcb",
"assets/assets/images/cakekh/kh5.jpg": "76aa8163dc27d6946fea6cea65168b09",
"assets/assets/images/cakekh/kh6.jpg": "641d0ecd78c2609028a15cd3278294f7",
"assets/assets/images/cakekh/kh7.jpg": "28daa3bf69b7e26a6e329d8f94477944",
"assets/assets/images/cakekh/kh8.jpg": "765f9eb0d19e8c29cb13a156fe4f4910",
"assets/assets/images/cakekh/kh9.jpg": "084f879f985008ced858b41ed91c1ddd",
"assets/assets/images/drink/7up.jpg": "44ba376984bcbf404e30003833ef8ca2",
"assets/assets/images/drink/coca.jpg": "de6052875c7433ddd5312cbb8a9be14a",
"assets/assets/images/drink/fanta.jpg": "66689f3b90945e634a1a84b338a877d4",
"assets/assets/images/drink/mirida.jpg": "007365c45b8ce08f2d7a35943d138808",
"assets/assets/images/drink/monster.jpg": "f37d7205f1fa562363fbfcdb2772a4ea",
"assets/assets/images/drink/pepsi.jpg": "9b7219a83c8e009f7df6fe25d00e4034",
"assets/assets/images/drink/pocarisweat.jpg": "988ca2983985b905bce7caaf998edb87",
"assets/assets/images/drink/redbull.jpg": "1f3482071e3813c2d8ea9e5602b1253c",
"assets/assets/images/drink/sting.jpg": "e1019e3afe4e5ffceaac181d7695f90e",
"assets/assets/images/drink/water.jpg": "76bb620a294d30238acc15c81bfbea34",
"assets/assets/images/food/food1.jpg": "6d1c121221ffeffc25f949063950835a",
"assets/assets/images/food/food10.jpg": "8988ca685399ae0d5f112efec2b7d599",
"assets/assets/images/food/food2.jpg": "9b785c3d0e1809df999a9338b7f01462",
"assets/assets/images/food/food3.jpg": "e09b0fadd39f825f7a69d7c0a0ea76ce",
"assets/assets/images/food/food4.jpg": "dba5128e72f4c2e1713e1d21411d61a8",
"assets/assets/images/food/food5.jpg": "331a138bf40714583977bf152260d335",
"assets/assets/images/food/food6.jpg": "eebc77259cc769b737ecc6d50df199c0",
"assets/assets/images/food/food7.jpg": "ef95cf2ecdf8ea5522d50a9adf79df10",
"assets/assets/images/food/food8.jpg": "4a90ebed98895f49219f8ef80031990e",
"assets/assets/images/food/food9.jpg": "7c71c1e06ee408f2b67867d3e766f365",
"assets/assets/images/icecream/i1.jpg": "83b9ac4d0d605235c6f19603661ddc1c",
"assets/assets/images/icecream/i10.jpg": "57ab02d41821f48b814e33efcec283f8",
"assets/assets/images/icecream/i2.jpg": "f89525b9c6a99785478927fc1f454e94",
"assets/assets/images/icecream/i3.jpg": "0f27fe3548c1b090b19ca9a366ebf107",
"assets/assets/images/icecream/i4.jpg": "1e909a185e446a0bfae01185486c6ab5",
"assets/assets/images/icecream/i5.jpg": "244e83f35e230ef43a8610075f59941e",
"assets/assets/images/icecream/i6.jpg": "b2aea6cb7dcdaef12f1188f7ae77e69d",
"assets/assets/images/icecream/i7.jpg": "a6a1a64c234e3eceb1102c027e31ca2d",
"assets/assets/images/icecream/i8.jpg": "3e9bbdb89f7048bb94aee0088fbab5af",
"assets/assets/images/icecream/i9.jpg": "390e5d00466ccca0cf69a015bd75a22f",
"assets/assets/images/kh/f1.jpg": "97b1aa84498c4467d7a9d732e2c3302c",
"assets/assets/images/kh/f10.jpg": "6a69079df1d241944addf1fed0a4c425",
"assets/assets/images/kh/f2.jpg": "008c65de8ac9a63ae690fcf996b6f26e",
"assets/assets/images/kh/f3.jpg": "479634bde7d63c859f0de368e6d04f91",
"assets/assets/images/kh/f4.jpg": "602f457a8a2b648da080f014c0b7368c",
"assets/assets/images/kh/f5.jpg": "cd1624a721531494ef10cff8f1e01abc",
"assets/assets/images/kh/f6.jpg": "47241f4e403e3039b890efd5ab0718ea",
"assets/assets/images/kh/f7.jpg": "d726f3c6c2da8a9d71f546b91b47c217",
"assets/assets/images/kh/f8.jpg": "8a1daa5e3bbc0c14f5f8322d55ee5bff",
"assets/assets/images/kh/f9.jpg": "8606ae2de0c46ea360f669404786c43e",
"assets/assets/images/noodle/noodle1.jpg": "5652cdeadd8c7d2b1199c6a63d50251c",
"assets/assets/images/noodle/noodle10.jpg": "a6fb940521fe9ceae1909e9401f16f9a",
"assets/assets/images/noodle/noodle2.jpg": "647e009786fbc9905b8882a6c6bd2f23",
"assets/assets/images/noodle/noodle3.jpg": "06d090673d858e0fc578dbd8394e8b6f",
"assets/assets/images/noodle/noodle4.jpg": "7d9c0dc6a394a7750c6883f1d0b5e74b",
"assets/assets/images/noodle/noodle5.jpg": "cebbf7861861cedeb03cdaefd85470f4",
"assets/assets/images/noodle/noodle6.jpg": "9be915e3aab9503a3d6e11dfaa7ac92a",
"assets/assets/images/noodle/noodle7.jpg": "836fa7dc695256398dffd45fa125030a",
"assets/assets/images/noodle/noodle8.jpg": "595955db2c7fefdf8ba8c57d590a1d06",
"assets/assets/images/noodle/noodle9.jpg": "1e3f070011d5aa2025a7801c18ce2bbf",
"assets/assets/images/rice/rice1.jpg": "36ec9528bc78d8de99a7e07810009aac",
"assets/assets/images/rice/rice10.jpg": "3e6d20a3df57ac91b2ffa9a175a5d39b",
"assets/assets/images/rice/rice2.jpg": "0fe5174068e2c49fef28ac395cafdd0f",
"assets/assets/images/rice/rice3.jpg": "ce3d59d23d3dbaee9d13a227da6ee718",
"assets/assets/images/rice/rice4.jpg": "7c227d7d6e1160b14d78d3aca2a3c8da",
"assets/assets/images/rice/rice5.jpg": "047f1de62bb21d8f10fea5ba6bd5cd13",
"assets/assets/images/rice/rice6.jpg": "49620d9b008ee44d6d695d51036c2a9f",
"assets/assets/images/rice/rice7.jpg": "be7b61494acf12c445dad6329f0dd37f",
"assets/assets/images/rice/rice8.jpg": "5bca8e353e248ace435978eb20695af3",
"assets/assets/images/rice/rice9.jpg": "ea168418c1593c2523cdd37cde253df6",
"assets/assets/images/seafood/sea1.jpg": "e76563bd6ab371d22397840a5ea06553",
"assets/assets/images/seafood/sea10.jpg": "a945b80dbb6b704b6200030b42178160",
"assets/assets/images/seafood/sea2.jpg": "765de0e6d46c22e6079d2f5d2c91f85c",
"assets/assets/images/seafood/sea3.jpg": "7127bc229746e6e05fe58160478243b0",
"assets/assets/images/seafood/sea4.jpg": "f2007654ad97406e178ec92b2436ba28",
"assets/assets/images/seafood/sea5.jpg": "1c13c7aaf0030d59a064ab010ff1928c",
"assets/assets/images/seafood/sea6.jpg": "c948bc5705f0358173ed9834d7f13d8b",
"assets/assets/images/seafood/sea7.jpg": "2720830ffdd505cc4f5465d6b25da162",
"assets/assets/images/seafood/sea8.jpg": "19b5145a037fa660a87819320f3326ae",
"assets/assets/images/seafood/sea9.jpg": "ea264c3c128820f7b88b888d257a859a",
"assets/assets/images/sweetkh/skh1.jpg": "517f5d53c7c8bf5ce7134d9834710959",
"assets/assets/images/sweetkh/skh10.jpg": "4b67155de05bd7c6fbbc9c20d1f80aaf",
"assets/assets/images/sweetkh/skh2.jpg": "38a4f6d8ff612f00a968bd9ed1bfcd66",
"assets/assets/images/sweetkh/skh3.jpg": "4eb685559d3e191fb1fea9b30fe2dfed",
"assets/assets/images/sweetkh/skh4.jpg": "0d500fd4fdb43a78b7851c4843cfc60c",
"assets/assets/images/sweetkh/skh5.jpg": "d9466007bbd8c4e1ae8f4a4d127b1e01",
"assets/assets/images/sweetkh/skh6.jpg": "8a7ef20b297a8a07f1dd24809bd19f46",
"assets/assets/images/sweetkh/skh7.jpg": "33f028cc24bc13d34fbf30abb50ffec5",
"assets/assets/images/sweetkh/skh8.jpg": "f880289d843d641d6f1874e536752563",
"assets/assets/images/sweetkh/skh9.jpg": "104357f0017e6f0ccac8cf9a1b3a672a",
"assets/FontManifest.json": "11ab5708398860cf02fff93bd9bb8a8b",
"assets/fonts/MaterialIcons-Regular.otf": "130ca13490d4547e25c8eebb4da2f566",
"assets/NOTICES": "7eeb80171282355e4dda8d418429b011",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/flutter_arc_text/assets/README.md": "fbaed1ae60d80596d99545ef45d72803",
"assets/packages/flutter_credit_card/font/halter.ttf": "4e081134892cd40793ffe67fdc3bed4e",
"assets/packages/flutter_credit_card/icons/amex.png": "f75cabd609ccde52dfc6eef7b515c547",
"assets/packages/flutter_credit_card/icons/chip.png": "5728d5ac34dbb1feac78ebfded493d69",
"assets/packages/flutter_credit_card/icons/discover.png": "62ea19837dd4902e0ae26249afe36f94",
"assets/packages/flutter_credit_card/icons/elo.png": "ffd639816704b9f20b73815590c67791",
"assets/packages/flutter_credit_card/icons/hipercard.png": "921660ec64a89da50a7c82e89d56bac9",
"assets/packages/flutter_credit_card/icons/mastercard.png": "7e386dc6c169e7164bd6f88bffb733c7",
"assets/packages/flutter_credit_card/icons/mir.png": "c87d1479c2784a534751238167b254b5",
"assets/packages/flutter_credit_card/icons/rupay.png": "a10fbeeae8d386ee3623e6160133b8a8",
"assets/packages/flutter_credit_card/icons/unionpay.png": "87176915b4abdb3fcc138d23e4c8a58a",
"assets/packages/flutter_credit_card/icons/visa.png": "f6301ad368219611958eff9bb815abfe",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "140ccb7d34d0a55065fbd422b843add6",
"canvaskit/canvaskit.js.symbols": "58832fbed59e00d2190aa295c4d70360",
"canvaskit/canvaskit.wasm": "07b9f5853202304d3b0749d9306573cc",
"canvaskit/chromium/canvaskit.js": "5e27aae346eee469027c80af0751d53d",
"canvaskit/chromium/canvaskit.js.symbols": "193deaca1a1424049326d4a91ad1d88d",
"canvaskit/chromium/canvaskit.wasm": "24c77e750a7fa6d474198905249ff506",
"canvaskit/skwasm.js": "1ef3ea3a0fec4569e5d531da25f34095",
"canvaskit/skwasm.js.symbols": "0088242d10d7e7d6d2649d1fe1bda7c1",
"canvaskit/skwasm.wasm": "264db41426307cfc7fa44b95a7772109",
"canvaskit/skwasm_heavy.js": "413f5b2b2d9345f37de148e2544f584f",
"canvaskit/skwasm_heavy.js.symbols": "3c01ec03b5de6d62c34e17014d1decd3",
"canvaskit/skwasm_heavy.wasm": "8034ad26ba2485dab2fd49bdd786837b",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "888483df48293866f9f41d3d9274a779",
"flutter_bootstrap.js": "968a3a8f17c477a661fd1d72d93138a0",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "87610edcb9d5bc8bcd6b2aaba1d8653f",
"/": "87610edcb9d5bc8bcd6b2aaba1d8653f",
"main.dart.js": "8caa653b230fe2e0e91796356e379bdc",
"manifest.json": "38d0a76c45564386d5d16064ea6e065e",
"version.json": "f27ec6c060a770f4b3874fb927729a73"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
