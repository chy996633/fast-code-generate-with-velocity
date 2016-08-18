<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%@ include file="includeJS.jsp" %>
	<script type="text/javascript">
		var pageConfig = {
				"list" : {
					"action" : "teacherAction!teacherList.action"
				},
				"add" : {
					"dialogTitle" : "Teacher Add",
					"action" : "teacherAction!teacherAdd.action",
					"toAction" : "teacherAction!toTeacherAdd.action",
					"errorMessage" : "Add Error!"
				},
				"modify" : {
					"dialogTitle" : "Teacher Modify",
					"action" : "teacherAction!teacherModify.action",
					"toAction" : "teacherAction!toTeacherModify.action",
					"errorMessage" : "Modify Error!"
				},
				"delete" : {
					"action" : "teacherAction!teacherDelete.action",
					"errorMessage" : "Delete Error!"
				},
				"idName" : "teacherId"
		};
	</script>
	<script type="text/javascript" src="common.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Teacher List</title>
</head>
<body>
<h1>Teacher List</h1>
<div><button id="addButton">Add</button></div>
<table border="1" style="width: 100%">
	<thead>
		<tr><th>No.</th><th><th>Name</th><th>SerializeNo</th><th>Titile</th><th>Subject</th></tr>
	</thead>
	<tbody>
		<c:forEach var="teacher" items="${teachers }" varStatus="status" >
			<tr teacherId="${teacher.id }"><td>${status.index+1}</td><td>${teacher.name}</td><td>${teacher.serializeNo}</td><td>${teacher.titile}</td><td>${teacher.subject}</td><td><button class="modifyButton">Modify</button><button class="deleteButton">Delete</button></td></tr>
		</c:forEach>
	</tbody>
</table><div id="modifyDiv"></div>
<div id="addDiv"></div>
</body>
</html>