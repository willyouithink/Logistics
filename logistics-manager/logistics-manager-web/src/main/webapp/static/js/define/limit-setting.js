/*! -v1.0 项目描述  By Linyer */
layui.use("form",function(){function i(){t.ajax({type:"get",url:"../../../json/limit.json",async:!0,success:function(i,t){new Vue({el:"#limit-box",data:{limitsAll:i.data}})}})}var t=layui.jquery;layui.form();i(),t(function(){function i(){this.parentNode===a?s.append(this):n.append(this)}function l(){var i=this.className;"selected"===i?this.className="":this.className="selected"}function e(){for(var i=t(".data-list li.selected"),l=0;l<i.length;l++)"add"===this.id?s.append(i[l]):n.append(i[l])}t(".fly-limit").on("click",".fly-limit-box-left .fly-limit-list",function(){console.log(111)});for(var n=t("#lList"),a=document.getElementById("lList"),s=t("#rList"),c=t(".data-list li"),o=0;o<c.length;o++)c[o].onclick=l,c[o].ondblclick=i;t("#add").on("click",e),t("#remove").on("click",e)})});