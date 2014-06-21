<%@ taglib prefix="s" uri="/struts-tags"%>
<style>
table {
	border-collapse: collapse;
}

table,td,th {
	border: 1px solid black;
}

td {
	padding: 5px;
}

#account_view{
	margin: 40px 0px 40px 0px;
}
</style>
<div id="account_view">


	<table>
		<tr>
			<td>User Id :</td>
			<td><s:property value="#session.user.mataikhoan" /></td>
		</tr>
		<tr>
			<td>Username :</td>
			<td><s:property value="#session.user.tentaikhoan" /></td>
		</tr>
		<tr>
			<td>Email :</td>
			<td><s:property value="#session.user.email" /></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><s:property value="#session.user.matkhau" /></td>
		</tr>
		<tr>
			<td>Firstname :</td>
			<td><s:property value="#session.user.firstname" /></td>
		</tr>
		<tr>
			<td>Lastname :</td>
			<td><s:property value="#session.user.lastname" /></td>
		</tr>
		<tr>
			<td>Role</td>
			<td><s:property value="#session.user.role" /></td>
		</tr>
	</table>
</div>

