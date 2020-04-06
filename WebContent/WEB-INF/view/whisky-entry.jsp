<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Chris
  Date: 6/4/2020
  Time: 2:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Whisky Entry</title>

    <!-- reference our style sheet -->

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css">

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">


</head>
<body>
<div id="wrapper">
    <div id="header">
        <h2>Whisky Journal</h2>
    </div>
</div>

<div id="container">

    <div id="content">

        <p>Name: ${whiskyEntry.name}</p>
        <p>Age: ${whiskyEntry.age}</p>
        <p>Distiller: ${whiskyEntry.distiller}</p>
        <p>Origin: ${whiskyEntry.origin}</p>
        <p>Rating: ${whiskyEntry.rating}</p>
        <p>Would I:</p><br>
            <input type="checkbox" id="buy" disabled/> Buy it<br>
            <input type="checkbox" id="gift" disabled/> Gift it<br>
            <input type="checkbox"  id="bin"  disabled/> Bin it<br>
        <br><br>
        <p>Description: </p>
        ${whiskyEntry.notes}
        <script>
            document.getElementById("buy").checked = ${whiskyEntry.buy};
            document.getElementById("gift").checked = ${whiskyEntry.gift};
            document.getElementById("bin").checked = ${whiskyEntry.bin};
        </script>

    </div><br><br>
    <input type="button" value="Back"
           onclick="window.history.back();"
           class="add-button"
    />

</div>
</body>
</html>
