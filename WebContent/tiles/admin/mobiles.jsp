<%@ taglib prefix="s" uri="/struts-tags"%>
<style>
table {
	border-collapse: collapse;
	margin: 40px 0px 40px 0px;
}

table,td,th {
	border: 1px solid black;
}

td,th {
	padding: 5px;
}
</style>
<table>
	<tr>
		<th>madienthoai</th>
		<th>tendienthoai</th>
		<th>hangsx</th>
		<th>hedieuhanh</th>
		<th>gia</th>
	</tr>
	<s:iterator value="dienthoais">
		<tr>
			<td><s:property value="madienthoai"/></td>
			<td><s:property value="tendienthoai"/></td>
			<td><s:property value="%{hangsx.tenhangsx}"/></td>
			<td><s:property value="%{hedieuhanh.tenhedieuhanh}"/></td>
			<td><s:property value="gia"/></td>
		</tr>
	</s:iterator>



</table>