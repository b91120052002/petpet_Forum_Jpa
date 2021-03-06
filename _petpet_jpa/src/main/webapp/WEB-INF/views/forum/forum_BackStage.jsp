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
								<a href="${pageContext.request.contextPath}/BackStageInsert" class="btn btn-success"><i class="material-icons">&#xE147;</i>
									<span>新增文章</span></a> 
						    	<a href="#deleteEmployeeModal" class="btn btn-danger"><i class="material-icons">&#xE15C;</i> <span>刪除文章</span></a>
									
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
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th><span class="custom-checkbox"> <input
										type="checkbox" id="selectAll"> <label for="selectAll"></label>
								</span></th>
								<th scope="col">編號</th>
								<th scope="col">帳號</th>
								<th scope="col">標題</th>
								<th scope="col">子版</th>
								<th scope="col">類型</th>
								<th scope="col">內文</th>
								<th scope="col">圖片</th>
								<th scope="col" style="width: 80px;">更新時間</th>
								<th scope="col">修改刪除</th>
							</tr>
						</thead>
						<!-- 右邊下面內容欄位 -->
						<tbody>
							<c:forEach items="${fbs1}" var="fbs" varStatus="s">
								<tr>
									<td>
										<!-- 隱藏的P   EventID用來給Checkbox用來選取刪除用 --> <span
										class="custom-checkbox"> <input type="checkbox"
											id="checkbox<c:out value='${i.index+1}'/>" name="options[]"
											value="<c:out value='${i.index+1}'/>"> <label
											for="checkbox"></label>
											<p style="display: none">${fbs.textId}</p>
									</span>
									</td>
									<td><c:out value="${fbs.textId}" /></td>
									<td><c:set var="forummember" value="${fbs.member}" /> <c:if
											test="${not empty forummember}">
											<c:out value="${forummember.memberid}" />
										</c:if></td>
									<td><a
										href="<c:url value='/BackStageFindById' />?textId=${fbs.textId}">
											${fbs.title} </a></td>
									<td><c:out value="${fbs.textSub}" /></td>
									<td><c:out value="${fbs.textType}" /></td>
									<td><c:out value="${fbs.text}" /></td>
									<td><img class="picview"
										src="${pageContext.request.contextPath}/product/display/${fbs.textId}" /></td>
									<td><fmt:formatDate pattern="yyyy-MM-dd aa HH:mm"
											value='${fbs.textTime}' /></td>
									<td><a
										href='<c:url value='/BackStageFindById' />?textId=${fbs.textId}'
										class="edit" id="update"> <i class="material-icons"
											data-toggle="tooltip" title="修改">&#xE254;</i></a> <a
										href="/petpet/forum/deletebs?textId=${fbs.textId}"
										class="delete" id="delete"><i class="material-icons"
											data-toggle="tooltip" title="刪除">&#xE872;</i></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<script>
//  右側的刪除標籤確認AJAX
 $(document).ready(function() {
    $("#delete").on("click", function() {
        if (confirm("刪除確認")) {
             let  web="/petpet/forum/deletebs?textId=${fbs.textId}"+textId;
             window.location.href=web;
            //$.get( "/petpet/forum/deletebs?textId=${fbs.textId}", function() {
                alert( "刪除成功" );
                location.reload() ;
            ;
        }
        return false;
    })
    
//左上方Checkbox 全選，全不選
    var checkbox = $('table tbody input[type="checkbox"]');
	$("#selectAll").click(function(){
		if(this.checked){
			checkbox.each(function(){
				this.checked = true;                        
			});
		} else{
			checkbox.each(function(){
				this.checked = false;                        
			});
		} 
	});
	checkbox.click(function(){
		if(!this.checked){
			$("#selectAll").prop("checked", false);
		}
	});
// 點選刪除標籤，將ID放到LIST內跑迴圈送出AJAX做批次刪除
    $("a[class='btn btn-danger']").click(function(){
	var ckdlist = [];
		$('tbody input[type="checkbox"]').each(function(){
            if($(this).prop("checked")){
                let id=$(this).next().next().text();
                console.log(id);    
                ckdlist.push(id);
            }
        });
        console.log(ckdlist.toString());
        ckdlist.forEach (id =>
        $.get ("/petpet/forum/deletebs?textId="+id, function() {
                location.reload() ;
            })
        )   
    })
    
})

</script>
</body>
</html>