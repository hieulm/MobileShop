<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page import="com.hieulm.util.*,com.hieulm.model.BO.*,java.util.*"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<div class="col-main">
	<div class="category-banner">
		<img src="images/sunglass.jpg" title="Banner" alt="Banner" />
	</div>
	<div class="pager-container">
		<div class="pager">
			<div class="show-items">6 Item(s)</div>
			<div class="show-per-page">
				<label>Show</label> <select><option>09</option></select>
			</div>
		</div>
		<div class="view-by-block">
			<ul class="view-by">
				<li>View as:</li>
				<li><a href="#" title="Grid" class="grid">Grid</a></li>
				<li><a href="#" title="List" class="list">List</a></li>
			</ul>
			<div class="short-by">
				<label>Sort By</label><select><option>Position</option></select>
			</div>
		</div>
	</div>
	<div class="new-product-block">
		<ul class="product-grid">
			<li>
				<div class="pro-img">
					<img title="Freature Product" alt="Freature Product"
						src="images/default_img.png" />
				</div>
				<div class="pro-content">
					<p>White Round Neck T-Shirt</p>
				</div>
				<div class="pro-price">$600.00</div>
				<div class="pro-btn-block">
					<a class="add-cart left" href="#" title="Add to Cart">Add to
						Cart</a> <a class="add-cart right quickCart inline"
						href="#quick-view-container" title="Quick View">Quick View</a>
				</div>
				<div class="pro-link-block">
					<a class="add-wishlist left" href="#" title="Add to wishlist">Add
						to wishlist</a> <a class="add-compare right" href="#"
						title="Add to Compare">Add to Compare</a>
					<div class="clearfix"></div>
				</div>
			</li>
			<li>
				<div class="pro-img">
					<img title="Freature Product" alt="Freature Product"
						src="images/default_img.png" />
				</div>
				<div class="pro-content">
					<p>White Round Neck T-Shirt</p>
				</div>
				<div class="pro-price">$600.00</div>
				<div class="pro-btn-block">
					<a class="add-cart left" href="#" title="Add to Cart">Add to
						Cart</a> <a class="add-cart right quickCart inline"
						href="#quick-view-container" title="Quick View">Quick View</a>
				</div>
				<div class="pro-link-block">
					<a class="add-wishlist left" href="#" title="Add to wishlist">Add
						to wishlist</a> <a class="add-compare right" href="#"
						title="Add to Compare">Add to Compare</a>
					<div class="clearfix"></div>
				</div>
			</li>
			<li>
				<div class="pro-img">
					<img title="Freature Product" alt="Freature Product"
						src="images/default_img.png" />
				</div>
				<div class="pro-content">
					<p>White Round Neck T-Shirt</p>
				</div>
				<div class="pro-price">$600.00</div>
				<div class="pro-btn-block">
					<a class="add-cart left" href="#" title="Add to Cart">Add to
						Cart</a> <a class="add-cart right quickCart inline"
						href="#quick-view-container" title="Quick View">Quick View</a>
				</div>
				<div class="pro-link-block">
					<a class="add-wishlist left" href="#" title="Add to wishlist">Add
						to wishlist</a> <a class="add-compare right" href="#"
						title="Add to Compare">Add to Compare</a>
					<div class="clearfix"></div>
				</div>
			</li>
		</ul>
		<ul class="product-grid">
			<li>
				<div class="pro-img">
					<img title="Freature Product" alt="Freature Product"
						src="images/default_img.png" />
				</div>
				<div class="pro-content">
					<p>White Round Neck T-Shirt</p>
				</div>
				<div class="pro-price">$600.00</div>
				<div class="pro-btn-block">
					<a class="add-cart left" href="#" title="Add to Cart">Add to
						Cart</a> <a class="add-cart right quickCart inline"
						href="#quick-view-container" title="Quick View">Quick View</a>
				</div>
				<div class="pro-link-block">
					<a class="add-wishlist left" href="#" title="Add to wishlist">Add
						to wishlist</a> <a class="add-compare right" href="#"
						title="Add to Compare">Add to Compare</a>
					<div class="clearfix"></div>
				</div>
			</li>
			<li>
				<div class="pro-img">
					<img title="Freature Product" alt="Freature Product"
						src="images/default_img.png" />
				</div>
				<div class="pro-content">
					<p>White Round Neck T-Shirt</p>
				</div>
				<div class="pro-price">$600.00</div>
				<div class="pro-btn-block">
					<a class="add-cart left" href="#" title="Add to Cart">Add to
						Cart</a> <a class="add-cart right quickCart inline"
						href="#quick-view-container" title="Quick View">Quick View</a>
				</div>
				<div class="pro-link-block">
					<a class="add-wishlist left" href="#" title="Add to wishlist">Add
						to wishlist</a> <a class="add-compare right" href="#"
						title="Add to Compare">Add to Compare</a>
					<div class="clearfix"></div>
				</div>
			</li>
			<li>
				<div class="pro-img">
					<img title="Freature Product" alt="Freature Product"
						src="images/default_img.png" />
				</div>
				<div class="pro-content">
					<p>White Round Neck T-Shirt</p>
				</div>
				<div class="pro-price">$600.00</div>
				<div class="pro-btn-block">
					<a class="add-cart left" href="#" title="Add to Cart">Add to
						Cart</a> <a class="add-cart right quickCart inline"
						href="#quick-view-container" title="Quick View">Quick View</a>
				</div>
				<div class="pro-link-block">
					<a class="add-wishlist left" href="#" title="Add to wishlist">Add
						to wishlist</a> <a class="add-compare right" href="#"
						title="Add to Compare">Add to Compare</a>
					<div class="clearfix"></div>
				</div>
			</li>
		</ul>
		<ul class="product-grid">
			<li>
				<div class="pro-img">
					<img title="Freature Product" alt="Freature Product"
						src="images/default_img.png" />
				</div>
				<div class="pro-content">
					<p>White Round Neck T-Shirt</p>
				</div>
				<div class="pro-price">$600.00</div>
				<div class="pro-btn-block">
					<a class="add-cart left" href="#" title="Add to Cart">Add to
						Cart</a> <a class="add-cart right quickCart inline"
						href="#quick-view-container" title="Quick View">Quick View</a>
				</div>
				<div class="pro-link-block">
					<a class="add-wishlist left" href="#" title="Add to wishlist">Add
						to wishlist</a> <a class="add-compare right" href="#"
						title="Add to Compare">Add to Compare</a>
					<div class="clearfix"></div>
				</div>
			</li>
			<li>
				<div class="pro-img">
					<img title="Freature Product" alt="Freature Product"
						src="images/default_img.png" />
				</div>
				<div class="pro-content">
					<p>White Round Neck T-Shirt</p>
				</div>
				<div class="pro-price">$600.00</div>
				<div class="pro-btn-block">
					<a class="add-cart left" href="#" title="Add to Cart">Add to
						Cart</a> <a class="add-cart right quickCart inline"
						href="#quick-view-container" title="Quick View">Quick View</a>
				</div>
				<div class="pro-link-block">
					<a class="add-wishlist left" href="#" title="Add to wishlist">Add
						to wishlist</a> <a class="add-compare right" href="#"
						title="Add to Compare">Add to Compare</a>
					<div class="clearfix"></div>
				</div>
			</li>
			<li>
				<div class="pro-img">
					<img title="Freature Product" alt="Freature Product"
						src="images/default_img.png" />
				</div>
				<div class="pro-content">
					<p>White Round Neck T-Shirt</p>
				</div>
				<div class="pro-price">$600.00</div>
				<div class="pro-btn-block">
					<a class="add-cart left" href="#" title="Add to Cart">Add to
						Cart</a> <a class="add-cart right quickCart inline"
						href="#quick-view-container" title="Quick View">Quick View</a>
				</div>
				<div class="pro-link-block">
					<a class="add-wishlist left" href="#" title="Add to wishlist">Add
						to wishlist</a> <a class="add-compare right" href="#"
						title="Add to Compare">Add to Compare</a>
					<div class="clearfix"></div>
				</div>
			</li>
		</ul>
	</div>
	<div class="pager-container">
		<div class="pager">
			<div class="show-items">6 Item(s)</div>
			<div class="show-per-page">
				<label>Show</label> <select><option>09</option></select>
			</div>
		</div>
		<div class="view-by-block">
			<ul class="view-by">
				<li>View as:</li>
				<li><a href="#" title="Grid" class="grid">Grid</a></li>
				<li><a href="#" title="List" class="list">List</a></li>
			</ul>
			<div class="short-by">
				<label>Sort By</label><select><option>Position</option></select>
			</div>
		</div>
	</div>
</div>