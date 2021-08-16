<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.* "%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html>
<html lang="en">
<head>
<!-- 新增開始 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<!-- 新增結束 -->
<meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="0" />
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
    <script src="https://kit.fontawesome.com/c8e4d183c2.js" crossorigin="anonymous"></script>

    <style>
        .test{
            border: red 2px solid;
            text-align: center;
            margin-top: 100px;
            margin-bottom: 100px;
        }
    </style>
    <!-- 新增開始 -->
    <style type="text/css">
		#contentTable{
			table-layout:fixed; /* bootstrap-table設定colmuns中某列的寬度無效時，需要給整個表設定css屬性 */
			word-break:break-all; word-wrap:break-all; /* 自動換行 */
		}
	</style>
	<style>
		.picview{
    	max-height:80px;
		}
	</style>
	<style>
	 fieldset{
            width: 50%;
            border-radius: 20px;
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
                <a href="#"><i class="fab fa-facebook-f"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="#"><i class="fab fa-youtube"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
            </div>
            <!--phone-number-->
            <div class="phone">
                <span>Call +123456789</span>
            </div>
        </div>

        <!--menu-bar-------------------------------------->
        <div class="navigation">
            <!--logo---------->
            <a href="#" class="logo">
                <img src="images/PetPetLogo.png" />
            </a>
            <!--menu-icon---------------------->
            <div class="toggle"></div>

            <!--menu----------->
            <ul class="menu">
                <li><a href="#">最新消息</a></li>

                <li><a href="#">商品總覽</a>
                    <!--sale-label-->
                    <span class="sale-lable">Sale</span>
                </li>

                <li><a href="#">寵愛認養</a></li>
                <li><a href="#">毛寵大小事</a></li>
                <li><a href="#">會員中心</a></li>
            </ul>
            <!--right-menu------->
            <div class="right-menu">
                <!--search-->
                <a href="javascript:void(0);" class="search">
                    <i class="fas fa-search"></i>
                </a>
                <!--user-->
                <a href="javascript:void(0);" class="user">
                    <i class="fas fa-user"></i>
                </a>
                <!--cart-icon-->
                <a href="#">
                    <i class="fas fa-shopping-cart">
                        <!--number-of-product-in-cart-->
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
            <a href="javascript:void(0);" class="search-cancel">
                <i class="fas fa-times"></i>
            </a>
        </div>
    </div>

    <!--login-and-sign-up-form--------------------->
    <div class="form">
        <!--login-------------------->
        <div class="login-form">
            <!--cancel-btn--------->
            <a href="javascript:void(0);" class="form-cancel">
                <i class="fas fa-times"></i>
            </a>

            <!--heading---->
            <strong>會員登入</strong>
            <!--inputs-->
            <form>
                <input type="email" placeholder="Example@gmail.com" name="email" required>
                <input type="password" placeholder="Password" name="password" required>
                <!--submit-btn-->
                <input type="submit" value="Log In">
            </form>
            <!--forget-and-sign-up-btn-->
            <div class="form-btns">
                <a href="#" class="forget">忘記密碼？</a>
                <a href="javascript:void(0);" class="sign-up-btn">建立帳戶</a>
            </div>

        </div>


        <!--Sign-up-------------------->
        <div class="sign-up-form">
            <!--cancel-btn--------->
            <a href="javascript:void(0);" class="form-cancel">
                <i class="fas fa-times"></i>
            </a>

            <!--heading---->
            <strong>建立帳戶</strong>
            <!--inputs-->
            <form>
                <input type="email" placeholder="Example@gmail.com" name="email" required>
                <input type="password" placeholder="Password" name="password" required>
                <input type="password" placeholder="Confirm Password" name="password" required>
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

<table id="contentTable" class="table table-striped table-condensed ">
<thead>
 
<tr align='right'>
<th scope="col" style="width:80px;"></th>
<th scope="col" style="width:80px;"></th>
<th scope="col" style="width:160px;"></th>
<th scope="col" style="width:80px;"><a style="color:red" href="<c:url value='/Insert'  />"><input type="submit" id="submit" class="btn btn-success" value="發文" /></a></th>
</tr>

</thead>
<c:forEach var='fb' items='${fbs1}'>
<tbody>
<tr>
<th scope="row">${fb.text_sub}/${fb.text_type}</th>
<td><a href="<c:url value='/FindById' />?text_id=${fb.text_id}"><img class="picview" src="${pageContext.request.contextPath}/product/display/${fb.text_id}" /></a></td>
<td><div><a href="<c:url value='/FindById' />?text_id=${fb.text_id}"> ${fb.title}</a></div><p>${fb.text}</p></td>
<td><fmt:formatDate pattern="MM/dd HH:mm" value="${fb.text_time}" /><br>
							<c:set var="eventmember" value="${fb.member}" />
                            <c:if test="${not empty eventmember}">
                            <c:out value="${eventmember.memberid}" />
                                
                               <!-- 利用C:set撈出EL資料，迴圈撈出活動參加人員，Test檢驗是否有參加會員 -->
                            </c:if> </td>
</tr>
</tbody>     
</c:forEach>
</table>
<hr>
</div>
</fieldset>



<!--services--------------------------------------------->
    <section class="services">
        <!--service-box-1-------------------->
        <div class="services-box">
            <i class="fas fa-shipping-fast"></i>
            <span>免運費</span>
            <p>額滿即享免運費</p>
        </div>

        <!--service-box-2-------------------->
        <div class="services-box">
            <i class="fas fa-headphones-alt"></i>
            <span>24小時客服</span>
            <p>提供即時在線服務</p>
        </div>

        <!--service-box-3-------------------->
        <div class="services-box">
            <i class="fas fa-sync"></i>
            <span>鑑賞期內 100%退款</span>
            <p>購回一周內若不滿意，享全額退款</p>
        </div>
    </section>

<!--footer--------------------------------------->
    <footer>
        <!--copyright----------------->
        <span class="copyright">
            Copyright 2021 - EEIT31全端工程師課程第7組
        </span>
        <!--subscribe--->
        <div class="subscribe">
            <form>
                <input type="email" placeholder="Example@gmail.com" required/>
                <input type="submit" value="Subscribe">
            </form>
        </div>
    </footer>















    <!--script-------->
    <script type="text/javascript">

        /*----For Search bar---------------------*/
        $(document).on('click', '.search', function () {
            $('.search-bar').addClass('search-bar-active')
        });

        $(document).on('click', '.search-cancel', function () {
            $('.search-bar').removeClass('search-bar-active')
        });

        /*--login-sign-up-form-----------------*/
        $(document).on('click', '.user,.already-acount', function () {
            $('.form').addClass('login-active').removeClass('sign-up-active')
        });

        $(document).on('click', '.sign-up-btn', function () {
            $('.form').addClass('sign-up-active').removeClass('login-active')
        });

        $(document).on('click', '.form-cancel', function () {
            $('.form').removeClass('login-active').removeClass('sign-up-active')
        });

        /*---full-slider-script--------------*/
        $(document).ready(function () {
            $('#adaptive').lightSlider({
                adaptiveHeight: true,
                auto: true,
                item: 1,
                slideMargin: 0,
                loop: true
            });
        });
        /*--Feature-slider--------------------*/
        $(document).ready(function() {
        $('#autoWidth').lightSlider({
        autoWidth:true,
        loop:true,
        onSliderLoad: function() {
            $('#autoWidth').removeClass('cS-hidden');
        } 
    });  
  });

  /*----for-fix-menu-when-scroll----------------------*/
  $(window).scroll(function(){
      if($(document).scrollTop() > 50){
          $('.navigation').addClass('fix-nav');
      }
      else{
        $('.navigation').removeClass('fix-nav');
      }
  })
  /*--for-responsive-menu-----------------*/
  $(document).ready(function(){
      $('.toggle').click(function(){
          $('.toggle').toggleClass('active')
          $('.navigation').toggleClass('active')
      })
  })

    </script>
</body>

</html>