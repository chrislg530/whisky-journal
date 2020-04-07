<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Chris
  Date: 6/4/2020
  Time: 2:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<div id="container" >

    <div id="content">

        <p>Name: ${whiskyEntry.name}</p>
        <p>Age: ${whiskyEntry.age}</p>
        <p>Distiller: ${whiskyEntry.distiller}</p>
        <p>Origin: ${whiskyEntry.origin}</p>
        <p>Rating: ${whiskyEntry.rating}</p>
        <p>Would I:
            <input type="checkbox" id="buy" disabled/> Buy it
            <input type="checkbox" id="gift" disabled/> Gift it
            <input type="checkbox"  id="bin"  disabled/> Bin it
        </p><br><br>
        <p>Description: </p>
        <p>${whiskyEntry.notes}</p>

        <script>
            document.getElementById("buy").checked = ${whiskyEntry.buy};
            document.getElementById("gift").checked = ${whiskyEntry.gift};
            document.getElementById("bin").checked = ${whiskyEntry.bin};
        </script>
        <div class="ex2">
            <canvas id="myChart"></canvas>
        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.js"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/myChart.js"></script>
        <script>
            const data = [${whiskyEntry.whiskyEntryDetail.balance},${whiskyEntry.whiskyEntryDetail.linger},${whiskyEntry.whiskyEntryDetail.heat},
                ${whiskyEntry.whiskyEntryDetail.darkFruit},${whiskyEntry.whiskyEntryDetail.citrus},${whiskyEntry.whiskyEntryDetail.floral},
                ${whiskyEntry.whiskyEntryDetail.spicy},${whiskyEntry.whiskyEntryDetail.herbal},${whiskyEntry.whiskyEntryDetail.malty},
                ${whiskyEntry.whiskyEntryDetail.toffee},${whiskyEntry.whiskyEntryDetail.woody},${whiskyEntry.whiskyEntryDetail.tannic},
                ${whiskyEntry.whiskyEntryDetail.charLvl},${whiskyEntry.whiskyEntryDetail.sweet},${whiskyEntry.whiskyEntryDetail.body},
                ${whiskyEntry.whiskyEntryDetail.legs}];
            const labels =  ['balance','linger','heat','dark fruit','citrus','floral','spicy','herbal','malty',
                'toffee','woody','tannic','char','sweet','body','legs'];
            renderChart(data, labels);
        </script>

    </div><br><br>
    <input type="button" value="Back"
           onclick="window.history.back();"
           class="add-button"
    />

</div>
</body>
</html>
