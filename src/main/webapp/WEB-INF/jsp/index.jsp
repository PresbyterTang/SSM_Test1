<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <script src="/SSM_Test1/static/js/jquery-1.11.3.min.js"></script>
    <script src="/SSM_Test1/static/js/vue.js"></script>
    <script src="/SSM_Test1/static/js/axios.min.js"></script>
    <script src="/SSM_Test1/static/js/vue-resource.min.js"></script>

</head>
<body>
<div id="app">
<table>
    <thead>
    <tr>
        <th>编号</th>
        <th>名称</th>
        <th>职业</th>
        <th>电话</th>
    </tr>
    </thead>
    <tbody>
    <tr v-for="site in sites">
        <td>{{site.id}}</td>
        <td v-text="site.username"></td>
        <td v-text="site.jobs"></td>
        <td v-text="site.phone"></td>
    </tr>
    </tbody>
</table>
</div>

<script type = "text/javascript">
new Vue({
    el: '#app',
    data: {
        sites: []
    },
    created: function () {
        var self = this;
        $.ajax({
            url: '/SSM_Test1/customer/findAllCustomer1',
            type: 'get',
            data: {},
            dataType: 'json'
        }).then(function (res) {
            console.log(res);
            self.sites = res;
        }).fail(function () {
            console.log('失败');
        })
    }
})
</script>

</body>
</html>