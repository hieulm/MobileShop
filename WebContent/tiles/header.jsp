<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page import="com.hieulm.util.*,com.hieulm.model.BO.*,java.util.*"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!--Header Block-->
<div class="header-wrapper">
	<header class="container">
		<div class="head-right">
			<ul class="top-nav">
				<s:if test="#session.username == null">
					<li class=""><a href="#" title="My Account">My Account</a></li>
				</s:if>
				<s:else>
					<li class=""><a
						href="${pageContext.request.contextPath}/taikhoan"
						title="My Account">My Account</a></li>
				</s:else>
				<!-- <li class="my-wishlist"><a href="404_error.html"
					title="My Wishlist">My Wishlist</a></li> -->
				<li class="contact-us"><a href="#" title="Contact Us">Contact
						Us</a></li>
				<li class="checkout"><a href="#" title="Checkout">Checkout</a></li>
				<!-- kiểm tra session để hiển thị tên đăng nhập -->
				<s:if test="#session.username == null">
					<li class="log-in"><a
						href="${pageContext.request.contextPath}/dangnhap_form"
						title="Log In">Log In</a></li>
				</s:if>
				<s:else>
					<!-- <li class="log-in"><a href="dangnhap_form"
						title=<s:property value="#session.username"/>> </a></li> -->
					<li class="log-in"><a
						href="${pageContext.request.contextPath}/taikhoan" title="Account"><s:property
								value="#session.user.tentaikhoan" /></a></li>
					<li class="log-in"><a
						href="${pageContext.request.contextPath}/dangxuat" title="Logout">Log
							out</a></li>
				</s:else>
			</ul>
			<!-- <ul class="currencyBox">
				<li id="header_currancy" class="currency"><a
					class="mainCurrency" href="#">Currency: USD</a>
					<div id="currancyBox" class="currency_detial">
						<a href="#">Â£</a> <a href="#">â¬</a> <a href="#">$</a>
					</div></li>
			</ul> -->
			<section class="header-bottom">
				<div class="cart-block">
					<ul>
						<li><s:property value="#session.cart.size" /></li>
						<li><a href="${pageContext.request.contextPath}/xemgiohang"
							title="Cart"><img title="Item" alt="Item"
								src="${pageContext.request.contextPath}/images/item_icon.png" /></a></li>
						<li>Item</li>
					</ul>
					<div id="minicart" class="remain_cart" style="display: none;">
						<p class="empty">
							You have
							<s:property value="#session.cart.cartList.size" />
							items in your shopping cart.
						</p>
						<ol>
							<s:set var="total" value="0"/>
							<s:iterator value="#session.cart.cartList">
								<s:set var="total" value="#total + product.gia*quantity"/>
								<li>
									<%-- <div class="img-block">
										<img
											src="${pageContext.request.contextPath}/images/small_img.png"
											title="" alt="" />
									</div> --%>
									<div class="detail-block">
										<h4>
											<a href="#"
												title=<s:property value="%{product.tendienthoai}"/>><s:property
													value="%{product.tendienthoai}" /></a>
										</h4>
										<p>
											<strong><s:property value="quantity" /></strong> x
											<s:text name="format.money">
												<s:param name="gia" value="%{product.gia}"></s:param>
											</s:text>
										</p>
										<a href="#" title="Details">Details</a>
									</div>
									<div class="edit-delete-block">
										<%-- <a href="#" title="Edit"><img src="${pageContext.request.contextPath}/images/edit_icon.png"
											alt="Edit" title="Edit" /></a>  --%><a
											href="${pageContext.request.contextPath}
											/themsanpham?masanpham=<s:property value="%{product.madienthoai}"/>
											&sl=<s:property value="-quantity" />"
											title="Remove"><img src="${pageContext.request.contextPath}/images/delete_item_btn.png"
											alt="Remove" title="Remove" /></a>
									</div>
								</li>
							</s:iterator>
							<li>
								<div class="total-block">
									Total:<span>
									<s:text name="format.money">
										<s:param value="#total"/>
									</s:text>
									</span>
								</div> <a href="${pageContext.request.contextPath}/xemgiohang"
								title="Cart" class="colors-btn">Cart</a>
								<div class="clear"></div>
							</li>
						</ol>
					</div>
				</div>
				<div class="search-block">
					<input type="text" value="Search" /> <input type="submit"
						value="Search" title="Search" />
				</div>
			</section>
		</div>
		<h1 class="logo">
			<a href="${pageContext.request.contextPath}/index" title="Logo">
				<img title="Logo" alt="Logo"
				src="${pageContext.request.contextPath}/images/logo.png" />
			</a>
		</h1>
		<nav id="smoothmenu1" class="ddsmoothmenu mainMenu">
			<ul id="nav">
				<li class="active"><a
					href="${pageContext.request.contextPath}/index" title="Home">Home</a></li>
				<li class=""><a href="${pageContext.request.contextPath}/#"
					title="Shop by">Shop by</a>
					<ul>
						<li><a href="${pageContext.request.contextPath}/dienthoai">Mobile</a>
							<ul>
								<%-- <%
									List<Hangsx> hangsxs = Category.getHangDienthoai();
															for(Iterator<Hangsx> iterator = hangsxs.iterator(); iterator.hasNext();){
																Hangsx tmp = iterator.next();
																out.println("<li><a href=\"dienthoai?mahangsx="+ tmp.getMahangsx() + "\">" + tmp.getTenhangsx()+"</a></li>");
															}
								%> --%>
								<s:iterator value="#session.hangsxs">
									<li><a
										href='${pageContext.request.contextPath}/dienthoai?mahangsx=<s:property value="mahangsx"/>'>
											<s:property value="tenhangsx" />
									</a></li>
									<%-- ${pageContext.request.contextPath} --%>
								</s:iterator>
							</ul></li>
					</ul></li>
				<li class=""><a
					href="${pageContext.request.contextPath}/blog.html" title="Blog">Blog</a></li>
				<li class=""><a
					href="${pageContext.request.contextPath}/faq.html" title="Faq">Faq</a></li>
				<li class=""><a
					href="${pageContext.request.contextPath}/about_us.html"
					title="About us">About us</a></li>
				<li class=""><a
					href="${pageContext.request.contextPath}/404_error.html"
					title="Pages">Pages</a></li>
				<li class=""><a
					href="${pageContext.request.contextPath}/contact_us.html"
					title="Footwear">Contact us</a></li>
			</ul>
		</nav>

		<div class="mobMenu">
			<h1>
				<span>Menu</span> <a class="menuBox highlight"
					href="${pageContext.request.contextPath}/javascript:void(0);">ccc</a>
				<span class="clearfix"></span>
			</h1>
			<div id="menuInnner" style="display: none;">
				<ul class="accordion">
					<li class="active"><a
						href="${pageContext.request.contextPath}/index" title="Home">Home</a></li>
					<li class="parent"><a
						href="${pageContext.request.contextPath}/category" title="Shop by">Shop
							by</a>
						<ul>
							<li><a href="${pageContext.request.contextPath}/category">Mobile</a>
								<ul>

								</ul></li>
						</ul></li>
					<li class=""><a
						href="${pageContext.request.contextPath}/blog.html" title="Blog">Blog</a></li>
					<li class=""><a
						href="${pageContext.request.contextPath}/faq.html" title="Faq">Faq</a></li>
					<li class=""><a
						href="${pageContext.request.contextPath}/about_us.html"
						title="About us">About us</a></li>
					<li class=""><a
						href="${pageContext.request.contextPath}/404_error.html"
						title="Pages">Pages</a></li>
					<li class=""><a
						href="${pageContext.request.contextPath}/contact_us.html"
						title="Footwear">Contact us</a></li>
				</ul>
				<span class="clearfix"></span>

			</div>
		</div>

	</header>
</div>