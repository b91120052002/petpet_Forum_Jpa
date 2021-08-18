<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.* "%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- no cache -->
<META HTTP-EQUIV="PRAGMA" CONTENT="NO-CACHE">
<META HTTP-EQUIV="EXPIRES" CONTENT="0">
<META HTTP-EQUIV="CACHE-CONTROL" CONTENT="NO-CACHE">
<!-- no cache -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/backstage/backstage.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/backstage/backstagemevent.css" />
<!-- Bootstrap Table with Search Column Feature -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- JS -->
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<!-- <script src="<c:url value='/js/event/event.js'/>"></script> -->
<style>
.picview {
	max-height: 80px;
}
</style>
<title>BackStage</title>
</head>
<body>
	<!-- 左側版型 -->
	<div class="sidenav">
		<a href="#" id="a_emp">員工管理</a> <a href="#" id="a_member">會員管理</a> <a
			href="#" id="a_product">商品管理</a> <a href="#" id="a_mevent">線上行銷活動管理</a>
		<a href="#" id="a_event">線下活動管理</a> <a href="#" id="a_forum">論壇管理</a>
		<a href="#" id="a_">認養管理</a>
	</div>
	<!-- 右邊上面版型 -->
	<div class="content" align="center">
		<div class="container-fluid">
			<div class="table-responsive">
				<div class="table-wrapper">
					<div class="table-title">
						<div class="row">
							<div class="col-sm-4">
								<h2>
									<b>論壇管理</b>
								</h2>
							</div>
							<div class="col-sm-5">
								<a href="${pageContext.request.contextPath}/BackStageInsert"
									class="btn btn-success"><i class="material-icons">&#xE147;</i>
									<span>新增文章</span></a> <a href="#deleteEmployeeModal"
									class="btn btn-danger"><i class="material-icons">&#xE15C;</i>
									<span>刪除文章</span></a>
							</div>
							<div class="col-sm-3">
								<div class="search-box">
									<div class="input-group">
										<input type="text" id="search" class="form-control"
											placeholder="搜尋活動名稱"> <span class="input-group-addon"><i
											class="material-icons">&#xE8B6;</i></span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 右邊下面表格版型，標題 -->
					<fieldset>
						<div align='center'>
							<h3>發表新文章</h3>
							<form id="form">
								<div align='left'>
									<div class="form-group">

										<label for="textSub">請選子版</label> <select name="textSub"
											class="form-control" id="textSub">
											<option value="貓咪">貓咪</option>
											<option value="狗狗">狗狗</option>
											<option value="其他">其他</option>
											<option value="PET">PET</option>
										</select>
									</div>
									<div class="form-group">
										<label for="textType">請選類型</label> <select name="textType"
											class="form-control" id="textType">
											<option value="問題">問題</option>
											<option value="情報">情報</option>
											<option value="心得">心得</option>
											<option value="討論">討論</option>
										</select>
									</div>

									<div class="form-group">
										<label for="title">文章標題</label> <input type="text"
											name="title" required class="form-control" id="title"
											placeholder="請輸入文章標題">
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
											class="form-control" placeholder="" name="image"
											id="imgupload">
										<p id="error_file" style="color: red;"></p>
									</div>
									<div class="form-group">
										<label class="col-form-label">圖片預覽</label> <img id="demo" />
										<p id="error_file" style="color: red;"></p>
									</div>
								</div>
								<input type="submit" id="submit" class="btn btn-success"
									value="發文" /> <br>
								<div id="success" class="text-center" style="color: green;"></div>
								<div id="error" class="text-center" style="color: red;"></div>
								<br> <a href="<c:url value='/BackStage' />">回首頁</a>
							</form>
						</div>
					</fieldset>
				</div>
			</div>
		</div>
	</div>
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
				var textSub = $("#textSub").val();
				var textType = $("#textType").val();
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


</body>
</html>