<%@ taglib prefix="s" uri="/struts-tags"%>
<!--Content Block-->
<section class="content-wrapper">
	<div class="content-container container">
		<div class="main">
			<h1 class="page-title">Login or Create an Account</h1>
			<div class="account-login">
				<div class="col-1 new-users">
					<div class="content">
						<h2>New Customers</h2>
						<p>By creating an account with our store, you will be able to
							move through the checkout process faster, store multiple shipping
							addresses, view and track your orders in your account and more.</p>
					</div>
					<div class="buttons-set">
						<a class="colors-btn" title="Create an Account" href="dangky_form"><span><span>Create
									an Account</span></span></a>
						<div class="clear"></div>
					</div>
				</div>
				<div class="col-2 registered-users">
					<div class="content">
						<h2>Registered Customers</h2>
						<p>If you have an account with us, please log in.</p>
						<ul class="form-list">
							<!-- <li>
								<label class="required" for="email">Email Address<em>*</em></label>
								<div class="input-box">
									<input type="text" id="email" title="Email Address" class="input-text required-entry validate-email" value="" />
								</div>
								<div class="clear"></div>
							</li>
							<li>
								<label class="required" for="pass">Password<em>*</em></label>
								<div class="input-box">
									<input type="password" id="password" title="Password" class="input-text required-entry validate-password" />
								</div>
								<div class="clear"></div>
							</li> -->
						</ul>
						<form action="${pageContext.request.contextPath}/dangnhap" method="post">
						<table>
							<tr>
								<td><label>Email : </label></td>
								<td><input type="text" name="email"><br/></td>
							</tr>
							<tr>
								<td><label>Password : </label></td>
								<td><input type="password" name="matkhau"><br/></td>
							</tr>
							<tr>
								<td><input type="submit" value="Login"/></td>
								<td></td>
							</tr>
							
						</table>
						</form>
						<p class="required">* Required Fields</p>
					</div>
					<div class="buttons-set">
						<a class="f-left" href="#">Forgot Your Password?</a>
						<%-- <a class="colors-btn"  title="Login" id="login_btn"><span><span>Login</span></span></a> --%>
						<div class="clear"></div>
					</div>
            	</div>
				<div class="clear"></div>
			</div>
		</div>
		<!-- <div class="clearfix"></div>
		<div class="news-letter-container">
			<div class="free-shipping-block">
				<h1>ENJOY FREE SHIPPING</h1>
				<p>on all orders as our holiday gift for you!</p>
			</div>
			<div class="news-letter-block">
				<h2>SIGN UP FOR OUR NEWSLETTER</h2>
				<input type="text" value="Enter email address" title="" /> <input
					type="submit" value="Submit" title="Submit" />
			</div>
		</div> -->

	</div>
</section>