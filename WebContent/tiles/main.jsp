<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page import="com.hieulm.util.*,com.hieulm.model.BO.*,java.util.*"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<div class="main">


	<div class="product-info-box">
		<div class="product-essential">
			<div class="product-img-box">
				<p class="product-image-zoom">
					<img src=<s:property value="%{dienthoai.hinhdaidien.duongdan}"/>
						alt="Image" title="Image" />
				</p>
				<!-- <p>Click on above image to view full picture</p> -->
				<div class="img-slider">
					<a href="#" title="Prev" class="prev slider-btn"><img
						src="images/prev_img_btn.png" title="Prev" alt="Prev" /></a> <a
						href="#" title="Next" class="next slider-btn"><img
						src="images/next_img_btn.png" title="Next" alt="Next" /></a>
					<!-- hiển thị hình ảnh về sản phẩm -->
					<%-- <ul id="moreView">
						<s:iterator value="dienthoai.hinhanhsp">
							<li><a class="ajax" href=<s:property value="duongdan"/>><img
									src=<s:property value="duongdan"/> alt="" title="" /></a></li>
						</s:iterator>
						<!-- <li><a class="ajax" href="images/view_img.png"><img
								src="images/small_img.png" alt="" title="" /></a></li>
						<li><a class="ajax" href="images/view_img.png"><img
								src="images/small_img.png" alt="" title="" /></a></li>
						<li><a class="ajax" href="images/view_img.png"><img
								src="images/small_img.png" alt="" title="" /></a></li>
						<li><a class="ajax" href="images/view_img.png"><img
								src="images/small_img.png" alt="" title="" /></a></li>
						<li><a class="ajax" href="images/view_img.png"><img
								src="images/small_img.png" alt="" title="" /></a></li>
						<li><a class="ajax" href="images/view_img.png"><img
								src="images/small_img.png" alt="" title="" /></a></li> -->
					</ul> --%>

					<div id="sliderFrame">
						<div id="slider">
							<s:iterator value="dienthoai.hinhanhsp">
								<a class="lazyImage" href=<s:property value="duongdan"/>></a>
								
							</s:iterator>

						</div>
					</div>

					<%-- <div id="msg_slideshow" class="msg_slideshow">
						<div id="msg_wrapper" class="msg_wrapper"></div>
						<div id="msg_controls" class="msg_controls">
							<!-- right has to animate to 15px, default -110px -->
							<a href="#" id="msg_grid" class="msg_grid"></a> <a href="#"
								id="msg_prev" class="msg_prev"></a> <a href="#"
								id="msg_pause_play" class="msg_pause"></a>
							<!-- has to change to msg_play if paused-->
							<a href="#" id="msg_next" class="msg_next"></a>
						</div>
						<div id="msg_thumbs" class="msg_thumbs">
							<!-- top has to animate to 0px, default -230px -->
							<div class="msg_thumb_wrapper">
								<a href="#"><img src="images/thumbs/1.jpg"
									alt="images/1.jpg" /></a> <a href="#"><img
									src="images/thumbs/2.jpg" alt="images/2.jpg" /></a> <a href="#"><img
									src="images/thumbs/3.jpg" alt="images/3.jpg" /></a> <a href="#"><img
									src="images/thumbs/4.jpg" alt="images/4.jpg" /></a> <a href="#"><img
									src="images/thumbs/5.jpg" alt="images/5.jpg" /></a> <a href="#"><img
									src="images/thumbs/6.jpg" alt="images/6.jpg" /></a>
							</div>
							<div class="msg_thumb_wrapper" style="display: none;">
								<a href="#"><img src="images/thumbs/7.jpg"
									alt="images/7.jpg" /></a> <a href="#"><img
									src="images/thumbs/8.jpg" alt="images/8.jpg" /></a> <a href="#"><img
									src="images/thumbs/9.jpg" alt="images/9.jpg" /></a> <a href="#"><img
									src="images/thumbs/10.jpg" alt="images/10.jpg" /></a> <a href="#"><img
									src="images/thumbs/11.jpg" alt="images/11.jpg" /></a> <a href="#"><img
									src="images/thumbs/12.jpg" alt="images/12.jpg" /></a>
							</div>
							<a href="#" id="msg_thumb_next" class="msg_thumb_next"></a> <a
								href="#" id="msg_thumb_prev" class="msg_thumb_prev"></a> <a
								href="#" id="msg_thumb_close" class="msg_thumb_close"></a> <span
								class="msg_loading"></span>
							<!-- show when next thumb wrapper loading -->
						</div>
					</div> --%>
				</div>
			</div>
			<!-- hiện tên sản phẩm -->
			<div class="product-shop">
				<h3 class="product-name">
					<s:property value="%{dienthoai.tendienthoai}" />
				</h3>
				<div class="price-box">
					<span class="price"> <s:text name="format.money">
							<s:param value="%{dienthoai.gia}"></s:param>
						</s:text></span> <span class="availability">In stock</span>
				</div>
				<div class="model-block">
					<p>
						<span>SKU: </span>
						<s:property value="%{dienthoai.madienthoai}" />
					</p>
					<p>
						<span>BRANDS: </span>
						<s:property value="%{dienthoai.hangsx.tenhangsx}" />
					</p>
				</div>
				<!-- <div class="first-review">Be the first to review this product
				</div> -->
				<%-- <div class="color-size-block">
					<div class="label-row">
						<label><em>*</em> color</label> <span class="required">*
							Required Fields</span>
					</div>
					<div class="select-row">
						<select><option>-- Please Select --</option></select>
					</div>
					<div class="label-row">
						<label><em>*</em> size</label>
					</div>
					<div class="select-row">
						<select><option>-- Please Select --</option></select>
					</div>
				</div> --%>
				<div class="add-to-cart-box">
					<span class="qty-box"> <label for="qty">Qty:</label> <a
						href="javascript:void(0)" title="" class="prev add"><img
							src="images/qty_prev.png" title="" alt="add" />‹</a> <input
						type="text" value="1" maxlength="12" id="qty"
						class="input-text qty" name="qty"> <a
						href="javascript:void(0)" title="" class="next dec add"><img
							src="images/qty_next.png" title="" alt="" />›</a>
					</span>
					<script type="text/javascript">
						jQuery(document).ready(function() {
							jQuery(".ajax").colorbox();
						});
						jQuery(function() {
							jQuery(".add")
									.click(
											function() {
												var jQueryadd = jQuery(this);
												var oldValue = jQueryadd
														.parent().find("input")
														.val();
												var newVal = 0;

												if (jQueryadd.text() == "›") {
													newVal = parseFloat(oldValue) + 1;
													// AJAX save would go here
												} else {
													// Don't allow decrementing below zero
													if (oldValue >= 1) {
														newVal = parseFloat(oldValue) - 1;
														// AJAX save would go here
													}
													if (oldValue == 0) {
														newVal = parseFloat(oldValue);
													}
												}
												jQueryadd.parent()
														.find("input").val(
																newVal);
											});

						});
					</script>
					<button class="form-button" title="Add to Cart">
						<span>Add to Cart</span>
					</button>
					<!-- <ul class="add-to-box">
						<li><a href="#" title="Add to Wishlist" class="add-wishlist">Add
								to Wishlist</a></li>
						<li><a href="#" title="Add to Compare" class="add-compare">Add
								to Compare</a></li>
						<li><a href="#" title="Email to a Friend"
							class="email-friend">Email to a Friend</a></li>
						<li class="last"><a href="images/size_chart.gif"
							title="Size Guide" class="size-guide ajax">Size Guide</a></li>
					</ul> -->
				</div>
			</div>
		</div>
	</div>
	<!-- <aside class="right">
		<ol class="pro-slider-btn">
			<li><a href="#" title="Prev"><img
					src="images/pro_prev_btn.png" title="Prev" alt="Prev" /></a></li>
			<li><a href="#" title="Next"><img
					src="images/pro_next_btn.png" title="Next" alt="Next" /></a></li>
		</ol>
		<ul class="right-img">
			<li><a href="#" title="Image"><img
					src="images/view_right_img01.png" title="Image" alt="Image" /></a></li>
			<li><a href="#" title="Image"><img
					src="images/view_right_img02.png" title="Image" alt="Image" /></a></li>
			<li><a href="#" title="Image"><img
					src="images/view_right_img03.png" title="Image" alt="Image" /></a></li>
		</ul>
	</aside> -->
	<section class="product-collateral">
		<script type="text/javascript">
			$(function() {
				var tabContainers = $('section.product-collateral > div.commonContent');
				tabContainers.hide().filter(':first').show();
				$('section.product-collateral ul.tab-block a').click(
						function() {
							tabContainers.hide();
							tabContainers.filter(this.hash).show();
							$('section.product-collateral ul.tab-block a')
									.removeClass('active');
							$(this).addClass('active');
							return false;
						}).filter(':first').click();
			});
		</script>
		<ul class="tab-block">
			<li><a href="#pro-detail" title="Description" class="active">Description</a></li>
			<li><a href="#pro-review" title="Reviews">Reviews</a></li>
			<li><a href="#pro-tags" title="Product Tags">Product Tags</a></li>
			<li class="video-box"><a href="#pro-video" title="Video Box">Video
					Box</a></li>
		</ul>
		<div id="pro-detail" class="pro-detail commonContent">
			<ul>
				<li id="general"></li>
				<li>Screen</li>
				<li>Sound</li>
				<li>Memory</li>
				<li>Connection</li>
				<li>Camera</li>
				<li>Features</li>
				<li>Pin</li>
			</ul>
			<script type="text/javascript">
				var detail = '<s:property value="%{dienthoai.hangsx.tenhangsx}"/>';
				var tmp = {"var1":"Nothing Here"}
				document.getElementById("general").innerHTML = detail["var1"];
			</script>

		</div>

		<div id="pro-review" class="pro-detail commonContent">
			
		</div>

		<div id="pro-tags" class="pro-detail commonContent">
		</div>
		<div id="pro-video" class="pro-detail commonContent">
		</div>




	</section>
	<!-- chưa được triển khai -->
	<!-- <div class="like-pro-block">
		<div class="title-block">
			<h2>You may also like</h2>
		</div>
		<div class="like-pro">
			<ul id="like-pro" class="product-grid">
				<li>
					<div class="pro-img">
						<img title="Freature Product" alt="Freature Product"
							src="images/default_img.png" />
					</div>
					<div class="pro-detail-block">
						<h4 class="pro-name">Sunglass RB3186</h4>
						<div class="pro-price">$600.00</div>
					</div>
				</li>
				<li>
					<div class="pro-img">
						<img title="Freature Product" alt="Freature Product"
							src="images/default_img.png" />
					</div>
					<div class="pro-detail-block">
						<h4 class="pro-name">Sunglass RB3186</h4>
						<div class="pro-price">$600.00</div>
					</div>
				</li>
				<li>
					<div class="pro-img">
						<img title="Freature Product" alt="Freature Product"
							src="images/default_img.png" />
					</div>
					<div class="pro-detail-block">
						<h4 class="pro-name">Sunglass RB3186</h4>
						<div class="pro-price">$600.00</div>
					</div>
				</li>
				<li>
					<div class="pro-img">
						<img title="Freature Product" alt="Freature Product"
							src="images/default_img.png" />
					</div>
					<div class="pro-detail-block">
						<h4 class="pro-name">Sunglass RB3186</h4>
						<div class="pro-price">$600.00</div>
					</div>
				</li>
				<li>
					<div class="pro-img">
						<img title="Freature Product" alt="Freature Product"
							src="images/default_img.png" />
					</div>
					<div class="pro-detail-block">
						<h4 class="pro-name">Sunglass RB3186</h4>
						<div class="pro-price">$600.00</div>
					</div>
				</li>
				<li>
					<div class="pro-img">
						<img title="Freature Product" alt="Freature Product"
							src="images/default_img.png" />
					</div>
					<div class="pro-detail-block">
						<h4 class="pro-name">Sunglass RB3186</h4>
						<div class="pro-price">$600.00</div>
					</div>
				</li>
				<li>
					<div class="pro-img">
						<img title="Freature Product" alt="Freature Product"
							src="images/default_img.png" />
					</div>
					<div class="pro-detail-block">
						<h4 class="pro-name">Sunglass RB3186</h4>
						<div class="pro-price">$600.00</div>
					</div>
				</li>
				<li>
					<div class="pro-img">
						<img title="Freature Product" alt="Freature Product"
							src="images/default_img.png" />
					</div>
					<div class="pro-detail-block">
						<h4 class="pro-name">Sunglass RB3186</h4>
						<div class="pro-price">$600.00</div>
					</div>
				</li>
				<li>
					<div class="pro-img">
						<img title="Freature Product" alt="Freature Product"
							src="images/default_img.png" />
					</div>
					<div class="pro-detail-block">
						<h4 class="pro-name">Sunglass RB3186</h4>
						<div class="pro-price">$600.00</div>
					</div>
				</li>
			</ul>
		</div>
	</div> -->
	<!-- Sản phẩm liên quan chưa được triển khai-->
	<!-- <div class="related-pro-block">
		<div class="title-block">
			<h2>Related Products</h2>
		</div>
		<div class="related-pro">
			<ul id="related-pro" class="product-grid">
				<li>
					<div class="pro-img">
						<img title="Freature Product" alt="Freature Product"
							src="images/default_img.png" />
					</div>
					<div class="pro-detail-block">
						<h4 class="pro-name">Sunglass RB3186</h4>
						<div class="pro-price">$600.00</div>
					</div>
				</li>
				<li>
					<div class="pro-img">
						<img title="Freature Product" alt="Freature Product"
							src="images/default_img.png" />
					</div>
					<div class="pro-detail-block">
						<h4 class="pro-name">Sunglass RB3186</h4>
						<div class="pro-price">$600.00</div>
					</div>
				</li>
				<li>
					<div class="pro-img">
						<img title="Freature Product" alt="Freature Product"
							src="images/default_img.png" />
					</div>
					<div class="pro-detail-block">
						<h4 class="pro-name">Sunglass RB3186</h4>
						<div class="pro-price">$600.00</div>
					</div>
				</li>
				<li>
					<div class="pro-img">
						<img title="Freature Product" alt="Freature Product"
							src="images/default_img.png" />
					</div>
					<div class="pro-detail-block">
						<h4 class="pro-name">Sunglass RB3186</h4>
						<div class="pro-price">$600.00</div>
					</div>
				</li>
				<li>
					<div class="pro-img">
						<img title="Freature Product" alt="Freature Product"
							src="images/default_img.png" />
					</div>
					<div class="pro-detail-block">
						<h4 class="pro-name">Sunglass RB3186</h4>
						<div class="pro-price">$600.00</div>
					</div>
				</li>
				<li>
					<div class="pro-img">
						<img title="Freature Product" alt="Freature Product"
							src="images/default_img.png" />
					</div>
					<div class="pro-detail-block">
						<h4 class="pro-name">Sunglass RB3186</h4>
						<div class="pro-price">$600.00</div>
					</div>
				</li>
				<li>
					<div class="pro-img">
						<img title="Freature Product" alt="Freature Product"
							src="images/default_img.png" />
					</div>
					<div class="pro-detail-block">
						<h4 class="pro-name">Sunglass RB3186</h4>
						<div class="pro-price">$600.00</div>
					</div>
				</li>
				<li>
					<div class="pro-img">
						<img title="Freature Product" alt="Freature Product"
							src="images/default_img.png" />
					</div>
					<div class="pro-detail-block">
						<h4 class="pro-name">Sunglass RB3186</h4>
						<div class="pro-price">$600.00</div>
					</div>
				</li>
				<li>
					<div class="pro-img">
						<img title="Freature Product" alt="Freature Product"
							src="images/default_img.png" />
					</div>
					<div class="pro-detail-block">
						<h4 class="pro-name">Sunglass RB3186</h4>
						<div class="pro-price">$600.00</div>
					</div>
				</li>
			</ul>
		</div>
	</div> -->
</div>