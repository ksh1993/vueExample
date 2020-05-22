<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
</head>
<body>
<div id="ex1">
	<input v-model="message">
	<p>{{message | capitalize}}</p>
</div>
<script>
Vue.filter('capitalize', function(value){
	if(!value) {
		return ''
	}
	value = value.toString()
	return value.charAt(0).toUpperCase() + value.slice(1)
})

new Vue({
	el : "#ex1",
	data: function(){
		return {
			message : 'john'
		}
	}
})
</script>
</body>
</html>