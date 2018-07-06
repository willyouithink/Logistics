$(window).load(function() {

 var  s=window.location.href;

var  beginIndex=s.indexOf('=');
var paraNameIndex=s.indexOf('?');
if(beginIndex!=-1&&paraName!=-1){
  var paraValue=s.substring(beginIndex+1);
  var paraName=s.substring(paraNameIndex+1,beginIndex);
  if(paraName=='adnumbers'){
   ajaxCalUV(paraValue);
  }
}
  
});

 function ajaxCalUV(qudaoNum){
	 $.ajax({

         type: "POST",
         url: "http://www.deppon.com/common/ajaxloginCount.action",
         data: {'qudaoNum':qudaoNum},

         dataType: "json",

         success: function(data){
          
         }         
     });

 }


 
 