<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE html>
<html>
	<head>
	<title>ユーザー検索画面</title>
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/Site.css" />
	<script src="${pageContext.request.contextPath}/js/jquery-1.10.2.min.js" type="text/javascript"></script>

		<style type="text/css">
			.row {
				min-height:35px;
				padding-bottom:3px;
			}

			td {
				border:1px solid #69A4D8;
			}

			.TEXTBOX {
				width:300px;
			}

			.TEXTAREA {
				width:300px;
				height:100px;
				resize:none;
			}

			.PARENTCONTAINER
			{
				width:1000px; /* 白い背景の枠の幅：1000px */
				height:auto; /* 白い背景の枠の高さ：ウィンドウのサイズに合わせる */
				min-height:calc(100% - 58px); /* 白い背景の枠の高さ：ウィンドウのサイズに合わせる */
				margin:0 auto; /* 白い背景の枠の位置：全画面の均等割付 */
				display:block; /* 白い背景の枠の位置：全画面の均等割付 */
				background-color:white; /* 背景色：ホワイト */
			}

			.TOPBAR
			{
				width:100%; /* 幅：全画面 */
				min-width:1000px;
				height:50px; /* 高さ：50px */
				background-color:#5B9BD5; /* 背景色：#5B9BD5 */
				color:white; /* テキスト色：ホワイト */
				font-size:24px; /* フォントサイズ：24px */
				font-weight:bold; /* フォントの太さ：太 */
				text-align:center; /* テキストの位置：トップバーの中央 */
				display:flex; /* テキストの位置：トップバーの中央 */
				justify-content:center; /* テキストの位置：トップバーの中央 */
				align-items:center; /* テキストの位置：トップバーの中央 */
				margin-bottom:8px;/* 白色背景枠との間の幅：8px */
			}

		</style>
	</head>
	<body>
	<div class="TOPBAR">ユーザー検索画面</div>
	<div class="PARENTCONTAINER">
				<div class="container-fluid">
					<!--入力画面-->
					<div class="row">

					<!--検索条件-->
						<div class="col-xs-12 Title">
							検索条件
							<div class="TitleLine"></div>
						</div>
					</div>
					<form id="Form1" method="post" action="Find">
						<!--ユーザーID-->
						<div class="row">
							<div class="col-1"></div>
							<div class="col-3">	ユーザーID</div>
							<div class="col-8">
								<input style="width: 300px;" class="TextBox" name="userId" id="txtユーザーID" type="text" value="">
							</div>
						</div>

						<!--メールアドレス-->
						<div class="row">
							<div class="col-1"></div>
							<div class="col-3">メールアドレス</div>
							<div class="col-8">
								<input style="width: 300px;" class="TextBox" name="email" id="txtメール" type="text" value="">
							</div>
						</div>

						<!--ニックネーム-->
						<div class="row">
							<div class="col-1"></div>
							<div class="col-3">ニックネーム</div>
							<div class="col-8">
								<input style="width: 300px;" class="TextBox" name="nickName" id="txtニックネーム" type="text" value="">
							</div>
						</div>

						<!--氏名-->
						<div class="row">
							<div class="col-1"></div>
							<div class="col-3">氏名</div>
							<div class="col-8">
								<input style="width: 300px;" class="TextBox" name="userName" id="txt氏名" type="text" value="">
							</div>
						</div>

						<!--性別-->
						<div class="row">
							<div class="col-1"></div>
							<div class="col-3">性別</div>
							<div class="col-8">
								<input name="sex"  type="radio" value="1" /><span>男</span>
								<input name="sex"  type="radio" value="2" /><span>女</span>
							 <input type="hidden" name="sex" id="sex">
	                        </div>
						</div>

						<!--生年月日-->
						<div class="row">
							<div class="col-1"></div>
							<div class="col-3">生年月日</div>
							<div class="col-8">
								<!--年-->
								<select class="Select" name="birthday1" id="txt生年">
									<option selected=""></option>
									<option value="2017">2017年</option>
									<option value="2016">2016年</option>
									<option value="2015">2015年</option>
								</select>

								<!--月-->
								<select class="Select" name="birthday2" id="txt生月">
									<option selected=""></option>
									<option value="01">1月</option>
									<option value="02">2月</option>
									<option value="03">3月</option>
									<option value="04">4月</option>
									<option value="05">5月</option>
									<option value="06">6月</option>
									<option value="07">7月</option>
									<option value="08">8月</option>
									<option value="09">9月</option>
									<option value="10">10月</option>
									<option value="11">11月</option>
									<option value="12">12月</option>
								</select>

								<!--日-->
								<select class="Select" name="birthday3" id="txt生日">
									<option selected=""></option>
									<option value="01">1日</option>
									<option value="02">2日</option>
									<option value="03">3日</option>
									<option value="04">4日</option>
									<option value="05">5日</option>
									<option value="06">6日</option>
									<option value="07">7日</option>
									<option value="08">8日</option>
									<option value="09">9日</option>
									<option value="10">10日</option>
									<option value="11">11日</option>
									<option value="12">12日</option>
									<option value="13">13日</option>
									<option value="14">14日</option>
									<option value="15">15日</option>
									<option value="16">16日</option>
									<option value="17">17日</option>
									<option value="18">18日</option>
									<option value="19">19日</option>
									<option value="20">20日</option>
									<option value="21">21日</option>
									<option value="22">22日</option>
									<option value="23">23日</option>
									<option value="24">24日</option>
									<option value="25">25日</option>
									<option value="26">26日</option>
									<option value="27">27日</option>
									<option value="28">28日</option>
									<option value="29">29日</option>
									<option value="30">30日</option>
									<option value="31">31日</option>
								</select>
								<input type="hidden" name="birthday" id="txt生年月日">
							</div>
						</div>

						<!--年齢-->
						<div class="row">
							<div class="col-1"></div>
							<div class="col-3">年齢</div>
							<div class="col-8">
								<input style="width: 75px;" class="TextBox" name="age" id="txt年齢" type="text" value="">
							</div>
						</div>

						<!--電話番号-->
						<div class="row">
							<div class="col-1"></div>
							<div class="col-3">電話番号</div>
							<div class="col-8">
								<input style="width: 200px;" class="TextBox" name="tel" id="txt電話番号" type="text" value="">
							</div>
						</div>

						<!--郵便番号-->
						<div class="row">
							<div class="col-1"></div>
							<div class="col-3">郵便番号</div>
							<div class="col-8">
								<input style="width: 150px;" class="TextBox" name="postcode" id="txt郵便番号" type="text" value="">
							</div>
						</div>

						<!--住所-->
						<div class="row">
							<div class="col-1"></div>
							<div class="col-3">住所</div>
							<div class="col-8">
								<input style="width: 300px;" class="TextBox" name="address" id="txt住所" type="text" value="">
							</div>
						</div>

						<!--入社日-->
						<div class="row">
							<div class="col-1"></div>
							<div class="col-3">入社日</div>
							<div class="col-8">
								<!--年-->
								<select class="Select" name="hireDate1" id="txt入社年">
									<option selected=""></option>
									<option value="2017">2017年</option>
									<option value="2016">2016年</option>
									<option value="2015">2015年</option>
								</select>

								<!--月-->
								<select class="Select" name="hireDate2" id="txt入社月">
									<option selected=""></option>
									<option value="01">1月</option>
									<option value="02">2月</option>
									<option value="03">3月</option>
									<option value="04">4月</option>
									<option value="05">5月</option>
									<option value="06">6月</option>
									<option value="07">7月</option>
									<option value="08">8月</option>
									<option value="09">9月</option>
									<option value="10">10月</option>
									<option value="11">11月</option>
									<option value="12">12月</option>
								</select>

								<!--日-->
								<select class="Select" name="hireDate3" id="txt入社日">
									<option selected=""></option>
									<option value="01">1日</option>
									<option value="02">2日</option>
									<option value="03">3日</option>
									<option value="04">4日</option>
									<option value="05">5日</option>
									<option value="06">6日</option>
									<option value="07">7日</option>
									<option value="08">8日</option>
									<option value="09">9日</option>
									<option value="10">10日</option>
									<option value="11">11日</option>
									<option value="12">12日</option>
									<option value="13">13日</option>
									<option value="14">14日</option>
									<option value="15">15日</option>
									<option value="16">16日</option>
									<option value="17">17日</option>
									<option value="18">18日</option>
									<option value="19">19日</option>
									<option value="20">20日</option>
									<option value="21">21日</option>
									<option value="22">22日</option>
									<option value="23">23日</option>
									<option value="24">24日</option>
									<option value="25">25日</option>
									<option value="26">26日</option>
									<option value="27">27日</option>
									<option value="28">28日</option>
									<option value="29">29日</option>
									<option value="30">30日</option>
									<option value="31">31日</option>
								</select>
								<input type="hidden" name="hireDate" id="txt入社年月日">
							</div>
						</div>

						<!--所属-->
						<div class="row">
							<div class="col-1"></div>
							<div class="col-3">所属</div>
							<div class="col-8">
								<select class="Select" name="affiliation" id="cbx所属">
									<option></option>
									<option>技術部</option>
									<option>営業部</option>
								</select>
							</div>
						</div>

						<!--役職-->
						<div class="row">
							<div class="col-1"></div>
							<div class="col-3">役職</div>
							<div class="col-8">
								<input style="width: 300px;" class="TextBox" name="position" id="txt役職" type="text" value="">
							</div>
						</div>

						<!--趣味-->
						<div class="row">
							<div class="col-1"></div>
							<div class="col-3">趣味</div>
							<div class="col-8">
								<input style="width: 300px;" class="TextBox" name="hobby" id="txt趣味" type="text" value="">
							</div>
						</div>

						<!--特技-->
						<div class="row">
							<div class="col-1"></div>
							<div class="col-3">特技</div>
							<div class="col-8">
								<input style="width: 300px;" class="TextBox" name="specialSkill" id="txt特技" type="text" value="">
							</div>
						</div>

						<!--座右の銘-->
						<div class="row">
							<div class="col-1"></div>
							<div class="col-3">座右銘</div>
							<div class="col-8">
								<textarea style="width: 300px; height:80px;" class="TextArea" name="comment" id="txt座右銘" type="text" rows="2"></textarea>
							</div>
						</div>

						<!--検索・メール送信・申請確認ボタン-->
						<div>
							<table style="margin-bottom: 2px; width: 100%;">
								<tr>
									<td colspan="3" style="width: 100%; border: none;">
										<table style="width: 100%;">
											<tr>
												<td style="width: 500px; text-align: left; border: none;">
													<input type="button" class="Button" name="検索" id="btn検索" value="検索" style="width: 130px;">
												</td>
												<td style="width: 150px; text-align: right; border: none;">
													<input type="button" class="Button" name="メール送信" id="btnメール送信" value="メール送信" style="width: 130px; float: right;">
												</td>
												<td style="width: 150px; text-align: right; border: none;">
													<input type="button" class="Button" name="申請確認" id="btn申請確認" value="申請確認" style="width: 130px; float: right;">
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</div>
					</form>
				</div>
				<div id="container">
				<div id="find-container">
					<!--ユーザー検索画面表-->
					<div class="row">
						<div class="col-12">
						<!-- 
							<table style="border: 2px solid #69A4D8; width: 100%;">

								<tr>
									<td colspan="5" style="width: auto; border-right: none;">
										&nbsp;総件数：
										<span name="総件数" id="txt総件数">
											0
										</span>
										件
									</td>
									<td style="width: 40px; border: none; text-align: right;">
										表示件数：
									</td>
									<td style="border: none;">
										<select class="Select" name="表示件数" id="txt件数" style="width: 200px; float:right;">
											<option value="0">すべて</option>
											<option value="5">5件</option>
											<option value="10">10件</option>
										</select>
									</td>
								</tr>

								<tr style="border-bottom: 2px solid #69A4D8; height: 40px;">
									<td style="width: 6%;" class="TextCenter">選択</td>
									<td style="width: 17%;" class="TextCenter">ユーザーID</td>
									<td style="width: 20%;" class="TextCenter">氏名</td>
									<td style="width: 6%;" class="TextCenter">性別</td>
									<td style="width: 15%;" class="TextCenter">電話番号</td>
									<td style="width: 13%;" class="TextCenter">郵便番号</td>
									<td style="width: *;" class="TextCenter">住所</td>
								</tr>

								<div name="検索結果一覧" id="div検索結果一覧">
									<c:set var="MALE" value="1"/>
									<c:set var="FEMALE" value="2"/>
									<c:if test="${findModel.getAllUserList() != null }">
										<c:set var="i" value="0" scope="request"/>
										<c:forEach var="item" items="${findModel.getAllUserList() }">
											<tr>
												<td class="TextCenter"><input type="checkbox" id="selectUser_${item.getUserId() }"/></td>
												<td>${item.getUserId() }</td>
												<td>${item.getUserName() }</td>
												<td class="TextCenter">
													<c:choose>
														<c:when test="${item.getSex() == MALE }">
															<c:out value="男"/>
														</c:when>
														<c:when test="${item.getSex() == FEMALE }">
															<c:out value="女"/>
														</c:when>
														<c:otherwise>
														</c:otherwise>
													</c:choose>
												</td>
												<td>${item.getTel() }</td>
												<td>${item.getPostcode() }</td>
												<td>${item.getAddress() }</td>
											</tr>
										</c:forEach>
									</c:if>
								</div>
								<tr style="border-top: 2px solid #69A4D8;">
									<td colspan="6" style="border: none;">
									
									</td>
									<td style="border: none; display: block; float: right;">
										<img src="${pageContext.request.contextPath}/img/left_triangle.png" name="前ページ" id="btn前ページ" style="float: left;  width: 30px; margin: 2px;" />
										<select class="Select" name="現ページ" id="txt現ページ" style="width: 50px; margin: 2px;">
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
										</select>
										<img src="${pageContext.request.contextPath}/img/right_triangle.png" name="次ページ" id="btn次ページ" style="float: right; width: 30px; margin: 2px;" />
									</td>
								</tr>
							</table>
							 -->
						</div>
					</div>
				</div>
				<tiles:insertAttribute name="_FindResult" />
			</div>
		</div>
	</body>
	<script type="text/javascript">
	$("#btn検索").click(function () {
		$.ajax({
			url: "${pageContext.request.contextPath}/Find",
			type: "post",
			data: $("#Form1").serialize(),
			success: function (data) {
				$("#container").html(data);
			},
			error:function(){
				alert("システムエラーが発生しました");
			}
		});
	});

    
    $(document).on('change', "[id^='showNumber']", function () { 
        if ($('#totalCount').text() == "0") {
            return;                          
         }
         $.ajax({                             
             url: "${pageContext.request.contextPath}/GetPage",           
             type: "post",                                                
             data: { showNumber:$("#showNumber").val(), currentPage: 1 }, 
             success: function (data) {      
                 $("#container").html(data); 
             },                              
             error: function () {                
                 alert("システムエラーが発生しました");                   
             }     
         });       
    }); 

    $(document).on('change', "[id='currentPage']", function () {
        if ($('#totalCount').text() == "0") {                   
            return;                                             
        } 
        $.ajax({                                                
            url: "${pageContext.request.contextPath}/GetPage",  
            type: "post",                                       
            data: { showNumber:$("#showNumber").val(), currentPage: $('#currentPage').val() },     
            success: function (data) {                            
                $("#container").html(data);                       
            },                                                    
            error: function () {                                  
                alert("システムエラーが発生しました");            
            }                                                     
        });                                                       
    });          
    $(document).on('click', "[id='previousPage']", function () {  
        event.preventDefault();                  
        var selecting = $('#currentPage').val(); 
                                                 
        if (selecting == 1) {                    
            return;                              
        }                                        
                                                 
        $('#currentPage').val(Number(selecting) - 1);             
        $('#nextPage').attr("src", "${pageContext.request.contextPath}/img/right_triangle.png");   
                                                                  
        $.ajax({                                               
            url: "${pageContext.request.contextPath}/GetPage", 
            type: "post",                                      
            data: { showNumber:$("#showNumber").val(), currentPage: (Number(selecting) - 1) },     
            success: function (data) {                        
                $("#container").html(data);                   
            },                                                
            error: function () {                              
                alert("システムエラーが発生しました");        
            } 
        });   
    });       
              
              
    $(document).on('click', "[id='nextPage']", function () {  
        event.preventDefault();                               
        var selecting = $('#currentPage').val();              
        var maxvalue = $('#currentPage option:last-child').val(); 
                                                                  
        if (selecting == maxvalue) {                              
            return;
        }          
                   
        $('#currentPage').val(Number(selecting) + 1);                                                   
        $('#previousPage').attr("src", "${pageContext.request.contextPath}/img/left_triangle.png");  
               
        $.ajax({                                               
            url: "${pageContext.request.contextPath}/GetPage", 
            type: "post",                                      
            data: { showNumber:$("#showNumber").val(), currentPage: (Number(selecting) + 1) },                                                                                                          
            success: function (data) {                  
                $("#container").html(data);             
            },                                          
            error: function () {                        
                alert("システムエラーが発生しました");  
            }                                           
        });                                             
    });  

    function sort(obj) {                      
        if ($('#totalCount').text() == "0") { 
            return;                           
        }                                     
                                              
        var span = $(obj).find("span");       
                                              
        var sortOrder = span.text().trim();   
                                              
        var sortColumn = $(obj).text().replace("▲", "").replace("▼", "").trim();                           

        $("#searchList").find("tr:nth-child(1)  td").each(function () {                                      
                                                                                                             
            $(this).find("span").text("");            
        });                                           
                                                      
        if (sortOrder == "" || sortOrder == "▼") {   
            sortOrder = "▲";                         
        }                                             
        else {                                        
            sortOrder = "▼";                         
        }                                             
                                                      
        $('#previousPage').attr("src", "${pageContext.request.contextPath}/img/left_triangle_disable.png");
        $('#currentPage').val(1);                                                                          
        $('#nextPage').attr("src", "${pageContext.request.contextPath}/img/right_triangle.png");
     
        $.ajax({                                                      
            url: "${pageContext.request.contextPath}/Sort",           
            type: "post",                                             
            data: {  sortColumn: sortColumn,  sortOrder: sortOrder  },
            success: function (data) {                                
                $("#container").html(data);                           
            },                                                        
            error: function () {                                      
                alert("システムエラーが発生しました");                
            }                                                         
        });                                                           
    }                                                                 
     
                                                   
	</script>
</html>