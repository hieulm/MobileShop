<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://ckeditor.com" prefix="ckeditor" %>
<form action="#" method="post">
	<p>
		<label for="editor1">Editor 1:</label>
		<textarea cols="130" id="editor1" name="editor1" rows="30"></textarea>
	</p>
	<p>
		<input type="submit" value="Submit" />
	</p>
</form>
<ckeditor:replace replace="editor1" basePath="/ckeditor/" />
</body>

