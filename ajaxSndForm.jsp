<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/header.jsp" %>
<!-- 공통 js ajax콜백등등 -->
<script type="text/javascript" src="<c:url value='/resources/js/common/common.js' />"></script>
<script type="text/javascript" src="<c:url value='/resources/js/common/Map.js' />"></script>



<script>
function sendarray(){
	let data = [{'name':'cjung', 'age':'30'}, {'name':'wedul', 'age':'28'}];
	
	
	$.ajax({
		type:"get",
		url:"/vo_map_list/ajaxSndData.do",	
		cache: false,
		data:{ list : JSON.stringify(data) },
		//contentType: "application/json",
		dataType:"json",
		success:function(data){
			//console.log(data);
			//alert(JSON.stringify(data));
			alert(JSON.stringify(data));
			
			//alert( JSON.stringify(data.result2(0).subject) );
		},
		error      : function(json) {
			alert("실패");
		}
	});	
	 

}

</script>




<br><br>
<a href="javascript: sendarray()">[array list 넘기기]</a>

</body>
</html>