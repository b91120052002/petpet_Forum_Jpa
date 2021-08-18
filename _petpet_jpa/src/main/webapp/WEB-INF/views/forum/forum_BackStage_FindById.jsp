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
					<script>
function deleteText(textId) {
    if (confirm("これが我が『キング・クリムゾン』の能力！")) {
    	let  web="delete?textId="+textId;
    	window.location.href=web;
    	
    }
    return false;
}
function updateText(textId) {
    if (confirm("コレが………『レクイエム』……………ダ！！")) {
    	
    }
    return false;
}
function updateReply(reply_id) {
    if (confirm("コレが………『レクイエム』……………ダ！！")) {
    	
    }
    return false;
}
</script>
					<h3 align='center'>
						<a href="<c:url value='/BackStage' />">回首頁</a>
					</h3>
					<fieldset>
						<div align='center'>

							<form id="form">
								<input type="hidden" id="textId" name="textId"
									value="${fbs1.textId}" />
								<div align="right">
									<button type="button" id="submit" class="btn btn-success"
										onclick="updateText(${fbs1.textId})">更新</button>
									<input type="button" value="刪除" name="delete"
										class="btn btn-danger" onclick="deleteText(${fbs1.textId})">
								</div>

								<div align='left'>
									<div class="form-group">
										<label for="text_sub">子版</label> <select name="text_sub"
											class="form-control" id="text_sub">
											<option value="${fbs1.text_sub}" selected>${fbs1.text_sub}</option>
											<option value="貓咪">貓咪</option>
											<option value="狗狗">狗狗</option>
											<option value="其他">其他</option>
											<option value="PET">PET</option>
										</select>
									</div>
									<div class="form-group">
										<label for="text_type">類型</label> <select name="text_type"
											class="form-control" id="text_type">
											<option value="${fbs1.text_type}" selected>${fbs1.text_type}</option>
											<option value="問題">問題</option>
											<option value="情報">情報</option>
											<option value="心得">心得</option>
											<option value="討論">討論</option>
										</select>
									</div>
									<div class="form-group">
										<label for="title">文章標題</label> <input type="text"
											name="title" required class="form-control" id="title"
											value="${fbs1.title}">
									</div>

									<div class="form-group">
										<label for="text">文章內容</label>
										<textarea id="text" name="text" required class="form-control"></textarea>
									</div>
									<!-- 圖片 -->
									<div class="col box">
										<img class="picview"
											src="${pageContext.request.contextPath}/product/display/${fbs1.textId}"
											class="image" alt="">
									</div>
									<div class="col box">
										<input type="file" class="form-control" placeholder=""
											name="image" id="imgupload" required="required">
									</div>
									<div class="col box">
										<label class="col-form-label fontsize">圖片預覽</label> <img
											id="demo" />
										<p id="error_file"></p>
									</div>
								</div>
							</form>
							<div align="right">
								<c:set var="forummember" value="${fbs1.member}" />
								<c:if test="${not empty forummember}">
									<span>作者:</span>
									<c:out value="${forummember.memberid}" />
									<br>
								</c:if>
								<fmt:formatDate pattern="MM/dd HH:mm" value="${fbs1.text_time}" />
							</div>
							<div id="message" class="text-center" style="color: green;"></div>
							<!-- 回覆 -->
							<div>
								<form id="repliesform">

									<table id="contentTable"
										class="table table-striped table-condensed ">


										<c:set var="replymember" value="${fbs1.fbR}" />
										<c:if test="${not empty replymember}">
											<c:forEach items="${replymember}" var="replymember"
												varStatus="s">
												<c:set var="replymembername" value="${replymember}" />
												<tr>
													<td>${s.count}樓</td>
													<td>${replymembername.member.memberid}</td>
													<td><input type="text" id="reply_text${s.count}"
														name="replies_text" value="${replymembername.reply_text}" />


													</td>
													<td><fmt:formatDate pattern="MM/dd HH:mm"
															value="${replymembername.reply_date}" /></td>
													<td><input type="hidden" id="reply_id${s.count}"
														name="reply_id" value="${replymembername.reply_id}" />
														<button type="button" id="replydelete_${s.count}"
															class="btn btn-danger">刪除</button></td>
												</tr>
											</c:forEach>
										</c:if>
										<fmt:formatDate pattern="MM/dd HH:mm"
											value="${rps.reply_date}" />
									</table>
								</form>
							</div>
						</div>
					</fieldset>
					<fieldset>
						<div align='left'>
							<form id="repliesf">
								<input type="hidden" id="replytextId" name="textId"
									value="${fbs1.textId}" /> <label for="reply_text">加入討論?</label>
								<textarea id="reply_text" name="reply_text" required
									class="form-control"></textarea>
							</form>
							<div align="right">
								<button type="button" id="replies" class="btn btn-success">送出回覆</button>
							</div>
						</div>
					</fieldset>
				</div>
			</div>
		</div>
	</div>
	<script>
  $("#text").val("${fbs1.text}");
