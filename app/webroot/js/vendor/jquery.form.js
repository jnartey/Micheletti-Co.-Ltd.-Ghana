!function(e){"function"==typeof define&&define.amd?define(["jquery"],e):"object"==typeof module&&module.exports?module.exports=function(t,r){return void 0===r&&(r="undefined"!=typeof window?require("jquery"):require("jquery")(t)),e(r),r}:e(jQuery)}(function(e){"use strict"
function t(t){var r=t.data
t.isDefaultPrevented()||(t.preventDefault(),e(t.target).closest("form").ajaxSubmit(r))}function r(t){var r=t.target,a=e(r)
if(!a.is("[type=submit],[type=image]")){var n=a.closest("[type=submit]")
if(0===n.length)return
r=n[0]}var i=r.form
if(i.clk=r,"image"===r.type)if(void 0!==t.offsetX)i.clk_x=t.offsetX,i.clk_y=t.offsetY
else if("function"==typeof e.fn.offset){var o=a.offset()
i.clk_x=t.pageX-o.left,i.clk_y=t.pageY-o.top}else i.clk_x=t.pageX-r.offsetLeft,i.clk_y=t.pageY-r.offsetTop
setTimeout(function(){i.clk=i.clk_x=i.clk_y=null},100)}function a(){if(e.fn.ajaxSubmit.debug){var t="[jquery.form] "+Array.prototype.join.call(arguments,"")
window.console&&window.console.log?window.console.log(t):window.opera&&window.opera.postError&&window.opera.postError(t)}}var n=/\r?\n/g,i={}
i.fileapi=void 0!==e('<input type="file">').get(0).files,i.formdata=void 0!==window.FormData
var o=!!e.fn.prop
e.fn.attr2=function(){if(!o)return this.attr.apply(this,arguments)
var e=this.prop.apply(this,arguments)
return e&&e.jquery||"string"==typeof e?e:this.attr.apply(this,arguments)},e.fn.ajaxSubmit=function(t,r,n,s){function u(r){var a,n,i=e.param(r,t.traditional).split("&"),o=i.length,s=[]
for(a=0;o>a;a++)i[a]=i[a].replace(/\+/g," "),n=i[a].split("="),s.push([decodeURIComponent(n[0]),decodeURIComponent(n[1])])
return s}function c(r){for(var a=new FormData,n=0;n<r.length;n++)a.append(r[n].name,r[n].value)
if(t.extraData){var i=u(t.extraData)
for(n=0;n<i.length;n++)i[n]&&a.append(i[n][0],i[n][1])}t.data=null
var o=e.extend(!0,{},e.ajaxSettings,t,{contentType:!1,processData:!1,cache:!1,type:f||"POST"})
t.uploadProgress&&(o.xhr=function(){var r=e.ajaxSettings.xhr()
return r.upload&&r.upload.addEventListener("progress",function(e){var r=0,a=e.loaded||e.position,n=e.total
e.lengthComputable&&(r=Math.ceil(a/n*100)),t.uploadProgress(e,a,n,r)},!1),r}),o.data=null
var s=o.beforeSend
return o.beforeSend=function(e,r){t.formData?r.data=t.formData:r.data=a,s&&s.call(this,e,r)},e.ajax(o)}function l(r){function n(e){var t=null
try{e.contentWindow&&(t=e.contentWindow.document)}catch(r){a("cannot get iframe.contentWindow document: "+r)}if(t)return t
try{t=e.contentDocument?e.contentDocument:e.document}catch(r){a("cannot get iframe.contentDocument: "+r),t=e.document}return t}function i(){function t(){try{var e=n(v).readyState
a("state = "+e),e&&"uninitialized"===e.toLowerCase()&&setTimeout(t,50)}catch(r){a("Server abort: ",r," (",r.name,")"),s(L),j&&clearTimeout(j),j=void 0}}var r=p.attr2("target"),i=p.attr2("action"),o="multipart/form-data",u=p.attr("enctype")||p.attr("encoding")||o
w.setAttribute("target",m),(!f||/post/i.test(f))&&w.setAttribute("method","POST"),i!==l.url&&w.setAttribute("action",l.url),l.skipEncodingOverride||f&&!/post/i.test(f)||p.attr({encoding:"multipart/form-data",enctype:"multipart/form-data"}),l.timeout&&(j=setTimeout(function(){T=!0,s(A)},l.timeout))
var c=[]
try{if(l.extraData)for(var d in l.extraData)l.extraData.hasOwnProperty(d)&&(e.isPlainObject(l.extraData[d])&&l.extraData[d].hasOwnProperty("name")&&l.extraData[d].hasOwnProperty("value")?c.push(e('<input type="hidden" name="'+l.extraData[d].name+'">',k).val(l.extraData[d].value).appendTo(w)[0]):c.push(e('<input type="hidden" name="'+d+'">',k).val(l.extraData[d]).appendTo(w)[0]))
l.iframeTarget||h.appendTo(D),v.attachEvent?v.attachEvent("onload",s):v.addEventListener("load",s,!1),setTimeout(t,15)
try{w.submit()}catch(g){var x=document.createElement("form").submit
x.apply(w)}}finally{w.setAttribute("action",i),w.setAttribute("enctype",u),r?w.setAttribute("target",r):p.removeAttr("target"),e(c).remove()}}function s(t){if(!g.aborted&&!X){if(O=n(v),O||(a("cannot access response document"),t=L),t===A&&g)return g.abort("timeout"),void S.reject(g,"timeout")
if(t===L&&g)return g.abort("server abort"),void S.reject(g,"error","server abort")
if(O&&O.location.href!==l.iframeSrc||T){v.detachEvent?v.detachEvent("onload",s):v.removeEventListener("load",s,!1)
var r,i="success"
try{if(T)throw"timeout"
var o="xml"===l.dataType||O.XMLDocument||e.isXMLDoc(O)
if(a("isXml="+o),!o&&window.opera&&(null===O.body||!O.body.innerHTML)&&--C)return a("requeing onLoad callback, DOM not available"),void setTimeout(s,250)
var u=O.body?O.body:O.documentElement
g.responseText=u?u.innerHTML:null,g.responseXML=O.XMLDocument?O.XMLDocument:O,o&&(l.dataType="xml"),g.getResponseHeader=function(e){var t={"content-type":l.dataType}
return t[e.toLowerCase()]},u&&(g.status=+u.getAttribute("status")||g.status,g.statusText=u.getAttribute("statusText")||g.statusText)
var c=(l.dataType||"").toLowerCase(),f=/(json|script|text)/.test(c)
if(f||l.textarea){var m=O.getElementsByTagName("textarea")[0]
if(m)g.responseText=m.value,g.status=+m.getAttribute("status")||g.status,g.statusText=m.getAttribute("statusText")||g.statusText
else if(f){var p=O.getElementsByTagName("pre")[0],x=O.getElementsByTagName("body")[0]
p?g.responseText=p.textContent?p.textContent:p.innerText:x&&(g.responseText=x.textContent?x.textContent:x.innerText)}}else"xml"===c&&!g.responseXML&&g.responseText&&(g.responseXML=q(g.responseText))
try{M=N(g,c,l)}catch(y){i="parsererror",g.error=r=y||i}}catch(y){a("error caught: ",y),i="error",g.error=r=y||i}g.aborted&&(a("upload aborted"),i=null),g.status&&(i=g.status>=200&&g.status<300||304===g.status?"success":"error"),"success"===i?(l.success&&l.success.call(l.context,M,"success",g),S.resolve(g.responseText,"success",g),d&&e.event.trigger("ajaxSuccess",[g,l])):i&&(void 0===r&&(r=g.statusText),l.error&&l.error.call(l.context,g,i,r),S.reject(g,"error",r),d&&e.event.trigger("ajaxError",[g,l,r])),d&&e.event.trigger("ajaxComplete",[g,l]),d&&!--e.active&&e.event.trigger("ajaxStop"),l.complete&&l.complete.call(l.context,g,i),X=!0,l.timeout&&clearTimeout(j),setTimeout(function(){l.iframeTarget?h.attr("src",l.iframeSrc):h.remove(),g.responseXML=null},100)}}}var u,c,l,d,m,h,v,g,y,b,T,j,w=p[0],S=e.Deferred()
if(S.abort=function(e){g.abort(e)},r)for(c=0;c<x.length;c++)u=e(x[c]),o?u.prop("disabled",!1):u.removeAttr("disabled")
l=e.extend(!0,{},e.ajaxSettings,t),l.context=l.context||l,m="jqFormIO"+(new Date).getTime()
var k=w.ownerDocument,D=p.closest("body")
if(l.iframeTarget?(h=e(l.iframeTarget,k),b=h.attr2("name"),b?m=b:h.attr2("name",m)):(h=e('<iframe name="'+m+'" src="'+l.iframeSrc+'" />',k),h.css({position:"absolute",top:"-1000px",left:"-1000px"})),v=h[0],g={aborted:0,responseText:null,responseXML:null,status:0,statusText:"n/a",getAllResponseHeaders:function(){},getResponseHeader:function(){},setRequestHeader:function(){},abort:function(t){var r="timeout"===t?"timeout":"aborted"
a("aborting upload... "+r),this.aborted=1
try{v.contentWindow.document.execCommand&&v.contentWindow.document.execCommand("Stop")}catch(n){}h.attr("src",l.iframeSrc),g.error=r,l.error&&l.error.call(l.context,g,r,t),d&&e.event.trigger("ajaxError",[g,l,r]),l.complete&&l.complete.call(l.context,g,r)}},d=l.global,d&&0===e.active++&&e.event.trigger("ajaxStart"),d&&e.event.trigger("ajaxSend",[g,l]),l.beforeSend&&l.beforeSend.call(l.context,g,l)===!1)return l.global&&e.active--,S.reject(),S
if(g.aborted)return S.reject(),S
y=w.clk,y&&(b=y.name,b&&!y.disabled&&(l.extraData=l.extraData||{},l.extraData[b]=y.value,"image"===y.type&&(l.extraData[b+".x"]=w.clk_x,l.extraData[b+".y"]=w.clk_y)))
var A=1,L=2,F=e("meta[name=csrf-token]").attr("content"),E=e("meta[name=csrf-param]").attr("content")
E&&F&&(l.extraData=l.extraData||{},l.extraData[E]=F),l.forceSync?i():setTimeout(i,10)
var M,O,X,C=50,q=e.parseXML||function(e,t){return window.ActiveXObject?(t=new ActiveXObject("Microsoft.XMLDOM"),t.async="false",t.loadXML(e)):t=(new DOMParser).parseFromString(e,"text/xml"),t&&t.documentElement&&"parsererror"!==t.documentElement.nodeName?t:null},_=e.parseJSON||function(e){return window.eval("("+e+")")},N=function(t,r,a){var n=t.getResponseHeader("content-type")||"",i=("xml"===r||!r)&&n.indexOf("xml")>=0,o=i?t.responseXML:t.responseText
return i&&"parsererror"===o.documentElement.nodeName&&e.error&&e.error("parsererror"),a&&a.dataFilter&&(o=a.dataFilter(o,r)),"string"==typeof o&&(("json"===r||!r)&&n.indexOf("json")>=0?o=_(o):("script"===r||!r)&&n.indexOf("javascript")>=0&&e.globalEval(o)),o}
return S}if(!this.length)return a("ajaxSubmit: skipping submit process - no element selected"),this
var f,d,m,p=this
"function"==typeof t?t={success:t}:"string"==typeof t||t===!1&&arguments.length>0?(t={url:t,data:r,dataType:n},"function"==typeof s&&(t.success=s)):void 0===t&&(t={}),f=t.method||t.type||this.attr2("method"),d=t.url||this.attr2("action"),m="string"==typeof d?e.trim(d):"",m=m||window.location.href||"",m&&(m=(m.match(/^([^#]+)/)||[])[1]),t=e.extend(!0,{url:m,success:e.ajaxSettings.success,type:f||e.ajaxSettings.type,iframeSrc:/^https/i.test(window.location.href||"")?"javascript:false":"about:blank"},t)
var h={}
if(this.trigger("form-pre-serialize",[this,t,h]),h.veto)return a("ajaxSubmit: submit vetoed via form-pre-serialize trigger"),this
if(t.beforeSerialize&&t.beforeSerialize(this,t)===!1)return a("ajaxSubmit: submit aborted via beforeSerialize callback"),this
var v=t.traditional
void 0===v&&(v=e.ajaxSettings.traditional)
var g,x=[],y=this.formToArray(t.semantic,x,t.filtering)
if(t.data){var b=e.isFunction(t.data)?t.data(y):t.data
t.extraData=b,g=e.param(b,v)}if(t.beforeSubmit&&t.beforeSubmit(y,this,t)===!1)return a("ajaxSubmit: submit aborted via beforeSubmit callback"),this
if(this.trigger("form-submit-validate",[y,this,t,h]),h.veto)return a("ajaxSubmit: submit vetoed via form-submit-validate trigger"),this
var T=e.param(y,v)
g&&(T=T?T+"&"+g:g),"GET"===t.type.toUpperCase()?(t.url+=(t.url.indexOf("?")>=0?"&":"?")+T,t.data=null):t.data=T
var j=[]
if(t.resetForm&&j.push(function(){p.resetForm()}),t.clearForm&&j.push(function(){p.clearForm(t.includeHidden)}),!t.dataType&&t.target){var w=t.success||function(){}
j.push(function(r,a,n){var i=arguments,o=t.replaceTarget?"replaceWith":"html"
e(t.target)[o](r).each(function(){w.apply(this,i)})})}else t.success&&(e.isArray(t.success)?e.merge(j,t.success):j.push(t.success))
if(t.success=function(e,r,a){for(var n=t.context||this,i=0,o=j.length;o>i;i++)j[i].apply(n,[e,r,a||p,p])},t.error){var S=t.error
t.error=function(e,r,a){var n=t.context||this
S.apply(n,[e,r,a,p])}}if(t.complete){var k=t.complete
t.complete=function(e,r){var a=t.context||this
k.apply(a,[e,r,p])}}var D=e("input[type=file]:enabled",this).filter(function(){return""!==e(this).val()}),A=D.length>0,L="multipart/form-data",F=p.attr("enctype")===L||p.attr("encoding")===L,E=i.fileapi&&i.formdata
a("fileAPI :"+E)
var M,O=(A||F)&&!E
t.iframe!==!1&&(t.iframe||O)?t.closeKeepAlive?e.get(t.closeKeepAlive,function(){M=l(y)}):M=l(y):M=(A||F)&&E?c(y):e.ajax(t),p.removeData("jqxhr").data("jqxhr",M)
for(var X=0;X<x.length;X++)x[X]=null
return this.trigger("form-submit-notify",[this,t]),this},e.fn.ajaxForm=function(n,i,o,s){if(("string"==typeof n||n===!1&&arguments.length>0)&&(n={url:n,data:i,dataType:o},"function"==typeof s&&(n.success=s)),n=n||{},n.delegation=n.delegation&&e.isFunction(e.fn.on),!n.delegation&&0===this.length){var u={s:this.selector,c:this.context}
return!e.isReady&&u.s?(a("DOM not ready, queuing ajaxForm"),e(function(){e(u.s,u.c).ajaxForm(n)}),this):(a("terminating; zero elements found by selector"+(e.isReady?"":" (DOM not ready)")),this)}return n.delegation?(e(document).off("submit.form-plugin",this.selector,t).off("click.form-plugin",this.selector,r).on("submit.form-plugin",this.selector,n,t).on("click.form-plugin",this.selector,n,r),this):this.ajaxFormUnbind().on("submit.form-plugin",n,t).on("click.form-plugin",n,r)},e.fn.ajaxFormUnbind=function(){return this.off("submit.form-plugin click.form-plugin")},e.fn.formToArray=function(t,r,a){var n=[]
if(0===this.length)return n
var o,s=this[0],u=this.attr("id"),c=t||void 0===s.elements?s.getElementsByTagName("*"):s.elements
if(c&&(c=e.makeArray(c)),u&&(t||/(Edge|Trident)\//.test(navigator.userAgent))&&(o=e(':input[form="'+u+'"]').get(),o.length&&(c=(c||[]).concat(o))),!c||!c.length)return n
e.isFunction(a)&&(c=e.map(c,a))
var l,f,d,m,p,h,v
for(l=0,h=c.length;h>l;l++)if(p=c[l],d=p.name,d&&!p.disabled)if(t&&s.clk&&"image"===p.type)s.clk===p&&(n.push({name:d,value:e(p).val(),type:p.type}),n.push({name:d+".x",value:s.clk_x},{name:d+".y",value:s.clk_y}))
else if(m=e.fieldValue(p,!0),m&&m.constructor===Array)for(r&&r.push(p),f=0,v=m.length;v>f;f++)n.push({name:d,value:m[f]})
else if(i.fileapi&&"file"===p.type){r&&r.push(p)
var g=p.files
if(g.length)for(f=0;f<g.length;f++)n.push({name:d,value:g[f],type:p.type})
else n.push({name:d,value:"",type:p.type})}else null!==m&&void 0!==m&&(r&&r.push(p),n.push({name:d,value:m,type:p.type,required:p.required}))
if(!t&&s.clk){var x=e(s.clk),y=x[0]
d=y.name,d&&!y.disabled&&"image"===y.type&&(n.push({name:d,value:x.val()}),n.push({name:d+".x",value:s.clk_x},{name:d+".y",value:s.clk_y}))}return n},e.fn.formSerialize=function(t){return e.param(this.formToArray(t))},e.fn.fieldSerialize=function(t){var r=[]
return this.each(function(){var a=this.name
if(a){var n=e.fieldValue(this,t)
if(n&&n.constructor===Array)for(var i=0,o=n.length;o>i;i++)r.push({name:a,value:n[i]})
else null!==n&&void 0!==n&&r.push({name:this.name,value:n})}}),e.param(r)},e.fn.fieldValue=function(t){for(var r=[],a=0,n=this.length;n>a;a++){var i=this[a],o=e.fieldValue(i,t)
null===o||void 0===o||o.constructor===Array&&!o.length||(o.constructor===Array?e.merge(r,o):r.push(o))}return r},e.fieldValue=function(t,r){var a=t.name,i=t.type,o=t.tagName.toLowerCase()
if(void 0===r&&(r=!0),r&&(!a||t.disabled||"reset"===i||"button"===i||("checkbox"===i||"radio"===i)&&!t.checked||("submit"===i||"image"===i)&&t.form&&t.form.clk!==t||"select"===o&&-1===t.selectedIndex))return null
if("select"===o){var s=t.selectedIndex
if(0>s)return null
for(var u=[],c=t.options,l="select-one"===i,f=l?s+1:c.length,d=l?s:0;f>d;d++){var m=c[d]
if(m.selected&&!m.disabled){var p=m.value
if(p||(p=m.attributes&&m.attributes.value&&!m.attributes.value.specified?m.text:m.value),l)return p
u.push(p)}}return u}return e(t).val().replace(n,"\r\n")},e.fn.clearForm=function(t){return this.each(function(){e("input,select,textarea",this).clearFields(t)})},e.fn.clearFields=e.fn.clearInputs=function(t){var r=/^(?:color|date|datetime|email|month|number|password|range|search|tel|text|time|url|week)$/i
return this.each(function(){var a=this.type,n=this.tagName.toLowerCase()
r.test(a)||"textarea"===n?this.value="":"checkbox"===a||"radio"===a?this.checked=!1:"select"===n?this.selectedIndex=-1:"file"===a?/MSIE/.test(navigator.userAgent)?e(this).replaceWith(e(this).clone(!0)):e(this).val(""):t&&(t===!0&&/hidden/.test(a)||"string"==typeof t&&e(this).is(t))&&(this.value="")})},e.fn.resetForm=function(){return this.each(function(){var t=e(this),r=this.tagName.toLowerCase()
switch(r){case"input":this.checked=this.defaultChecked
case"textarea":return this.value=this.defaultValue,!0
case"option":case"optgroup":var a=t.parents("select")
return a.length&&a[0].multiple?"option"===r?this.selected=this.defaultSelected:t.find("option").resetForm():a.resetForm(),!0
case"select":return t.find("option").each(function(e){return this.selected=this.defaultSelected,this.defaultSelected&&!t[0].multiple?(t[0].selectedIndex=e,!1):void 0}),!0
case"label":var n=e(t.attr("for")),i=t.find("input,select,textarea")
return n[0]&&i.unshift(n[0]),i.resetForm(),!0
case"form":return("function"==typeof this.reset||"object"==typeof this.reset&&!this.reset.nodeType)&&this.reset(),!0
default:return t.find("form,input,label,select,textarea").resetForm(),!0}})},e.fn.enable=function(e){return void 0===e&&(e=!0),this.each(function(){this.disabled=!e})},e.fn.selected=function(t){return void 0===t&&(t=!0),this.each(function(){var r=this.type
if("checkbox"===r||"radio"===r)this.checked=t
else if("option"===this.tagName.toLowerCase()){var a=e(this).parent("select")
t&&a[0]&&"select-one"===a[0].type&&a.find("option").selected(!1),this.selected=t}})},e.fn.ajaxSubmit.debug=!1})
