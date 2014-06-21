<%@ taglib prefix="s" uri="/struts-tags"%>
<style>
#view {
	margin: 40px 0px 40px 0px;
}
</style>

<div id="view">
	<s:form action="add_mobile" method="post">
		<s:textfield name="tendienthoai" label="Ten Dien Thoai"/>
		<s:select list="hangsxs" label="Hang San Xuat" listKey="mahangsx" listValue="tenhangsx" required="true"/>
		<s:select list="oss" label="He Dieu Hanh" listKey="mahedieuhanh" listValue="tenhedieuhanh" required="true"/>
	</s:form>


</div>