//  $(document).ready(function() {
//    CKEDITOR.replace('text');
//    CKEDITOR.instances["text"].setData("${fbs1.text}");
//  });
  
  // 預覽功能 ，使用FileReader物件 
  $('#imgupload').change(function() {   
	  var file = $('#imgupload')[0].files[0];
	  var reader = new FileReader;
	  reader.onload = function(e) {
	    $('#demo').attr('src', e.target.result);
	  };
	  reader.readAsDataURL(file);
	});

  // AJAX送出新增表單
  $(document).ready(function() {
    $("#submit").on("click", function() {
    	$("#submit").prop("disabled", true);//上傳一次
    	var title       = $("#title").val(); 
    	var text        = $("#text").val(); 
    	var text_sub    = $("#text_sub").val(); 
    	var text_type   = $("#text_type").val(); 
    	var file        = $("#imageupload").val(); 
        var form = $("#form").serialize();
    	var data = new FormData($("#form")[0]);

                    $.ajax({
                        type: 'POST',
                        enctype: 'multipart/form-data',
                        data: data,
                        url: "/petpet/forum/updatefile", 
                        processData: false,  //將原本不是xml時會自動將所發送的data轉成字串(String)的功能關掉
                        contentType: false,  //默认值为contentType = "application/x-www-form-urlencoded".在默认情况下，内容编码类型满足大多数情况。但要上傳檔案，要設為False
                        cache: false,
                        success: function(data, statusText, xhr) {  //	請求成功時執行函式,  前面新增的FormData物件放在第一個 ，第二個我不知道，第三個XMLHttpRequest(XHR) 物件發送
                        console.log(xhr.status);
                        if(xhr.status == "200") {
                            setTimeout( "self.location.reload(); ",1000);  // Reload或轉到其他頁面
							$("#message").html("修改成功");
                         }	   
                        },
                        error: function(e) {
							console.log('錯誤');
							
                            // location.reload();
                        }
                    });
  
            });
        });
	//AJAX送出回覆表單
  $(document).ready(function() {
	    $("#replies").on("click", function() {
	    	$("#replies").prop("disabled", true);//上傳一次
	    	var reply_text       = $("#reply_text").val(); 
	        var repliesf         = $("#repliesf").serialize();
	    	var data = new FormData($("#repliesf")[0]);

	                    $.ajax({
	                        type: 'POST',
	                        enctype: 'multipart/form-data',
	                        data: data,
	                        //塞入controller
	                        url: "/petpet/forum/replies", 
	                        processData: false,  //將原本不是xml時會自動將所發送的data轉成字串(String)的功能關掉
	                        contentType: false,  //默认值为contentType = "application/x-www-form-urlencoded".在默认情况下，内容编码类型满足大多数情况。但要上傳檔案，要設為False
	                        cache: false,
	                        success: function(data, statusText, xhr) {  //	請求成功時執行函式,  前面新增的FormData物件放在第一個 ，第二個我不知道，第三個XMLHttpRequest(XHR) 物件發送
	                        console.log(xhr.status);
	                        if(xhr.status == "200") {
	                            setTimeout( "self.location.reload(); ",1000);  // Reload或轉到其他頁面
								$("#message").html("訊息咧");
	                         }	   
	                        },
	                        error: function(e) {
								console.log('錯誤');
								
	                            // location.reload();
	                        }
	                    });
	  
	            });
	        });

  //刪除
  $(document).ready(function() {
	    $(".btn-danger").on("click", function() {
			var help = $(this).attr("id").split("_")[1];
			console.log(help);
			
	    	$(this).prop("disabled", true);//上傳一次
	    	var reply_id = $("#reply_id"+help).val(); 
			console.log(reply_id);
	    	
	                    $.ajax({
	                        type: 'GET',
	                        //塞入controller
	                        url: "/petpet/forum/deleteR/"+reply_id, 
	                        
	                        processData: false,  //將原本不是xml時會自動將所發送的data轉成字串(String)的功能關掉
	                        contentType: false,  //默认值为contentType = "application/x-www-form-urlencoded".在默认情况下，内容编码类型满足大多数情况。但要上傳檔案，要設為False
	                        cache: true,
	                        success: function(data, statusText, xhr) {  //	請求成功時執行函式,  前面新增的FormData物件放在第一個 ，第二個我不知道，第三個XMLHttpRequest(XHR) 物件發送
	                        console.log(xhr.status);
	                        if(xhr.status == "200") {
	                            setTimeout( "self.location.reload(); ",1000);  // Reload或轉到其他頁面
								$("#message").html("刪除咧");
	                         }	   
	                        },
	                        error: function(e) {
								console.log('錯誤');
								
	                            // location.reload();
	                        }
	                    });
	  
	            });
	        });
</script>

</body>
</html>