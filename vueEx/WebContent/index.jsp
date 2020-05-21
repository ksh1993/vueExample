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
	<div id="demo">{{ fullName }}</div>
	<div id="sty" v-bind:style="styleObject">What's New</div>
	<ul id="example-1">
	  <li v-for="item in items">
	    {{ item.message }}
	  </li>
	</ul>
	<script>
		/* Vue.component('click-counter', {
			template : '<button @click="count++">{{count}}</button>',
			data(){
				return{
					count: 0
				}
			}
		})
		new Vue({
			el: '#app'
		}) */
		var example1 = new Vue({
			  el: '#example-1',
			  data: {
			    items: [
			      { message: 'PAST' },
			      { message: 'PRESENT' }
			    ]
			  }
			})
		var vm = new Vue({
			  el: '#demo',
			  data: {
			    firstName: 'PAST',
			    lastName: 'PRESENT'
			  },
			  computed: {
			    fullName: function () {
			      return this.firstName + ' ' + this.lastName
			    }
			  }
			})
		var vms = new Vue({
			el: '#sty',
			data : {
				styleObject: {
				    color: 'blue',
				    fontSize: '13px'
				  }
			}
		})
	</script>
</body>
</html>