<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<h1>hello.world</h1>
<input type="text" id="msg">
<button id="btn">submit</button>
<script>
    (function(){
        function createxmlHttp(){
            var xmlHttp = null;
            if(window.ActiveXObject){
                xmlHttp = new ActiveXObject("Mircrosoft.XMLHTTP");
            }else{
                xmlHttp = new XMLHttpRequest();
            }
            return xmlHttp;
        };

        document.querySelector("#btn").onclick = function () {
           var xmlFttp = createxmlHttp();
            xmlFttp.open("post","/home.do",true);
            xmlFttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
            var msg =  document.querySelector("#msg").value;
            xmlFttp.send("msg="+msg);
        }

    })();

</script>
</body>
</html>
