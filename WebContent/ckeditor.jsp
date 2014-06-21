<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://ckeditor.com" prefix="ckeditor"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Demo CkEditor</title>
</head>
<body>

	<form action="#" method="post">
		<p>
			<label for="editor1">Editor 1:</label>
			<textarea cols="80" id="editor1" name="editor1" rows="10"></textarea>
		</p>
		<p>
			<input type="submit" value="Submit" />
		</p>
	</form>
	<ckeditor:replace replace="editor1" basePath="/ckeditor/" />
</body>
</html> --%>
<%@ taglib uri="http://ckeditor.com" prefix="ckeditor"%>
<%@ page import="java.util.*,com.ckeditor.*"  %>
<% 
	Map<String, String> attr = new HashMap<String, String>();
	attr.put("rows", "20");
	attr.put("cols", "100");
	CKEditorConfig settings = new CKEditorConfig();
	List<List<String>> list = new ArrayList<List<String>>();
	List<String> subList = new ArrayList<String>();
	subList.add("Source");
	subList.add("-");
	subList.add("Bold");
	subList.add("Italic");
	list.add(subList);
	settings.addConfigValue("toolbar", list);
	settings.addConfigValue("width","500");
	settings.addConfigValue("toolbar","[[ 'Source', '-', 'Bold', 'Italic' ]]");
	
%>
<ckeditor:editor textareaAttributes="<%=attr %>" basePath="/ckeditor/" editor="editor1" value="Done" config="<%=settings %>"/>
