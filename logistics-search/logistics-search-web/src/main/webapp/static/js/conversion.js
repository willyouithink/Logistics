(function(){var h=this;var m=function(a){a=parseFloat(a);return isNaN(a)||1<a||0>a?0:a};var n;a:{var p=h.navigator;if(p){var q=p.userAgent;if(q){n=q;break a}}n=""};var r=function(a){r[" "](a);return a};r[" "]=function(){};var t=function(a){var b=!1,d;return function(){b||(d=a(),b=!0);return d}};var aa=function(){if(!h.crypto)return Math.random();try{var a=new Uint32Array(1);h.crypto.getRandomValues(a);return a[0]/65536/65536}catch(b){return Math.random()}},u=function(a,b){if(a)for(var d in a)Object.prototype.hasOwnProperty.call(a,d)&&b.call(void 0,a[d],d,a)},ba=t(function(){return-1!=n.indexOf("Google Web Preview")||1E-4>Math.random()}),ca=t(function(){return-1!=n.indexOf("MSIE")});var da=m("0.20"),ea=m("0.02"),fa=m("0.02");var ha=/^true$/.test("true"),v=/^true$/.test("false"),ia=/^true$/.test("true");var w=null,ka=function(){var a=ja,b=[],d=0,c;for(c in a)b[d++]=a[c];this.c={};this.a={};a=b||[];b=0;for(d=a.length;b<d;++b)this.a[a[b]]=""},x=function(){if(null===w){w="";try{var a="";try{a=h.top.location.hash}catch(d){a=h.location.hash}if(a){var b=a.match(/\bdeid=([\d,]+)/);w=b?b[1]:""}}catch(d){}}return w},z=function(a,b,d){var c=y;if(d?c.a.hasOwnProperty(d)&&""==c.a[d]:1){var e;e=(e=x())?(e=e.match(new RegExp("\\b("+a.join("|")+")\\b")))?e[0]:null:null;if(e)a=e;else a:{if(!ca()&&!ba()&&(e=Math.random(),
e<b)){e=aa();a=a[Math.floor(e*a.length)];break a}a=null}a&&""!=a&&(d?c.a.hasOwnProperty(d)&&(c.a[d]=a):c.c[a]=!0)}},A=function(a){var b=y;return b.a.hasOwnProperty(a)?b.a[a]:""},la=function(){var a=y,b=[];u(a.c,function(a,c){b.push(c)});u(a.a,function(a){""!=a&&b.push(a)});return b};var ja={g:2,i:13,h:14},y=null;var ma=/^UA-\d+-\d+%3A[\w-]+(?:%2C[\w-]+)*(?:%3BUA-\d+-\d+%3A[\w-]+(?:%2C[\w-]+)*)*$/,na=/^[\w-]+(?:\.[\w-]+)*$/,B=/^\d+\.fls\.doubleclick\.net$/,oa=/;gac=([^;?]+)/,pa=/;gclaw=([^;?]+)/,C=function(a,b){if(B.test(a.location.host)){if((b=a.location.href.match(pa))&&2==b.length&&b[1].match(na))return b[1]}else{var d=(b||"_gcl")+"_aw";b=[];a=a.cookie.split(";");d=new RegExp("^\\s*"+d+"=\\s*(.*?)\\s*$");for(var c=0;c<a.length;c++){var e=a[c].match(d);e&&b.push(e[1])}a=[];if(b&&0!=b.length)for(d=0;d<b.length;d++)c=
b[d].split("."),3==c.length&&"GCL"==c[0]&&c[1]&&a.push(c[2]);if(0<a.length)return a.join(".")}return""};var qa=function(a,b,d){a=D(a,!0);if(a[b])return!1;a[b]=[];a[b][0]=d;return!0},D=function(a,b){var d=a.GooglebQhCsO;d||(d={},b&&(a.GooglebQhCsO=d));return d};var E=null,F=null,ra=function(a){for(var b=[],d=0,c=0;c<a.length;c++){var e=a.charCodeAt(c);255<e&&(b[d++]=e&255,e>>=8);b[d++]=e}if(!E)for(E={},F={},a=0;65>a;a++)E[a]="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".charAt(a),F[a]="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_.".charAt(a);a=F;d=[];for(c=0;c<b.length;c+=3){var f=b[c],g=(e=c+1<b.length)?b[c+1]:0,k=c+2<b.length,l=k?b[c+2]:0,za=f>>2;f=(f&3)<<4|g>>4;g=(g&15)<<2|l>>6;l&=63;k||(l=64,e||(g=64));d.push(a[za],
a[f],a[g],a[l])}return d.join("")};var G=/^(?:([^:/?#.]+):)?(?:\/\/(?:([^/?#]*)@)?([^/#?]*?)(?::([0-9]+))?(?=[/#?]|$))?([^?#]+)?(?:\?([^#]*))?(?:#([\s\S]*))?$/,sa=function(a){var b=a.match(G);a=b[5];var d=b[6];b=b[7];var c="";a&&(c+=a);d&&(c+="?"+d);b&&(c+="#"+b);return c},H=function(a,b,d,c){for(var e=d.length;0<=(b=a.indexOf(d,b))&&b<c;){var f=a.charCodeAt(b-1);if(38==f||63==f)if(f=a.charCodeAt(b+e),!f||61==f||38==f||35==f)return b;b+=e+1}return-1},I=/#|$/,J=function(a,b){var d=a.search(I),c=H(a,0,b,d);if(0>c)return null;var e=a.indexOf("&",
c);if(0>e||e>d)e=d;c+=b.length+1;return decodeURIComponent(a.substr(c,e-c).replace(/\+/g," "))},ta=/[?&]($|#)/,K=function(a,b,d){for(var c=a.search(I),e=0,f,g=[];0<=(f=H(a,e,b,c));)g.push(a.substring(e,f)),e=Math.min(a.indexOf("&",f)+1||c,c);g.push(a.substr(e));a=g.join("").replace(ta,"$1");d=null!=d?"="+encodeURIComponent(String(d)):"";(b+=d)?(d=a.indexOf("#"),0>d&&(d=a.length),c=a.indexOf("?"),0>c||c>d?(c=d,e=""):e=a.substring(c+1,d),d=[a.substr(0,c),e,a.substr(d)],a=d[1],d[1]=b?a?a+"&"+b:b:a,b=
d[0]+(d[1]?"?"+d[1]:"")+d[2]):b=a;return b};var L=function(a,b,d,c){var e=J(d,"fmt");if(c){var f=J(d,"random"),g=J(d,"label")||"";if(!f)return!1;f=ra(decodeURIComponent(g.replace(/\+/g," "))+":"+decodeURIComponent(f.replace(/\+/g," "))).replace(/[.]*$/,"");if(!qa(a,f,c))return!1}e&&4!=e&&(d=K(d,"rfmt",e));d=K(d,"fmt",4);e=document.createElement("SCRIPT");e.src=d;e.onload=function(){a.google_noFurtherRedirects&&c&&c.call&&(a.google_noFurtherRedirects=null,c())};b.getElementsByTagName("script")[0].parentElement.appendChild(e);return!0};var M="google_conversion_id google_conversion_format google_conversion_type google_conversion_order_id google_conversion_language google_conversion_value google_conversion_evaluemrc google_conversion_currency google_conversion_domain google_conversion_label google_conversion_color google_disable_viewthrough google_enable_display_cookie_match google_remarketing_only google_remarketing_for_search google_tag_for_child_directed_treatment google_tag_for_under_age_of_consent google_conversion_items google_conversion_merchant_id google_user_id google_custom_params google_conversion_date google_conversion_time google_conversion_js_version onload_callback opt_image_generator google_conversion_page_url google_conversion_referrer_url google_gtm google_gcl_cookie_prefix google_read_gcl_cookie_opt_out google_basket_feed_country google_basket_feed_language google_basket_discount google_basket_transaction_type google_disable_merchant_reported_conversions".split(" "),
N=["google_conversion_first_time","google_conversion_snippets"],O=function(a){return null!=a?encodeURIComponent(String(a)):""},P=function(a){if(null!=a){a=String(a).substring(0,512);var b=a.indexOf("#");return-1==b?a:a.substring(0,b)}return""},Q=function(a,b){b=O(b);return""!=b&&(a=O(a),""!=a)?"&".concat(a,"=",b):""},R=function(a){var b=typeof a;return null==a||"object"==b||"function"==b?null:String(a).replace(/,/g,"\\,").replace(/;/g,"\\;").replace(/=/g,"\\=")},ua=function(a){if((a=a.google_custom_params)&&
"object"==typeof a&&"function"!=typeof a.join){var b=[];for(g in a)if(Object.prototype.hasOwnProperty.call(a,g)){var d=a[g];if(d&&"function"==typeof d.join){for(var c=[],e=0;e<d.length;++e){var f=R(d[e]);null!=f&&c.push(f)}d=0==c.length?null:c.join(",")}else d=R(d);(c=R(g))&&null!=d&&b.push(c+"="+d)}var g=b.join(";")}else g="";return""==g?"":"&".concat("data=",encodeURIComponent(g))},va=function(a){return null==a||0!=a&&1!=a?"":Q("tfcd",a)},wa=function(a){return null==a||0!=a&&1!=a?"":Q("tfua",a)},
xa=function(a){if(null!=a){a=a.toString();if(2==a.length)return Q("hl",a);if(5==a.length)return Q("hl",a.substring(0,2))+Q("gl",a.substring(3,5))}return""};function S(a){return"number"!=typeof a&&"string"!=typeof a?"":O(a.toString())}
var ya=function(a){if(!a)return"";a=a.google_conversion_items;if(!a)return"";for(var b=[],d=0,c=a.length;d<c;d++){var e=a[d],f=[];e&&(f.push(S(e.value)),f.push(S(e.quantity)),f.push(S(e.item_id)),f.push(S(e.adwords_grouping)),f.push(S(e.sku)),b.push("("+f.join("*")+")"))}return 0<b.length?"&item="+b.join(""):""},Aa=function(a,b){if(b.google_read_gcl_cookie_opt_out||b.google_remarketing_only||b.google_conversion_domain)return"";var d="";if(b.google_gcl_cookie_prefix&&/^[a-zA-Z0-9_]+$/.test(b.google_gcl_cookie_prefix))return d=
C(a,b.google_gcl_cookie_prefix),Q("gclaw",d);(b=C(a))&&(d=Q("gclaw",b));if(B.test(a.location.host))var c=(c=a.location.href.match(oa))&&2==c.length&&c[1].match(ma)?decodeURIComponent(c[1]):"";else{b=[];a=a.cookie.split(";");for(var e=/^\s*_gac_(UA-\d+-\d+)=\s*(.+?)\s*$/,f=0;f<a.length;f++){var g=a[f].match(e);g&&b.push({b:g[1],value:g[2]})}a={};if(b&&b.length)for(e=0;e<b.length;e++)f=b[e].value.split("."),"1"==f[0]&&3==f.length&&f[1]&&(a[b[e].b]||(a[b[e].b]=[]),a[b[e].b].push({timestamp:f[1],f:f[2]}));
b=[];for(c in a){e=[];f=a[c];for(g=0;g<f.length;g++)e.push(f[g].f);b.push(c+":"+e.join(","))}c=0<b.length?b.join(";"):""}return d+(c?Q("gac",c):"")},Ba=function(a,b,d){var c=[];if(a){var e=a.screen;e&&(c.push(Q("u_h",e.height)),c.push(Q("u_w",e.width)),c.push(Q("u_ah",e.availHeight)),c.push(Q("u_aw",e.availWidth)),c.push(Q("u_cd",e.colorDepth)));a.history&&c.push(Q("u_his",a.history.length))}d&&"function"==typeof d.getTimezoneOffset&&c.push(Q("u_tz",-d.getTimezoneOffset()));b&&("function"==typeof b.javaEnabled&&
c.push(Q("u_java",b.javaEnabled())),b.plugins&&c.push(Q("u_nplug",b.plugins.length)),b.mimeTypes&&c.push(Q("u_nmime",b.mimeTypes.length)));return c.join("")};function Ca(a){a=a?a.title:"";if(void 0==a||""==a)return"";var b=function(a){try{return decodeURIComponent(a),!0}catch(e){return!1}};a=encodeURIComponent(a);for(var d=256;!b(a.substr(0,d));)d--;return"&tiba="+a.substr(0,d)}
var T=function(a,b,d,c){var e="";if(b){if(a.top==a)var f=0;else{var g=a.location.ancestorOrigins;if(g)f=g[g.length-1]==a.location.origin?1:2;else{g=a.top;try{var k;if(k=!!g&&null!=g.location.href)c:{try{r(g.foo);k=!0;break c}catch(l){}k=!1}f=k}catch(l){f=!1}f=f?1:2}}a=d?d:1==f?a.top.location.href:a.location.href;e+=Q("frm",f);e+=Q("url",P(a));e+=Q("ref",P(c||b.referrer))}return e},U=function(a,b){return!(ha||b&&Da.test(navigator.userAgent))||a&&a.location&&a.location.protocol&&"https:"==a.location.protocol.toString().toLowerCase()?
"https:":"http:"},V=function(a,b,d){d=d.google_remarketing_only?"googleads.g.doubleclick.net":d.google_conversion_domain||"www.googleadservices.com";return U(a,/www[.]googleadservices[.]com/i.test(d))+"//"+d+b},Fa=function(a,b,d,c){var e="/?";"landing"==c.google_conversion_type&&(e="/extclk?");e=[c.google_remarketing_only?"/pagead/viewthroughconversion/":"/pagead/conversion/",O(c.google_conversion_id),e,"random=",O(c.google_conversion_time)].join("");e=V(a,e,c);a=[Q("cv",c.google_conversion_js_version),
Q("fst",c.google_conversion_first_time),Q("num",c.google_conversion_snippets),Q("fmt",c.google_conversion_format),c.google_remarketing_only?Q("userId",c.google_user_id):"",va(c.google_tag_for_child_directed_treatment),wa(c.google_tag_for_under_age_of_consent),Q("value",c.google_conversion_value),Q("evaluemrc",c.google_conversion_evaluemrc),Q("currency_code",c.google_conversion_currency),Q("label",c.google_conversion_label),Q("oid",c.google_conversion_order_id),Q("bg",c.google_conversion_color),xa(c.google_conversion_language),
Q("guid","ON"),!c.google_conversion_domain&&"GooglemKTybQhCsO"in h&&"function"==typeof h.GooglemKTybQhCsO?Q("resp","GooglemKTybQhCsO"):"",Q("disvt",c.google_disable_viewthrough),Q("eid",la().join()),Ba(a,b,c.google_conversion_date),ua(c),Q("gtm",c.google_gtm),Aa(d,c),b&&b.sendBeacon?Q("sendb","1"):"",T(a,d,c.google_conversion_page_url,c.google_conversion_referrer_url),c.google_remarketing_for_search&&!c.google_conversion_domain?"&srr=n":"",Ca(d)].join("");b=x();a+=0<b.length?"&debug_experiment_id="+
b:"";c.google_remarketing_only||c.google_conversion_domain?c=a:(Ea(c)&&!c.google_basket_transaction_type&&(c.google_basket_transaction_type="mrc"),b=[Q("mid",c.google_conversion_merchant_id),Q("fcntr",c.google_basket_feed_country),Q("flng",c.google_basket_feed_language),Q("dscnt",c.google_basket_discount),Q("bttype",c.google_basket_transaction_type)].join(""),c=[a,b,ya(c)].join(""),c=2E3<c.length?[a,Q("item","elngth")].join(""):c);return e+c},Ga=function(a,b,d,c,e,f,g){return'<iframe name="'+a+'"'+
(g?' id="'+g+'"':"")+' title="'+b+'" width="'+c+'" height="'+e+'"'+(d?' src="'+d+'"':"")+' frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true"'+(f?' style="display:none"':"")+' scrolling="no"></iframe>'},Ha=function(a){return{ar:1,bg:1,cs:1,da:1,de:1,el:1,en_AU:1,en_US:1,en_GB:1,es:1,et:1,fi:1,fr:1,hi:1,hr:1,hu:1,id:1,is:1,it:1,iw:1,ja:1,ko:1,lt:1,nl:1,no:1,pl:1,pt_BR:1,pt_PT:1,ro:1,ru:1,sk:1,sl:1,sr:1,sv:1,th:1,tl:1,tr:1,vi:1,zh_CN:1,zh_TW:1}[a]?a+".html":
"en_US.html"},Da=/Android ([01]\.|2\.[01])/i,Ia=function(a,b){if(!b.google_remarketing_only||!b.google_enable_display_cookie_match||v||!y||"376635471"!=A(2))return"";a=U(a,!1)+"//bid.g.doubleclick.net/xbbe/pixel?d=KAE";return Ga("google_cookie_match_frame","Google cookie match frame",a,1,1,!0,null)},Ka=function(a,b,d,c){var e="";c.google_remarketing_only&&c.google_enable_display_cookie_match&&!v&&(y&&z(["376635470","376635471"],da,2),e=Ia(a,c));c.google_remarketing_only&&!c.google_conversion_domain&&
y&&z(["759238990","759238991"],ea,13);!c.google_remarketing_only||c.google_conversion_domain||y&&("759248991"==A(14)||"759248990"==A(14))||y&&z(["759248990","759248991"],fa,14);b=Fa(a,b,d,c);var f=function(a,b,c,d){return'<img height="'+c+'" width="'+b+'" border="0" alt="" src="'+a+'"'+(d?' style="display:none"':"")+" />"};if(0==c.google_conversion_format&&null==c.google_conversion_domain)return'<a href="'+(U(a,!1)+"//services.google.com/sitestats/"+Ha(c.google_conversion_language)+"?cid="+O(c.google_conversion_id))+
'" target="_blank">'+f(b,135,27,!1)+"</a>"+e;if(1<c.google_conversion_snippets||3==c.google_conversion_format){var g=b;null==c.google_conversion_domain&&(g=3==c.google_conversion_format?b:K(b,"fmt",3));return Ja(a,d,c,g)?e:f(g,1,1,!0)+e}f=null;!c.google_conversion_domain&&Ja(a,d,c,b)&&(f="goog_conv_iframe",b="");return Ga("google_conversion_frame","Google conversion frame",b,2==c.google_conversion_format?200:300,2==c.google_conversion_format?26:13,!1,f)+e};function La(){return new Image}
function Ja(a,b,d,c){if(d.google_conversion_domain)return!1;try{return L(a,b,c,null)}catch(e){return!1}}
var Ma=function(a,b){b+=Q("async","1");a=a.opt_image_generator;var d=La;a&&a.call&&(d=a);a=d();a.src=b;a.onload=function(){}},Na=function(a,b,d){var c=Math.floor(1E9*Math.random());c=[O(d.google_conversion_id),"/?random=",c].join("");c=U(a,!1)+"//www.google.com/ads/user-lists/"+c;a=[Q("label",d.google_conversion_label),Q("fmt","3"),T(a,b,d.google_conversion_page_url,d.google_conversion_referrer_url)].join("");Ma(d,c+a)},Oa=function(a,b){for(var d=document.createElement("IFRAME"),c=[],e=[],f=0;f<b.google_conversion_items.length;f++){var g=
b.google_conversion_items[f];g&&g.quantity&&(g.sku||g.item_id)&&(c.push(g.sku||g.item_id),e.push(g.quantity))}f="";null!=b.google_basket_feed_language&&null!=b.google_basket_feed_country?f="&mrc_language="+b.google_basket_feed_language.toString()+"&mrc_country="+b.google_basket_feed_country.toString():null!=b.google_conversion_language&&(g=b.google_conversion_language.toString(),5==g.length&&(f="&mrc_language="+g.substring(0,2)+"&mrc_country="+g.substring(3,5)));a=U(a,!1)+"//www.google.com/ads/mrc";
d.src=a+"?sku="+c.join(",")+"&qty="+e.join(",")+"&oid="+b.google_conversion_order_id+"&mcid="+b.google_conversion_merchant_id+f;d.style.width="1px";d.style.height="1px";d.style.display="none";return d},Ea=function(a){return!a.google_disable_merchant_reported_conversions&&!!a.google_conversion_merchant_id&&!!a.google_conversion_order_id&&!!a.google_conversion_items},Pa=function(a){if("landing"==a.google_conversion_type||!a.google_conversion_id||a.google_remarketing_only&&a.google_disable_viewthrough)return!1;
a.google_conversion_date=new Date;a.google_conversion_time=a.google_conversion_date.getTime();a.google_conversion_snippets="number"==typeof a.google_conversion_snippets&&0<a.google_conversion_snippets?a.google_conversion_snippets+1:1;"number"!=typeof a.google_conversion_first_time&&(a.google_conversion_first_time=a.google_conversion_time);a.google_conversion_js_version="9";0!=a.google_conversion_format&&1!=a.google_conversion_format&&2!=a.google_conversion_format&&3!=a.google_conversion_format&&(a.google_conversion_format=
3);!1!==a.google_enable_display_cookie_match&&(a.google_enable_display_cookie_match=!0);y=new ka;ia&&(a.google_remarketing_for_search=!1);return!0},Qa=function(a){for(var b=0;b<M.length;b++)a[M[b]]=null},Ra=function(a){for(var b={},d=0;d<M.length;d++)b[M[d]]=a[M[d]];for(d=0;d<N.length;d++)b[N[d]]=a[N[d]];return b},Sa=function(a){var b=document.getElementsByTagName("head")[0];b||(b=document.createElement("HEAD"),document.getElementsByTagName("html")[0].insertBefore(b,document.getElementsByTagName("body")[0]));
var d=document.createElement("SCRIPT");d.src=V(window,"/pagead/conversion_debug_overlay.js",a);b.appendChild(d)};var Ta=function(a,b,d){a.addEventListener?a.addEventListener(b,d,void 0):a.attachEvent&&a.attachEvent("on"+b,d)};var Ua=function(a){return{visible:1,hidden:2,prerender:3,preview:4,unloaded:5}[a.visibilityState||a.webkitVisibilityState||a.mozVisibilityState||""]||0},Va=function(a){var b;a.visibilityState?b="visibilitychange":a.mozVisibilityState?b="mozvisibilitychange":a.webkitVisibilityState&&(b="webkitvisibilitychange");return b},Wa=function(a,b){if(3==Ua(b))return!1;a();return!0},Xa=function(a,b){if(!Wa(a,b)){var d=!1,c=Va(b),e=function(){!d&&Wa(a,b)&&(d=!0,b.removeEventListener?b.removeEventListener(c,e,
void 0):b.detachEvent&&b.detachEvent("on"+c,e))};c&&Ta(b,c,e)}};var Ya=function(a,b,d){var c=d.length+1,e=function(){--c;if(0>=c){var d=D(a,!1),e=d[b];e&&(delete d[b],(d=e[0])&&d.call&&d())}},f=function(a,b){var c=new Image;c.onload=a;c.src=b};if(2==d.length){var g=d[0],k=d[1];0<=H(g,0,"rmt_tld",g.search(I))&&0<=H(g,0,"ipr",g.search(I))&&!k.match(G)[6]&&(k+=sa(g),d[1]=K(k,"rmt_tld","1"))}for(g=0;g<d.length;g++){k=d[g];var l=J(k,"fmt");switch(parseInt(l,10)){case 1:case 2:(l=a.document.getElementById("goog_conv_iframe"))&&!l.src?(l.onload=e,l.src=k):f(e,k);break;
case 4:L(a,a.document,k,e);break;case 5:if(a.navigator&&a.navigator.sendBeacon)if(a.navigator.sendBeacon(k,"")){e();break}else k=K(k,"sendb",2);k=K(k,"fmt",3);default:f(e,k)}}e()},W=["GooglemKTybQhCsO"],X=h;W[0]in X||"undefined"==typeof X.execScript||X.execScript("var "+W[0]);for(var Y;W.length&&(Y=W.shift());){var Z;if(Z=!W.length)Z=void 0!==Ya;Z?X[Y]=Ya:X[Y]&&X[Y]!==Object.prototype[Y]?X=X[Y]:X=X[Y]={}}
(function(a,b,d){if(a)if(null!=/[\?&;]google_debug/.exec(document.URL))Sa(a);else{try{if(Pa(a))if(3==Ua(d)){var c=Ra(a),e="google_conversion_"+Math.floor(1E9*Math.random());d.write('<span id="'+e+'"></span>');Xa(function(){try{var f=d.getElementById(e);f&&(f.innerHTML=Ka(a,b,d,c),c.google_remarketing_for_search&&!c.google_conversion_domain&&Na(a,d,c))}catch(g){}},d)}else d.write(Ka(a,b,d,a)),a.google_remarketing_for_search&&!a.google_conversion_domain&&Na(a,d,a);Ea(a)&&d.documentElement.appendChild(Oa(a,
a))}catch(f){}Qa(a)}})(window,navigator,document);}).call(this);
