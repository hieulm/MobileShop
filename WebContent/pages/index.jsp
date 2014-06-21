<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!doctype html>
<html lang="en">
<tiles:insertAttribute name="head" />
<body>
	<div class="mainContainer sixteen container">
		<tiles:insertAttribute name="header"/>
		<tiles:insertAttribute name="banner"/>
		<tiles:insertAttribute name="content"/>
	</div>
	<tiles:insertAttribute name="quickview"/>
	<tiles:insertAttribute name="footer"/>
</body>
</html>