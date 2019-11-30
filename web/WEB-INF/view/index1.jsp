<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: YanYuHang
  Date: 2019/11/29
  Time: 10:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>
<c:forEach items="${imgs}" var="img">
    <p>
        <figure class="figure">
            <img src="../../${img.imgUrl}.gif" class="figure-img img-fluid rounded" alt="..." width="400px"
                 height="300px">
            <figcaption class="figure-caption">${img.imgName}</figcaption>
            <figcaption class="figure-caption">${img.imgDesc}</figcaption>
        </figure>
    </p>
</c:forEach>
</body>
</html>
