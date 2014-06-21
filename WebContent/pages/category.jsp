<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!doctype html>
<html lang="en">
<tiles:insertAttribute name="head" />
<body>
	<div class="mainContainer sixteen container">
		<!--Header Block-->
		<tiles:insertAttribute name="header" />
		<!--Content Block-->
		<section class="content-wrapper">
			<div class="content-container container">
				<tiles:insertAttribute name="breadcum"/>
				<tiles:insertAttribute name="col-left"/>
				<tiles:insertAttribute name="col-main"/>
				<div class="clearfix"></div>
				<tiles:insertAttribute name="news-letter"/>
			</div>
		</section>
	</div>
	<tiles:insertAttribute name="quickview" />
	<tiles:insertAttribute name="footer" />
</body>
</html>