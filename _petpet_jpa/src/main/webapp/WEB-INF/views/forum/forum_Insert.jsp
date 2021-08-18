<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.* "%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- 新增開始 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://cdn.ckeditor.com/4.16.1/standard/ckeditor.js"></script>
<!-- 新增結束 -->
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Cache-Control"
	content="no-cache, no-store, must-revalidate" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<title>Shopping Website</title>
<!--stylesheet-->
<link rel="stylesheet" type="text/css" href="css/style.css">
<!--light-slider-css-->
<link rel="stylesheet" type="text/css" href="css/lightslider.css">
<!--jQuery-------->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<!--light-slider-js-->
<script src="js/lightslider.js"></script>

<!--fav-icon------------------->
<link rel="shortcut icon" href="images/fav-icon.ico" />
<!--using-FontAwesome-for-Icons-->
<script src="https://kit.fontawesome.com/c8e4d183c2.js"
	crossorigin="anonymous"></script>

<style>
.test {
	border: red 2px solid;
	text-align: center;
	margin-top: 100px;
	margin-bottom: 100px;
}
</style>
<!-- 新增開始 -->
<style>
.picview {
	max-height: 120px;
}
</style>
<style>
fieldset {
	width: 50%;
	border-radius: 20px;
	border: 1px solid silver;
	margin: auto;
}
</style>
<!-- 新增結束 -->
</head>

