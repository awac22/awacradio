/**
 * Copyright 2018 Google Inc. All Rights Reserved.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *     http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

// If the loader is already loaded, just stop.
if (!self.define) {
  let registry = {};

  // Used for `eval` and `importScripts` where we can't get script URL by other means.
  // In both cases, it's safe to use a global var because those functions are synchronous.
  let nextDefineUri;

  const singleRequire = (uri, parentUri) => {
    uri = new URL(uri + ".js", parentUri).href;
    return registry[uri] || (
      
        new Promise(resolve => {
          if ("document" in self) {
            const script = document.createElement("script");
            script.src = uri;
            script.onload = resolve;
            document.head.appendChild(script);
          } else {
            nextDefineUri = uri;
            importScripts(uri);
            resolve();
          }
        })
      
      .then(() => {
        let promise = registry[uri];
        if (!promise) {
          throw new Error(`Module ${uri} didn’t register its module`);
        }
        return promise;
      })
    );
  };

  self.define = (depsNames, factory) => {
    const uri = nextDefineUri || ("document" in self ? document.currentScript.src : "") || location.href;
    if (registry[uri]) {
      // Module is already loading or loaded.
      return;
    }
    let exports = {};
    const require = depUri => singleRequire(depUri, uri);
    const specialDeps = {
      module: { uri },
      exports,
      require
    };
    registry[uri] = Promise.all(depsNames.map(
      depName => specialDeps[depName] || require(depName)
    )).then(deps => {
      factory(...deps);
      return exports;
    });
  };
}
define(['./workbox-fa046058'], (function (workbox) { 'use strict';

  /**
  * Welcome to your Workbox-powered service worker!
  *
  * You'll need to register this file in your web app.
  * See https://goo.gl/nhQhGp
  *
  * The rest of the code is auto-generated. Please don't update this file
  * directly; instead, make changes to your Workbox build configuration
  * and re-run your build process.
  * See https://goo.gl/2aRDsh
  */

  self.addEventListener('message', event => {
    if (event.data && event.data.type === 'SKIP_WAITING') {
      self.skipWaiting();
    }
  });
  /**
   * The precacheAndRoute() method efficiently caches and responds to
   * requests for URLs in the manifest.
   * See https://goo.gl/S9QRab
   */

  workbox.precacheAndRoute([{
    "url": "//installer/js/app.js",
    "revision": "f410211ac9be1652bddc7bf91cf6876c"
  }, {
    "url": "//js/app.js",
    "revision": "ac510275c3ed37aff573108bb6b67dd0"
  }, {
    "url": "/css/app.css",
    "revision": "c21348e54a1cc21c79625c4f2d28bb2b"
  }, {
    "url": "/js/chunks/030228e90311abeb.js",
    "revision": null
  }, {
    "url": "/js/chunks/0787df82c1fcc7ff.js",
    "revision": null
  }, {
    "url": "/js/chunks/11ee0d95f7b6ae03.js",
    "revision": null
  }, {
    "url": "/js/chunks/17e591e3f9f47ac0.js",
    "revision": null
  }, {
    "url": "/js/chunks/1e6807263129def2.js",
    "revision": null
  }, {
    "url": "/js/chunks/2066fada9b02cfc7.js",
    "revision": null
  }, {
    "url": "/js/chunks/25bbee7c679d2623.js",
    "revision": null
  }, {
    "url": "/js/chunks/26a473666e59ba59.js",
    "revision": null
  }, {
    "url": "/js/chunks/32253171cd057ec0.js",
    "revision": null
  }, {
    "url": "/js/chunks/3588f3ff78ffedff.js",
    "revision": null
  }, {
    "url": "/js/chunks/4060b8660c46105d.js",
    "revision": null
  }, {
    "url": "/js/chunks/41c884e281435c23.js",
    "revision": null
  }, {
    "url": "/js/chunks/4b0f115bdb250cc4.js",
    "revision": null
  }, {
    "url": "/js/chunks/54a66af08bee7de2.js",
    "revision": null
  }, {
    "url": "/js/chunks/56d84021a074acc5.js",
    "revision": null
  }, {
    "url": "/js/chunks/5f8f1c845598b683.js",
    "revision": null
  }, {
    "url": "/js/chunks/6d97b004aeec4752.js",
    "revision": null
  }, {
    "url": "/js/chunks/74cedc8b30aa6b8c.js",
    "revision": null
  }, {
    "url": "/js/chunks/79a836d54e3c8223.js",
    "revision": null
  }, {
    "url": "/js/chunks/7addfb037e73b7f9.js",
    "revision": null
  }, {
    "url": "/js/chunks/81fdcc190c359782.js",
    "revision": null
  }, {
    "url": "/js/chunks/83dd09d60714c88e.js",
    "revision": null
  }, {
    "url": "/js/chunks/8aaae946bb8bc553.js",
    "revision": null
  }, {
    "url": "/js/chunks/92f743efe6dea928.js",
    "revision": null
  }, {
    "url": "/js/chunks/9efc84f0441d3be7.js",
    "revision": null
  }, {
    "url": "/js/chunks/afa6e379b4a46aa1.js",
    "revision": null
  }, {
    "url": "/js/chunks/da7b1a494138c1e5.js",
    "revision": null
  }, {
    "url": "/js/chunks/ec1510e7f5dd1f84.js",
    "revision": null
  }, {
    "url": "/js/chunks/ed01f419c0a9e95e.js",
    "revision": null
  }], {});

}));
