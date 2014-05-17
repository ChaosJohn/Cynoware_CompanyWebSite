<%--
  Created by IntelliJ IDEA.
  User: chaos
  Date: 10/13/13
  Time: 2:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Product</title>
    <link href="css/product.css" rel="stylesheet"></link>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/productBefore.js"></script>
</head>


<body>
<!--<body onload="onload()">-->

<%--<%String productId = (String)session.getAttribute("id");%>--%>
<%--<h><%=(String)session.getAttribute("id")%></h>--%>
<div class="menubar" id="menubar">
    <div class="maxMiddle">
        <a href="index.jsp">
            <img id="back" src="image/product_page/back.png"/>
        </a>
        <img id="logo" src="image/product_page/logo.png"/>
    </div>
</div>


<div id="productInfo" class="maxMiddle">
    <!--<div id="product_sign"><p> Product </p></div>-->
    <div id="product_sign">
        <div style="height:50px"></div>
        Product
    </div>
    <div id="product_splite_line"></div>
    <div id="product_name"></div>
</div>

<div id="productImages" class="maxMiddle">
    <img id="product_image_show">

    </img>
    <div id="product_image_gallery">
        <div id="product_image_gallery_introduction"></div>
        <div id="product_image_gallery_container"></div>
    </div>
    <div id="product_type_color">

    </div>


</div>

<div id="productDataSheet" class="maxMiddle">
    <center id="product_tab">
    </center>
    <img id="product_datasheet">
    </img>

</div>

<div id="productBottom" class="maxMiddle">
</div>


<script type="text/javascript" src="js/productAfter.js"></script>
<script type="text/javascript">
  function loadJson() {
    jsonData = JSON.parse('<%=(String)session.getAttribute("data")%>');
  };
</script>
</body>
<!--<script type="text/javascript" src="js/productAfter.js"></script> -->
</html>
