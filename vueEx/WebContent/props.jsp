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
	<div id="exex">
		<%-- <child message="message"/> --%>
		<component-a message="A"></component-a>
  		<component-b message="B"></component-b>
 		<component-c message="C"></component-c>
	</div>
	<script>
	
		var componentA = {
				props : ['message'],
				template : '<div> {{message}} A </div>'
		}
		var componentB = {
				props : ['message'],
				template : '<div> {{message}} B </div>'
		}
		var componentC = {
				props : ['message'],
				template : '<div> {{message}} C </div>'
		}
	
		/* Vue.component('child', {
			props : ['message'],
			template : '<span>{{ message }}</span>'
		}) */
		new Vue({
			el: '#exex',
			components: {
				'component-a' : componentA,
				'component-b' : componentB,
				'component-c' : componentC
			}
		})
	</script>
</body>
</html>