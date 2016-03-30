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
            var xmlHttp =createxmlHttp();
            var msg =document.querySelector("#msg").value;
            msg=encodeURIComponent(msg);
            xmlHttp.open("get","/home.do?msg="+msg,true);
            xmlHttp.send();
        }

    })();

</script>
</body>
</html>
