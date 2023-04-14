"use strict";(self.webpackChunk=self.webpackChunk||[]).push([[412],{54465:(e,t,r)=>{r.d(t,{J:()=>l});var n="https://js.stripe.com/v3",a=/^https:\/\/js\.stripe\.com\/v3\/?(\?.*)?$/,s="loadStripe.setLoadParameters was called but an existing Stripe.js script already exists in the document; existing script parameters will be used",i=null,o=function(e){return null!==i||(i=new Promise((function(t,r){if("undefined"!=typeof window)if(window.Stripe&&e&&console.warn(s),window.Stripe)t(window.Stripe);else try{var i=function(){for(var e=document.querySelectorAll('script[src^="'.concat(n,'"]')),t=0;t<e.length;t++){var r=e[t];if(a.test(r.src))return r}return null}();i&&e?console.warn(s):i||(i=function(e){var t=e&&!e.advancedFraudSignals?"?advancedFraudSignals=false":"",r=document.createElement("script");r.src="".concat(n).concat(t);var a=document.head||document.body;if(!a)throw new Error("Expected document.body not to be null. Stripe.js requires a <body> element.");return a.appendChild(r),r}(e)),i.addEventListener("load",(function(){window.Stripe?t(window.Stripe):r(new Error("Stripe.js not available"))})),i.addEventListener("error",(function(){r(new Error("Failed to load Stripe.js"))}))}catch(e){return void r(e)}else t(null)}))),i},c=function(e,t,r){if(null===e)return null;var n=e.apply(void 0,t);return function(e,t){e&&e._registerWrapper&&e._registerWrapper({name:"stripe-js",version:"1.22.0",startTime:t})}(n,r),n},d=Promise.resolve().then((function(){return o(null)})),u=!1;d.catch((function(e){u||console.warn(e)}));var l=function(){for(var e=arguments.length,t=new Array(e),r=0;r<e;r++)t[r]=arguments[r];u=!0;var n=Date.now();return d.then((function(e){return c(e,t,n)}))}},87690:(e,t,r)=>{r.d(t,{Z:()=>s});var n=r(1519),a=r.n(n)()((function(e){return e[1]}));a.push([e.id,".loading-circle-button[data-v-250353a4]{height:16px;width:30px}#card-elements[data-v-250353a4]{padding:11.4px 12px}.credit-card[data-v-250353a4]{max-width:40px}.StripeElement[data-v-250353a4]{border:1px solid rgba(43,43,43,.15);border-radius:5px;padding:1em}.StripeElement--focus[data-v-250353a4]{border:2px solid var(--color-primary)}.StripeElement--invalid[data-v-250353a4]{border:2px solid #f84a4a}",""]);const s=a},98412:(e,t,r)=>{r.r(t),r.d(t,{default:()=>S});var n=r(87757),a=r.n(n),s=r(54465),i=void 0;function o(e,t,r,n,a,s,i){try{var o=e[s](i),c=o.value}catch(e){return void r(e)}o.done?t(c):Promise.resolve(c).then(n,a)}function c(e){return function(){var t=this,r=arguments;return new Promise((function(n,a){var s=e.apply(t,r);function i(e){o(s,n,a,i,c,"next",e)}function c(e){o(s,n,a,i,c,"throw",e)}i(void 0)}))}}const d={props:["cart","isPurchaseLoading"],mounted:function(){var e=this;return c(a().mark((function t(){var r;return a().wrap((function(t){for(;;)switch(t.prev=t.next){case 0:return e.isScriptLoading=!0,t.next=3,(0,s.J)(e.$store.getters.getSettings.stripeClientID);case 3:e.stripe=t.sent,r=e.stripe.elements(),e.cardElement=r.create("card"),e.cardElement.on("change",function(e){e.complete?this.validCardInput=!0:e.error&&(this.validCardInput=!1,this.$emit("error",e.error.message))}.bind(e)),setTimeout((function(){e.isScriptLoading=!1}),1e3),e.cardElement.mount("#card-element");case 9:case"end":return t.stop()}}),t)})))()},data:function(){return{newCard:!1,cardElement:null,validCardInput:!0,stripe:null,isScriptLoading:!0,clientSecret:null}},computed:{hasCard:function(){return this.user.card_brand&&this.user.card_last_four&&!this.newCard},user:function(){return this.$store.getters.getUser}},methods:{pay:function(){var e=this;return c(a().mark((function t(){var r,n;return a().wrap((function(t){for(;;)switch(t.prev=t.next){case 0:if(e.$emit("isPurchaseLoading",!0),e.hasCard){t.next=7;break}return t.next=4,e.createPaymentMethod();case 4:r=t.sent,t.next=8;break;case 7:r=null;case 8:return t.next=10,e.createPaymentIntent();case 10:n=t.sent,axios.post("/api/user/checkout-with-stripe",{intent:n,paymentMethod:r}).then((function(){e.$emit("successfulPayment")})).catch((function(t){e.$emit("error",t.response.data)})).finally((function(){e.$emit("isPurchaseLoading",!1)}));case 12:case"end":return t.stop()}}),t)})))()},createPaymentMethod:function(){var e=this;return c(a().mark((function t(){var r,n;return a().wrap((function(t){for(;;)switch(t.prev=t.next){case 0:return t.next=2,e.stripe.createPaymentMethod("card",e.cardElement,{billing_details:{}});case 2:if(r=t.sent,n=r.paymentMethod,!r.error){t.next=9;break}e.error||(e.$emit("error",e.$t("Oops! Some error occurred. Try again later.")),e.$emit("isSubscriptionLoading",!1)),t.next=10;break;case 9:return t.abrupt("return",n);case 10:case"end":return t.stop()}}),t)})))()},createPaymentIntent:function(){var e=this;return c(a().mark((function t(){var r;return a().wrap((function(t){for(;;)switch(t.prev=t.next){case 0:return t.next=2,axios.post("/api/user/create-intent",{amount:e.cart.total});case 2:return r=t.sent,t.abrupt("return",r.data.id);case 4:case"end":return t.stop()}}),t)})))()}},watch:{"$vuetify.theme.dark":function(){i.cardElement.update({style:{base:{color:"white"}}})}}};var u=r(93379),l=r.n(u),p=r(87690),v={insert:"head",singleton:!1};l()(p.Z,v);p.Z.locals;var g=r(51900),m=r(43453),f=r.n(m),h=r(53489),w=r(85893),_=r(5255),b=r(4786),x=r(16474),y=(0,g.Z)(d,(function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("v-card",{class:{"dark-backround":e.$vuetify.theme.dark},attrs:{flat:""}},[r("v-card-text",{directives:[{name:"show",rawName:"v-show",value:!e.isScriptLoading,expression:"!isScriptLoading"}]},[r("div",{directives:[{name:"show",rawName:"v-show",value:!e.hasCard,expression:"!hasCard"}],attrs:{id:"card-element"}}),e._v(" "),e.hasCard?r("div",{staticClass:"existing-card d-flex align-center justify-space-between"},[r("div",{staticClass:"existing-card__details d-flex align-center"},[r("div",{staticClass:"credit-card mr-2"},["visa"==e.$store.getters.getUser.card_brand?r("v-img",{attrs:{src:"/storage/defaults/images/billing/visa-blue.png"}}):e._e(),e._v(" "),"mastercard"==e.$store.getters.getUser.card_brand?r("v-img",{attrs:{src:"/storage/defaults/images/billing/mastercard.png"}}):e._e(),e._v(" "),"jcb"==e.$store.getters.getUser.card_brand?r("v-img",{attrs:{src:"/storage/defaults/images/billing/jcb.png"}}):e._e(),e._v(" "),"amex"==e.$store.getters.getUser.card_brand?r("v-img",{attrs:{src:"/storage/defaults/images/billing/american_express.png"}}):e._e(),e._v(" "),"discover"==e.$store.getters.getUser.card_brand?r("v-img",{attrs:{src:"/storage/defaults/images/billing/discover.png"}}):e._e(),e._v(" "),"unionpay"==e.$store.getters.getUser.card_brand?r("v-img",{attrs:{src:"/storage/defaults/images/billing/unionpay.png"}}):e._e()],1),e._v(" "),r("div",{staticClass:"existing-card__digits"},[r("strong",[e._v("****")]),e._v(" "),r("strong",[e._v(e._s(e.$store.getters.getUser.card_last_four))])])]),e._v(" "),r("div",{staticClass:"exsiting-card__options"},[r("v-btn",{attrs:{icon:""},on:{click:function(t){e.newCard=!0}}},[r("v-icon",{attrs:{color:"error",title:e.$t("Remove card")}},[e._v("$vuetify.icons.credit-card-refresh")])],1)],1)]):e._e(),e._v(" "),r("v-btn",{staticClass:"primary mt-5 ml-auto",attrs:{block:"",disabled:e.isPurchaseLoading||!e.validCardInput,loading:e.isPurchaseLoading},on:{click:e.pay},scopedSlots:e._u([{key:"loader",fn:function(){return[r("span",{staticClass:"custom-loader"},[r("v-icon",{attrs:{light:""}},[e._v("$vuetify.icons.cached")])],1)]},proxy:!0}])},[e._v("\n\n            "+e._s(e.$t("Checkout"))+"\n        ")])],1),e._v(" "),r("page-loading",{directives:[{name:"show",rawName:"v-show",value:e.isScriptLoading,expression:"isScriptLoading"}],attrs:{height:"20vh",size:50,width:5}})],1)}),[],!1,null,"250353a4",null);const S=y.exports;f()(y,{VBtn:h.Z,VCard:w.Z,VCardText:_.ZB,VIcon:b.Z,VImg:x.Z})}}]);