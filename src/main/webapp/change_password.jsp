<%@page import="com.Db.DBConnect"%>
<%@page import="com.entity.Specialist"%>
<%@page import="java.util.List"%>
<%@page import="com.Dao.SpecialistDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	 <%@page isELIgnored="false"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change User Password</title>
<style>
.card-body {
	box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.3);
}
</style>
<%@include file="component/allcss.jsp"%>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	<c:if test="${empty userObj}">
	   <c:redirect url="user_login.jsp"></c:redirect>
	</c:if>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">Change Password</p>
						
						<c:if test="${not empty sucMsg}">
						 <p class="text-center text-success fs-3">${sucMsg}</p>
						 <c:remove var="sucMsg" scope="session"/>
						</c:if>
						
						<c:if test="${not empty errorMsg}">
						 <p class="text-center text-danger fs-5">${errorMsg}</p>
						 <c:remove var="errorMsg" scope="session"/>
						</c:if>

						<form action="userChangePassword" method="post">
							<div class="mb-3">
								<label class="form-Label">Enter Old Password</label> <input required
									name="oldpassword" type="password" class="form-control">
							</div>
							<div class="mb-3">
								<label class="form-Label ">Enter New Password</label> <input required
									name="newpassword" type="text" class="form-control">
							</div>
							
							<input type="hidden" value="${userObj.id}" name="uid" >
							<button type="submit" class="btn bg-success text-white col-md-12">Change Password</button>
						</form>
					</div>
				</div>
			</div>
			
			
		</div>
	</div>
	
	<%@include file="component/footer.jsp" %>

</body>
</html>