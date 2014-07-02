<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page import="com.hieulm.util.*,com.hieulm.model.BO.*,java.util.*"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<div class="col-main">
	<div class="category-banner">
		<img src="images/sunglass.jpg" title="Banner" alt="Banner" />
	</div>
	<div class="pager-container">
		<div class="pager">
			<div class="show-items">
				<s:property value="%{dienthoais.size()}" />
				Item(s)
			</div>
			<%-- <div class="show-per-page">
				<label>Show</label> <select><option>09</option></select>
			</div> --%>
		</div>
		<%-- <div class="view-by-block">
			<ul class="view-by">
				<li>View as:</li>
				<li><a href="#" title="Grid" class="grid">Grid</a></li>
				<li><a href="#" title="List" class="list">List</a></li>
			</ul>
			<div class="short-by">
				<label>Sort By</label><select><option>Position</option></select>
			</div>
		</div> --%>
	</div>
	<div class="new-product-block">
		<s:iterator value="dienthoais" status="status">
			<s:if test="%{#status.index == 0}">
				<ul class="product-grid">
					<li>
						<div class="pro-img">
							<a
								href='${pageContext.request.contextPath}/chitietdienthoai?masp=<s:property value="madienthoai"/>'><img
								title="Freature Product" alt="Freature Product"
								src=<s:property value="%{hinhdaidien.duongdan}"/> /></a>

						</div>
						<div class="pro-content">
							<p>
								<a
									href='${pageContext.request.contextPath}/chitietdienthoai?masp=<s:property value="madienthoai"/>'><s:property
										value="tendienthoai" /></a>
							</p>

						</div>
						<div class="pro-price">
							<s:text name="format.money">
								<s:param name="gia" value="gia"></s:param>
							</s:text>
						</div>
						<div class="pro-btn-block">
							<a class="add-cart left"
								href="${pageContext.request.contextPath}
											/themsanpham?masanpham=<s:property value="madienthoai"/>
											&sl=<s:property value="1" />"
								title="Add to Cart">Add to Cart</a>
							<!-- <a class="add-cart right quickCart inline"
								href="#quick-view-container" title="Quick View">Quick View</a> -->
						</div> <!-- <div class="pro-link-block">
							<a class="add-wishlist left" href="#" title="Add to wishlist">Add
								to wishlist</a> <a class="add-compare right" href="#"
								title="Add to Compare">Add to Compare</a>
							<div class="clearfix"></div>
						</div> -->
					</li>
			</s:if>
			<s:elseif test="%{#status.index %3 == 0}">
				</ul>
				<ul class="product-grid">
					<li>
						<div class="pro-img">
							<a
								href='${pageContext.request.contextPath}/chitietdienthoai?masp=<s:property value="madienthoai"/>'><img
								title="Freature Product" alt="Freature Product"
								src=<s:property value="%{hinhdaidien.duongdan}"/> /></a>
						</div>
						<div class="pro-content">
							<p>
								<a
									href='${pageContext.request.contextPath}/chitietdienthoai?masp=<s:property value="madienthoai"/>'><s:property
										value="tendienthoai" /></a>
							</p>

						</div>
						<div class="pro-price">
							<s:text name="format.money">
								<s:param name="gia" value="gia"></s:param>
							</s:text>
						</div>
						<div class="pro-btn-block">
							<a class="add-cart left"
								href="${pageContext.request.contextPath}
											/themsanpham?masanpham=<s:property value="madienthoai"/>
											&sl=<s:property value="1" />"
								title="Add to Cart">Add to Cart</a>
							<!-- <a class="add-cart right quickCart inline"
								href="#quick-view-container" title="Quick View">Quick View</a> -->
						</div>
					</li>
			</s:elseif>
			<s:else>
				<li>
					<div class="pro-img">
						<a
							href='${pageContext.request.contextPath}/chitietdienthoai?masp=<s:property value="madienthoai"/>'><img
							title="Freature Product" alt="Freature Product"
							src=<s:property value="%{hinhdaidien.duongdan}"/> /></a>
					</div>
					<div class="pro-content">
						<p>
							<a
								href='${pageContext.request.contextPath}/chitietdienthoai?masp=<s:property value="madienthoai"/>'><s:property
									value="tendienthoai" /></a>
						</p>

					</div>
					<div class="pro-price">
						<s:text name="format.money">
							<s:param name="gia" value="gia"></s:param>
						</s:text>
					</div>
					<div class="pro-btn-block">
						<a class="add-cart left"
							href="${pageContext.request.contextPath}
											/themsanpham?masanpham=<s:property value="madienthoai"/>
											&sl=<s:property value="1" />"
							title="Add to Cart">Add to Cart</a> <!-- <a
							class="add-cart right quickCart inline"
							href="#quick-view-container" title="Quick View">Quick View</a> -->
					</div>
					<!-- <div class="pro-link-block">
						<a class="add-wishlist left" href="#" title="Add to wishlist">Add
							to wishlist</a> <a class="add-compare right" href="#"
							title="Add to Compare">Add to Compare</a>
						<div class="clearfix"></div>
					</div> -->
				</li>
			</s:else>
		</s:iterator>
		</ul>
	</div>
	<div class="pager-container">
		<div class="pager">
			<div class="show-items">
				<s:property value="%{dienthoais.size()}" />
				Item(s)
			</div>
			<%-- <div class="show-per-page">
				<label>Show</label> <select><option>09</option></select>
			</div> --%>
		</div>
		<%-- <div class="view-by-block">
			<ul class="view-by">
				<li>View as:</li>
				<li><a href="#" title="Grid" class="grid">Grid</a></li>
				<li><a href="#" title="List" class="list">List</a></li>
			</ul>
			<div class="short-by">
				<label>Sort By</label><select><option>Position</option></select>
			</div>
		</div> --%>
	</div>
</div>