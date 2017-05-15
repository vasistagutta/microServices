<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
</head>
<body>
	<h1>Second JSP</h1>
	 <%-- <c:if test=" ${CardDetailsDTO.accountno}">	 --%>
	  <h2> your accountNumber is : ${CardDetailsDTO.accountno}</h2>
	<%-- </c:if>
	<c:if test="${not empty CardDetailsDTO.message}"> --%>
    <%-- <h2> your message is : ${CardDetailsDTO.message}</h2> --%>
<%-- </c:if> --%>
	 <p>Click on this <strong><a href="authenticate?QRData=1234568998344567899976">link</a></strong> to visit qrdata page.</p>
<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>