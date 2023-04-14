"use strict";(self.webpackChunk=self.webpackChunk||[]).push([[814,955],{97032:(t,n,e)=>{e.d(n,{Z:()=>i});var a=e(1519),s=e.n(a)()((function(t){return t[1]}));s.push([t.id,".plan[data-v-5421cf92]{flex-basis:30%;margin-bottom:1em;margin-right:1.5em;max-width:300px;min-height:400px;min-width:200px;padding-bottom:3em;padding-top:1em;position:relative}.plan__recommended[data-v-5421cf92]{display:flex;justify-content:center;left:0;position:absolute;right:0;top:1em}.plan__name[data-v-5421cf92]{font-size:2em;font-weight:700;font-weight:400;opacity:1;padding:.8em .5em .5em;text-align:center}.plan__price[data-v-5421cf92]{display:flex;justify-content:center;width:100%}.plan__price__currency[data-v-5421cf92]{align-items:flex-start;display:flex;font-size:1.4em;font-weight:700;margin-top:-.5em}.plan__price__amount[data-v-5421cf92]{font-size:3em;font-weight:700;line-height:1}.plan__price__interval[data-v-5421cf92]{align-items:flex-end;display:flex;font-size:1.2em;margin-left:.2em}.plan__features[data-v-5421cf92]{padding:1em 2em}.plan__features__feature[data-v-5421cf92]{align-items:center;display:flex;font-size:1em;padding:.5em 0}.plan__action[data-v-5421cf92]{bottom:1em;left:0;position:absolute;right:0;text-align:center}.plan__chosen[data-v-5421cf92]{margin-right:0;max-width:1000px}",""]);const i=s},57502:(t,n,e)=>{e.d(n,{Z:()=>i});var a=e(1519),s=e.n(a)()((function(t){return t[1]}));s.push([t.id,".plans-wrapper[data-v-574424fa]{display:flex;flex-wrap:wrap;justify-content:space-around;padding-bottom:1.2em}",""]);const i=s},50281:(t,n,e)=>{e.r(n),e.d(n,{default:()=>f});const a={props:["plan","chosen","isSubscriptionLoading"]};var s=e(93379),i=e.n(s),r=e(97032),l={insert:"head",singleton:!1};i()(r.Z,l);r.Z.locals;var o=e(51900),c=e(43453),p=e.n(c),u=e(53489),_=e(85893),v=e(4786),d=(0,o.Z)(a,(function(){var t=this,n=t.$createElement,e=t._self._c||n;return e("v-card",{staticClass:"plan",attrs:{rounded:"lg",elevation:"10"}},[e("div",{staticClass:"plan__recommended"},[t.plan.recommended?e("v-btn",{attrs:{color:"success",text:"",small:""}},[t._v(t._s(t.$t("Recommended")))]):t._e()],1),t._v(" "),e("div",{staticClass:"plan__name"},[t._v("\n        "+t._s(t.plan.name)+"\n    ")]),t._v(" "),e("div",{staticClass:"plan__price"},[t.plan.free?t._e():e("div",{staticClass:"plan__price__currency"},[t._v("\n            "+t._s(t.planCurrencySymbol(t.plan))+"\n        ")]),t._v(" "),e("div",{staticClass:"plan__price__amount"},[t.plan.free?[t._v(t._s(t.$t("Free")))]:[t._v(t._s(t.price(t.plan.amount)))]],2),t._v(" "),t.plan.free?t._e():e("div",{staticClass:"plan__price__interval"},[t._v("\n            / "+t._s(t.plan.interval)+"\n        ")])]),t._v(" "),e("div",{staticClass:"plan__features"},[t.plan.displayed_features?t._l(t.plan.displayed_features,(function(n,a){return e("div",{key:t.plan.id+"-feature-"+a,staticClass:"plan__features__feature"},[e("div",{staticClass:"plan__features__feature__icon mr-1"},[e("v-icon",{attrs:{color:"success"}},[t._v("$vuetify.icons.check")])],1),t._v(" "),e("div",{staticClass:"plan__features__feature__text"},[t._v("\n                    "+t._s(t.$t(n))+"\n                ")])])})):t._e()],2),t._v(" "),e("div",{staticClass:"plan__action"},[t.chosen?[e("v-btn",{staticClass:"plan-chosen__header__change-btn",attrs:{dense:"",text:"",color:"primary",outlined:"",disabled:t.isSubscriptionLoading},on:{click:function(n){return t.$emit("callToAction")}}},[e("v-icon",{staticClass:"mr-1",attrs:{small:"",color:"primary"}},[t._v("$vuetify.icons.arrow-left")]),t._v("\n                "+t._s(t.$t("Change"))+"\n            ")],1)]:[t.isSubTo(t.plan.id)?e("v-btn",{attrs:{disabled:"",outlined:""}},[t._v(t._s(t.$t("Current Plan")))]):e("v-btn",{staticClass:"primary",on:{click:function(n){return t.$emit("planChosen",t.plan)}}},[t._v(t._s(t.$t("Choose")))])]],2)])}),[],!1,null,"5421cf92",null);const f=d.exports;p()(d,{VBtn:u.Z,VCard:_.Z,VIcon:v.Z})},81814:(t,n,e)=>{e.r(n),e.d(n,{default:()=>C});var a=e(87757),s=e.n(a);const i={props:["plans"],components:{Plan:e(50281).default}};var r=e(93379),l=e.n(r),o=e(57502),c={insert:"head",singleton:!1};l()(o.Z,c);o.Z.locals;var p=e(51900);const u=(0,p.Z)(i,(function(){var t=this,n=t.$createElement,e=t._self._c||n;return e("div",{staticClass:"plans-wrapper"},t._l(t.plans,(function(n){return e("Plan",{key:n.id,attrs:{plan:n,chosen:!1},on:{planChosen:function(n){return t.$emit("plan",n)}}})})),1)}),[],!1,null,"574424fa",null).exports;var _=e(70446);function v(t,n,e,a,s,i,r){try{var l=t[i](r),o=l.value}catch(t){return void e(t)}l.done?n(o):Promise.resolve(o).then(a,s)}const d={components:{Plans:u},props:["isPageLoading"],data:function(){return{subscriptionInterval:"month",intervals:[{text:this.$t("Daily"),value:"day"},{text:this.$t("Weekly"),value:"week"},{text:this.$t("Monthly"),value:"month"},{text:this.$t("Yearly"),value:"year"}]}},computed:{plans:function(){var t=this.$store.getters.getPlans||[];return this.$store.getters.getSettings.enableBilling||(t=t.filter((function(t){return t.free}))),t},plansWithIntervalFilter:function(){var t=this;return this.plans.filter((function(n){return n.interval===t.subscriptionInterval}))}},methods:{choosePlan:function(t){var n,e=this;return(n=s().mark((function n(){return s().wrap((function(n){for(;;)switch(n.prev=n.next){case 0:if(e.$store.getters.isLogged){n.next=3;break}return n.next=3,_.Z.loginOrCancel();case 3:!e.userPlan||e.userPlan.free||e.userPlan.upgradable?e.$emit("planChosen",t):e.$confirm({message:"".concat(e.$t("You already have a subscription. Do you want to cancel the current one and switch to a new subscription?")),button:{no:e.$t("No"),yes:e.$t("Yes")},callback:function(n){n&&e.$emit("planChosen",t)}});case 4:case"end":return n.stop()}}),n)})),function(){var t=this,e=arguments;return new Promise((function(a,s){var i=n.apply(t,e);function r(t){v(i,a,s,r,l,"next",t)}function l(t){v(i,a,s,r,l,"throw",t)}r(void 0)}))})()}}};var f=e(43453),m=e.n(f),h=e(53489),g=e(66530),y=e(57894),x=(0,p.Z)(d,(function(){var t=this,n=t.$createElement,e=t._self._c||n;return e("div",{staticClass:"step-one-container"},[t.plans&&!t.isPageLoading?[e("div",{staticClass:"subscription-interval"},[t.plans.length&&t.plans.filter((function(n){return n.interval!==t.plans[0].interval.value}))[0]?e("v-container",{staticClass:"py-5"},[e("v-row",{attrs:{justify:"center"}},t._l(t.intervals,(function(n,a){return e("v-btn",{directives:[{name:"show",rawName:"v-show",value:t.plans.some((function(t){return t.interval===n.value})),expression:"\n                            plans.some(plan => plan.interval === interval.value)\n                        "}],key:a,staticClass:"mx-2",attrs:{outlined:t.subscriptionInterval!==n.value,color:"primary"},on:{click:function(e){t.subscriptionInterval=n.value}}},[t._v(t._s(t.$t(n.text)))])})),1)],1):t._e()],1),t._v(" "),e("Plans",{staticClass:"step_1_plan",attrs:{plans:t.plansWithIntervalFilter},on:{plan:function(n){return t.choosePlan(n)}}})]:[e("page-loading")]],2)}),[],!1,null,null,null);const C=x.exports;m()(x,{VBtn:h.Z,VContainer:g.Z,VRow:y.Z})}}]);