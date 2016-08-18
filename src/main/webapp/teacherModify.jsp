<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<form id="modifyForm">
<input name="id" value="${teacher.id }" type="hidden" />
	<label>Name</label> : <input name="name" value="${teacher.name}" /><br/>
	<label>SerializeNo</label> : <input name="serializeNo" value="${teacher.serializeNo}" /><br/>
	<label>Titile</label> : <input name="titile" value="${teacher.titile}" /><br/>
	<label>Subject</label> : <input name="subject" value="${teacher.subject}" /><br/>
</form>