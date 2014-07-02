<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page import="com.hieulm.util.*,com.hieulm.model.BO.*,java.util.*"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div class="col-left">
	<div class="block man-block">
		<div class="block-title">OS</div>
		<ul>
			<%
				List<Hedieuhanh> hedieuhanhs = Category.getHedieuhanh();
				for(Iterator<Hedieuhanh> iterator = hedieuhanhs.iterator(); iterator.hasNext();){
					Hedieuhanh tmp = iterator.next();
					out.println("<li><a href=\"xemtheohedieuhanh?maos=" + tmp.getMahedieuhanh()+ "\">" + tmp.getTenhedieuhanh()+"</a></li>");
				}
			%>
		</ul>
	</div>
	<div class="block shop-by-block">
		<div class="block-title">SHOP BY</div>
		<ul>
			<li>Price</li>
			<li><a href="${pageContext.request.contextPath}/xemtheogia?minPrice=0&maxPrice=1999999" title="0 - 1,999,999">0 - 1,999,999 &#8363</a></li>
			<li><a href="${pageContext.request.contextPath}/xemtheogia?minPrice=2000000&maxPrice=4999999" title="2,000,000 - 4,999,999">2,000,000 -
					4,999,999 &#8363</a></li>
			<li><a href="${pageContext.request.contextPath}/xemtheogia?minPrice=5000000&maxPrice=7999999" title="5,000,000 - 7,999,999">5,000,000 -
					7,999,999 &#8363</a></li>
			<li><a href="${pageContext.request.contextPath}/xemtheogia?minPrice=8000000&maxPrice=11999999" title="8,000,000 - 11,999,999">8,000,000 -
					11,999,999 &#8363</a></li>
			<li><a href="${pageContext.request.contextPath}/xemtheogia?minPrice=12000000" title=">12,000,000">&#8805 12,000,000 &#8363</a></li>
		</ul>
	</div>
	<!-- <div class="block compare-block">
		<div class="block-title">COMPARE PRODUCTS</div>
		<ul>
			<li>You have no items to compare</li>
		</ul>
	</div> -->
	<div class="paypal-block">
		<a href="#" title="Paypal"><img src="images/paypal_img.png"
			title="Paypal" alt="Paypal" /></a>
	</div>
</div>