<%@ taglib prefix="s" uri="/struts-tags"%>

<style>
table {
	border-collapse: collapse;
}

table, td, th {
	border: 1px solid black;
	padding: 5px;
}

.button {
	font: bold 11px Arial;
	text-decoration: none;
	background-color: #EEEEEE;
	color: #333333;
	padding: 2px 6px 2px 6px;
	border-top: 1px solid #CCCCCC;
	border-right: 1px solid #333333;
	border-bottom: 1px solid #333333;
	border-left: 1px solid #CCCCCC;
}
</style>

<section class="content-wrapper">
	<div class="content-container container">
		<div class="col-1-layout">
			<!-- <ul class="shopping-cart-table">
				<li>
					<div class="img-box">
						<img src="images/cart_img.png" title="" alt="" />
					</div>
					<div class="pro-name">Htc one 1120</div>
				</li>
				<li>
					<div class="pro-qty">
						<input type="text" value="1" />
						<label>1</label>
					</div>
					<div class="pro-price">$1,000.00</div>
				</li>
			</ul> -->
			<table>
				<tr>
					<th>Product Id</th>
					<th>Product Name</th>
					<th>Quantity</th>
					<th>Price</th>
				</tr>
				<s:set var="total" value="0" />
				<s:iterator value="#session.cart.cartList">
					<tr>
						<form action="${pageContext.request.contextPath}/capnhatgiohang" method="get">
							<td id="masanpham"><s:property
									value="%{product.madienthoai}" /></td> 
							<input type="text" size="1" hidden="true" name="masanpham" value=<s:property value="%{product.madienthoai}"/>>
							<td><s:property value="%{product.tendienthoai}" /></td>
							<td><input type="text" size="1" id="productQty" name="sl"
								value=<s:property value="quantity"/>></td>
							<td><s:text name="format.money">
									<s:param name="gia" value="%{product.gia}"></s:param>
								</s:text></td>
							<td><input type="Submit" class="updateQty" value="Update" />
							</td>
						</form>
					</tr>
					<s:set var="total" value="#total + product.gia * quantity" />
				</s:iterator>
			</table>
			<!-- <div class="update-shopping-cart">
				<button class="colors-btn">Update Shopping Cart</button>
			</div> -->
			<div class="shopping-cart-collaterals"></div>
			<div class="shopping-cart-totals">
				<!-- <div class="subtotal-row">
					<div class="left">Subtotal</div>
					<div class="right">$1,000,00</div>
				</div> -->
				<div class="grand-row">
					<div class="left">Total</div>
					<div class="right">
						<s:text name="format.money">
							<s:param value="#total" />
						</s:text>
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="news-letter-container">
			<div class="free-shipping-block">
				<h1>ENJOY FREE SHIPPING</h1>
				<p>on all orders as our holiday gift for you!</p>
			</div>
			<div class="news-letter-block">
				<h2>SIGN UP FOR OUR NEWSLETTER</h2>
				<input type="text" value="Enter email address" title="" /> <input
					class="submit-btn" type="submit" value="Submit" title="Submit" />
			</div>
		</div>
	</div>
</section>
