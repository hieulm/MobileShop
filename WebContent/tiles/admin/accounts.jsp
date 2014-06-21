<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<style>
table {
    border-collapse: collapse;
}

table, td, th {
    border: 1px solid black;
}
td{
	padding : 5px;
}
</style>
<h1>Accounts</h1>
<div></div>
<table>
	<tr>
		<th>UserId</th>
		<th>Username</th>
		<th>Password</th>
		<th>Email</th>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Role</th>
	</tr>
	<s:iterator value="taikhoans">
		<tr>
			<td><s:property value="mataikhoan" /></td>
			<td><a href='accountedit?id=<s:property value="mataikhoan"/>'><s:property value="tentaikhoan" /></a></td>
			<td><s:property value="email" /></td>
			<td><s:property value="matkhau" /></td>
			<td><s:property value="firstname" /></td>
			<td><s:property value="lastname" /></td>
			<td><s:property value="role" /></td>
		</tr>
	</s:iterator>
</table>

<br>
