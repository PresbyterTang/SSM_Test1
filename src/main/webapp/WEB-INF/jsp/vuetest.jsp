<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<script src="${pageContext.request.contextPath }/static/js/jquery-1.11.3.min.js"></script>
<script src="${pageContext.request.contextPath }/static/js/vue.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div id="app1">
<p v-if="flag">{{msg1}}</p>
<p></p>
<ol v-for="li in list">
	<li>{{li}}</li>
</ol>

<ol>
	<li v-for="li2 in list">
	{{li2}}
	</li>
</ol>


<p> <font v-bind:color="color"> 测试v-bind </font></p>

测试计算属性：<p>{{cmsg}}</p>
测试方法：<p>{{lianjie()}}</p>
</div>


<script type="text/javascript">

var vm=new Vue({
	el:"#app1",
	data:{
		flag:true,
		msg:'这是测试数据',
		msg1:'这是测试数据1',
		list:['A','B','C','D'],
		color:'red'
	},
	computed:{
		cmsg:function(){
			 //return this.msg+this.msg1
			 return Date.now()
		}
	},
	
	methods:{
		lianjie:function(){
			//return this.msg1+'  '+this.msg
			
			return Date.now()
		}
	}
	
	
})



</script>




</body>
</html>