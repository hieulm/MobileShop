<%@ taglib prefix="s" uri="/struts-tags"%>
<!--Content Block-->
<section class="content-wrapper">
	<div class="content-container container">
		<div class="main">
			<h1 class="page-title">Create an Account</h1>
			<div class="fieldset">
				<h2 class="legend">Personal Information</h2>
				<!-- <ul class="form-list">
					<li class="fields">
						<div class="customer-name">
							<div class="input-box name-firstname">
								<label for="firstname">First Name<em>*</em></label>
								<input type="text" class="required-entry input-text" title="First Name" value="" name="firstname" id="firstname">
							</div>
							<div class="input-box name-lastname">
								<label for="lastname">Last Name<em>*</em></label>
								<input type="text" class="required-entry input-text" title="Last Name" value="" name="lastname" id="lastname">
							</div>
							<div class="clear"></div>
	
	</div>                </li>
					<li>
						
						<div class="input-box">
							<label class="required" for="email_address">Email Address<em>*</em></label>
							<input type="text" class="input-text validate-email required-entry" title="Email Address" value="" id="email_address" name="email">
						</div>
						<div class="clear"></div>
					</li>
					<li class="control">
						<div class="input-box">
							<input type="checkbox" class="checkbox" id="is_subscribed" value="1" title="Sign Up for Newsletter" name="is_subscribed">
							<label for="is_subscribed">Sign Up for Newsletter</label>
						</div>
						<div class="clear"></div>
					</li>
				</ul> -->
				<!-- <h2 class="legend">Login Information</h2>
				<ul class="form-list">
					<li class="fields">
						<div class="customer-name">
							<div class="input-box name-firstname">
								<label for="firstname">Password<em>*</em></label>
								<input type="password" class="required-entry input-text" title="First Name" value="" name="firstname" id="firstname">
							</div>
							<div class="input-box name-lastname">
								<label for="lastname">Confirm Password<em>*</em></label>
								<input type="password" class="required-entry input-text" title="Last Name" value="" name="lastname" id="lastname">
							</div>
							<div class="clear"></div>
						</div>
					</li>
				</ul> -->
				<style>
table {
	border-collapse: collapse;
}

table {
	border: 1px solid black;
}

td {
	padding: 5px;
}
</style>
				<s:form action="dangky" method="post">
					<table>
						<tr>
							<s:textfield name="username" label="Username" size="20" />
						</tr>
						<tr>
							<s:textfield name="email" label="Email" size="20" />
						</tr>
						<%-- <tr>
							<s:textfield label="Reinput email" size="20" />
						</tr> --%>
						<tr>
							<s:textfield name="password" label="Password" size="20" />
						</tr>
						<%-- <tr>
							<s:textfield label="Reinput password" size="20" />
						</tr> --%>
						<tr>
							<s:textfield name="firstname" label="Firstname" size="20" />
						</tr>
						<tr>
							<s:textfield name="lastname" label="Lastname" size="20" />
						</tr>
						<tr>
							<td><input type="submit" value="Register" /></td>
							<td></td>
						</tr>

					</table>
				</s:form>
				<div class="buttons-set">
					<p class="required">* Required Fields</p>
					<a href="account_login.html" title="Back" class="f-left">&laquo;
						Back</a> <a title="Submit" class="colors-btn"><span><span>Submit</span></span></a>
					<div class="clear"></div>
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
					type="submit" value="Submit" title="Submit" />
			</div>
		</div>
	</div>
</section>