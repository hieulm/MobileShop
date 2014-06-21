<%@ taglib prefix="s" uri="/struts-tags"%>
<style>
table {
	border-collapse: collapse;
	margin: 40px 0px 40px 0px;
}

table,td,th {
	border: 1px solid black;
}

td ,th{
	padding: 5px;
}
</style>
<table>
	<tr>
		<th>Brand Id</th>
		<th>Brand Name</th>
		<th>Image Path</th>
	</tr>
	<s:iterator value="hangsxs">
		<tr>
			<td><s:property value="mahangsx" /></td>
			<td><s:property value="tenhangsx" /></td>
			<td><s:property value="hinhdaidien" /></td>
		</tr>
	</s:iterator>



</table>