<body>
	<!--navigation-------------------------------->
	<nav>
		<!--social-link-and-phont-number-->
		<div class="social-call">
			<!--social-links-->
			<div class="social">
				<a href="#"><i class="fab fa-facebook-f"></i></a> <a href="#"><i
					class="fab fa-twitter"></i></a> <a href="#"><i
					class="fab fa-youtube"></i></a> <a href="#"><i
					class="fab fa-instagram"></i></a>
			</div>
			<!--phone-number-->
			<div class="phone">
				<span>Call +123456789</span>
			</div>
		</div>

		<!--menu-bar-------------------------------------->
		<div class="navigation">
			<!--logo---------->
			<a href="#" class="logo"> <img src="images/PetPetLogo.png" />
			</a>
			<!--menu-icon---------------------->
			<div class="toggle"></div>

			<!--menu----------->
			<ul class="menu">
				<li><a href="#">最新消息</a></li>

				<li><a href="#">商品總覽</a> <!--sale-label--> <span
					class="sale-lable">Sale</span></li>

				<li><a href="#">寵愛認養</a></li>
				<li><a href="#">毛寵大小事</a></li>
				<li><a href="#">會員中心</a></li>
			</ul>
			<!--right-menu------->
			<div class="right-menu">
				<!--search-->
				<a href="javascript:void(0);" class="search"> <i
					class="fas fa-search"></i>
				</a>
				<!--user-->
				<a href="javascript:void(0);" class="user"> <i
					class="fas fa-user"></i>
				</a>
				<!--cart-icon-->
				<a href="#"> <i class="fas fa-shopping-cart"> <!--number-of-product-in-cart-->
						<span class="num-cart-product">0</span>
				</i>
				</a>
			</div>
		</div>
	</nav>
	<!--search-bar------------------------------->
	<div class="search-bar">
		<!--search-input-------->
		<div class="search-input">
			<!--input----->
			<input type="text" placeholder="Search For Product" />
			<!--cancel-btn-->
			<a href="javascript:void(0);" class="search-cancel"> <i
				class="fas fa-times"></i>
			</a>
		</div>
	</div>

	<!--login-and-sign-up-form--------------------->
	<div class="form">
		<!--login-------------------->
		<div class="login-form">
			<!--cancel-btn--------->
			<a href="javascript:void(0);" class="form-cancel"> <i
				class="fas fa-times"></i>
			</a>

			<!--heading---->
			<strong>會員登入</strong>
			<!--inputs-->
			<form>
				<input type="email" placeholder="Example@gmail.com" name="email"
					required> <input type="password" placeholder="Password"
					name="password" required>
				<!--submit-btn-->
				<input type="submit" value="Log In">
			</form>
			<!--forget-and-sign-up-btn-->
			<div class="form-btns">
				<a href="#" class="forget">忘記密碼？</a> <a href="javascript:void(0);"
					class="sign-up-btn">建立帳戶</a>
			</div>

		</div>


		<!--Sign-up-------------------->
		<div class="sign-up-form">
			<!--cancel-btn--------->
			<a href="javascript:void(0);" class="form-cancel"> <i
				class="fas fa-times"></i>
			</a>

			<!--heading---->
			<strong>建立帳戶</strong>
			<!--inputs-->
			<form>
				<input type="email" placeholder="Example@gmail.com" name="email"
					required> <input type="password" placeholder="Password"
					name="password" required> <input type="password"
					placeholder="Confirm Password" name="password" required>
				<!--submit-btn-->
				<input type="submit" value="Sign Up">
			</form>
			<!--forget-and-sign-up-btn-->
			<div class="form-btns">
				<a href="javascript:void(0);" class="already-acount">已經是會員？</a>
			</div>

		</div>

	</div>

	<!----------------------------------------------NEW!!Strat!!-------------------------------------------->
	<fieldset>
		<div align='center'>
			<h3>發表新文章</h3>
			<form id="form">
				<div align='left'>
					<div class="form-group">
						<label for="text_sub">請選子版</label> <select name="text_sub"
							class="form-control" id="text_sub">
							<option value="貓咪">貓咪</option>
							<option value="狗狗">狗狗</option>
							<option value="其他">其他</option>
							<option value="PET">PET</option>
						</select>
					</div>
					<div class="form-group">
						<label for="text_type">請選類型</label> <select name="text_type"
							class="form-control" id="text_type">
							<option value="問題">問題</option>
							<option value="情報">情報</option>
							<option value="心得">心得</option>
							<option value="討論">討論</option>
						</select>
					</div>
					<div class="form-group">
						<label for="title">文章標題</label> <input type="text" name="title"
							required class="form-control" id="title" placeholder="請輸入文章標題">
						<p id="error_title" style="color: red;"></p>
					</div>
					<!-- 文章內容 -->
					<div class="form-group">
						<label for="text">文章內容</label>
						<textarea id="text" name="text" required class="form-control"
							id="text" placeholder="それは、未来を取り戻す物語。"></textarea>
						<p id="error_text" style="color: red;"></p>
					</div>
					<!-- 圖片 -->
					<!-- @請求參數增加:1.image -->
					<div class="form-group">
						<label class="col-form-label">圖片</label> <input type="file"
							class="form-control" placeholder="" name="image" id="imgupload">
						<p id="error_file" style="color: red;"></p>
					</div>
					<div class="form-group">
						<label class="col-form-label">圖片預覽</label> <img id="demo" />
						<p id="error_file" style="color: red;"></p>
					</div>
				</div>
				<input type="submit" id="submit" class="btn btn-success" value="發文" />
				<br>
				<div id="success" class="text-center" style="color: green;"></div>
				<div id="error" class="text-center" style="color: red;"></div>
				<br> <a href="<c:url value='/' />">回首頁</a>
			</form>
		</div>
	</fieldset>
	<script>
		//文字編輯器
		//CKEDITOR.replace('text');

		// 預覽功能
		$('#imgupload').change(function() {
			var file = $('#imgupload')[0].files[0];
			var reader = new FileReader;
			reader.onload = function(e) {
				$('#demo').attr('src', e.target.result);
			};
			reader.readAsDataURL(file);
		});

		// AJAX+錯誤回報
		$(document).ready(function() {

			$("#submit").on("click", function() {
				$("#submit").prop("disabled", true);//上傳一次
				var title = $("#title").val();
				var text = $("#text").val();
				var text_sub = $("#text_sub").val();
				var text_type = $("#text_type").val();
				var file = $("#imageupload").val();
				var form = $("#form").serialize();
				// 利用JS的FormData格式來序列化(serialize) input 當中的 name 與 file ，才可以用AJAX方式進行檔案上傳
				var data = new FormData($("#form")[0]);
				//如果表格內input的四個如果有空的話，顯示下面的CSS格式，把Submit鎖住，Loader藏起來，邊框改為紅色，Error messgae跳出字串
				if (title === "" || text === "") {
					$("#submit").prop("disabled", false);
					$("#title").css("border-color", "red");
					$("#text").css("border-color", "red");
					$("#imgupload").css("border-color", "red");
					$("#error_title").html("必填欄位");
					$("#error_text").html("必填欄位");
				} else {

					//jquery 發送ajax的語法https://ithelp.ithome.com.tw/articles/10226692
					$.ajax({
						type : 'POST',
						enctype : 'multipart/form-data',
						data : data,
						url : "/petpet/forum/uploadfile",
						processData : false, //將原本不是xml時會自動將所發送的data轉成字串(String)的功能關掉
						contentType : false, //默认值为contentType = "application/x-www-form-urlencoded".在默认情况下，内容编码类型满足大多数情况。但要上傳檔案，要設為False
						cache : false,
						success : function(data, statusText, xhr) { //	請求成功時執行函式,  前面新增的FormData物件放在第一個 ，第二個我不知道，第三個XMLHttpRequest(XHR) 物件發送
							console.log(xhr.status);
							if (xhr.status == "200") {
								$("#form")[0].reset();
								$('#success').css('display', 'block');
								$("#error").text("");
								$("#success").html("新增完成"); //錯誤訊息
								$('#success').delay(5000).fadeOut('slow');
								// setTimeout( "self.location.reload(); ",5000);  // Reload或轉到其他頁面
							}
						},
						error : function(e) {
							$('#error').css('display', 'block');
							$("#error").html("Oops! something went wrong.");
							$('#error').delay(5000).fadeOut('slow');
						}
					});
				}
			});
		});
	</script>

	<!--services--------------------------------------------->
	<section class="services">
		<!--service-box-1-------------------->
		<div class="services-box">
			<i class="fas fa-shipping-fast"></i> <span>免運費</span>
			<p>額滿即享免運費</p>
		</div>

		<!--service-box-2-------------------->
		<div class="services-box">
			<i class="fas fa-headphones-alt"></i> <span>24小時客服</span>
			<p>提供即時在線服務</p>
		</div>

		<!--service-box-3-------------------->
		<div class="services-box">
			<i class="fas fa-sync"></i> <span>鑑賞期內 100%退款</span>
			<p>購回一周內若不滿意，享全額退款</p>
		</div>
	</section>

	<!--footer--------------------------------------->
	<footer>
		<!--copyright----------------->
		<span class="copyright"> Copyright 2021 - EEIT31全端工程師課程第7組 </span>
		<!--subscribe--->
		<div class="subscribe">
			<form>
				<input type="email" placeholder="Example@gmail.com" required /> <input
					type="submit" value="Subscribe">
			</form>
		</div>
	</footer>















	<!--script-------->
	<script type="text/javascript">
		/*----For Search bar---------------------*/
		$(document).on('click', '.search', function() {
			$('.search-bar').addClass('search-bar-active')
		});

		$(document).on('click', '.search-cancel', function() {
			$('.search-bar').removeClass('search-bar-active')
		});

		/*--login-sign-up-form-----------------*/
		$(document).on('click', '.user,.already-acount', function() {
			$('.form').addClass('login-active').removeClass('sign-up-active')
		});

		$(document).on('click', '.sign-up-btn', function() {
			$('.form').addClass('sign-up-active').removeClass('login-active')
		});

		$(document).on(
				'click',
				'.form-cancel',
				function() {
					$('.form').removeClass('login-active').removeClass(
							'sign-up-active')
				});

		/*---full-slider-script--------------*/
		$(document).ready(function() {
			$('#adaptive').lightSlider({
				adaptiveHeight : true,
				auto : true,
				item : 1,
				slideMargin : 0,
				loop : true
			});
		});
		/*--Feature-slider--------------------*/
		$(document).ready(function() {
			$('#autoWidth').lightSlider({
				autoWidth : true,
				loop : true,
				onSliderLoad : function() {
					$('#autoWidth').removeClass('cS-hidden');
				}
			});
		});

		/*----for-fix-menu-when-scroll----------------------*/
		$(window).scroll(function() {
			if ($(document).scrollTop() > 50) {
				$('.navigation').addClass('fix-nav');
			} else {
				$('.navigation').removeClass('fix-nav');
			}
		})
		/*--for-responsive-menu-----------------*/
		$(document).ready(function() {
			$('.toggle').click(function() {
				$('.toggle').toggleClass('active')
				$('.navigation').toggleClass('active')
			})
		})
	</script>
</body>

</html>