/**
 * 首页选中用户名之后显示验证码
 */
$("#userName").live("click",function(){
   $("#ckCodes").show();
	$("#authCode").show();
	changeImg();
});
/**
 * 首页货物追踪选中之后显示验证码
 */
$("#ordernum").click(function(){
	$("#trackCodesI").show();
	changeTrackCode();

});