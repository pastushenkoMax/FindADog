<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<link rel="stylesheet" type="text/css" href="/css/dashboard.css">
<meta charset="ISO-8859-1">
<title>Find a Dog</title>
</head>
<body>
	<div class=container>
		<div class=left_container>
			<div class=lBtn>
				<div class="listDogBtn"><a href="/addDog">List a Dog!</a></div>
			</div>
			<div class=lBtn>
				<div class="listDogBtn"><a href="/">Home Page</a></div>
			</div>
			<div class=lBtn>
				<div class="listDogBtn"><a href="/allDogs">Clear Filter</a></div>
			</div>
			<div class=filter>
				<table id="myTable">
					<c:forEach var="breed" items="${breeds}">
					    <tr>
					    	<td><a href="/allDogs/${breed.id}"><c:out value="${breed.breed}"></c:out></a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
		<div class=mainContent id="mainContent">
				<c:forEach var="dog" items="${dogs}">
					<a href="/dogs/${dog.id}">
						<div class="dog_list" >
							<div class="block">
		                		<img alt="img" src="/photos/<c:out value="${dog.photo.fileName}" />">
		                	</div>
		                	<div class="block_bottom">
		                   		<h3><c:out value="${dog.dog_name}"></c:out></h3>
		                   		<h4><c:out value="${dog.breed.breed}"></c:out></h4>
		                    </div>
		                </div>
	                </a>
	         </c:forEach>
		</div>
	</div>
	<div class=bottomContainer>
		<div>Follow us for more!</div>
		<div class=socialMediaIcons>
			<a href="https://www.facebook.com"><img src="/images/facebook_icon.png" alt="facebook_icon.png"></a>
			<a href="https://www.instagram.com"><img src="/images/instagram__icon.png" alt="instagram_icon.png"></a>
			<a href="https://twitter.com"><img src="/images/twitter_icon.png" alt="twitter_icon.png"></a>
			<a href="https://www.youtube.com"><img src="/images/youtube_icon.png" alt="youtube_icon.png"></a>			
		</div>
	</div>
</body>
</html>