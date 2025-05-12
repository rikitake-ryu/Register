<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
	<head>
		<title>検索画面</title>
			<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" />
			<link type="text/css" rel="new stylesheet" href="${pageContext.request.contextPath}/css/Site.css"/>
			<script src="${pageContext.request.contextPath}/js/jquery-1.10.2.min.js" type="text/javascript"></script>
		<style>
			* {
				font-family:'MS Mincho','MS PMincho','MS Gothic','MS PGothic', Arial, Helvetica, sans-serif;
			}
			body, html {
			    height:100%;
			    background-color:#e9ebee;
			}
			body {
				height:auto;
			    margin:8px;
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
			.TITLE
			{
			    font-size:24px;
			    font-weight:bold;
			}
			.TEXTBOX
			{
			    color:#494949;
			    border:1px solid #69A4D8;
			    border-radius:5px;
			    height:30px;
			    font-size:18px;
			    padding-left:5px;
			    padding-right:5px;
			}
			.TEXTAREA
			{
			    color:#494949;
			    border:1px solid #69A4D8;
			    border-radius:5px;
			    font-size:18px;
			    padding-left:5px;
			    padding-right:5px;
			    resize:none;
			}
			.BUTTON
			{
			    background-color:#5B9BD5;
			    color:white;
			    border:1px solid #43729D;
			    border-radius:5px;
			    height:36px;
			    font-size:18px;
			    font-weight:bold;
			}
			.BUTTONDISABLE {
			    background-color:#dddddd;
			    color:white;
			    border:1px solid #cccccc;
			    border-radius:5px;
			    height:36px;
			    font-size:18px;
			    font-weight:bold;
			}
			.BUTTONDISABLE:hover {
			    cursor:pointer;
			}
			.LABEL {
			    color:#494949;
			    font-size:18px;
			    text-align:left;
			}
			.SELECT {
			    color:#494949;
			    border:1px solid #69A4D8;
			    border-radius:5px;
			    height:30px;
			    font-size:18px;
			}
			.TITLELINE {
			    border-bottom:3px solid #5B9BD5;
			    width:100%;
			    margin-top:5px;
			    margin-bottom:5px;
			}
			.TEXTBOX:focus, .TEXTAREA:focus, .SELECT:focus {
				outline:none !important;
				border-color:red;
				box-shadow:0 0 5px #ce7171;
			}
			.BUTTON:hover {
				cursor:pointer;
			}
			.BUTTON:focus {
				outline:none !important;
				border-color:#43729D;
				box-shadow:0 0 5px #608db8;
			}
			tr {
			    height:35px;
			    font-size:18px;
			}
			td {
			    text-align:left;
			    width:auto;
			}
			a {
			    font-size:18px;
			}
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
			.container
			{
		    	width: 950px;
		    	margin: 0 auto;
		    }
		</style>
	</head>

<body>
<table id="searchList" style="border: 2px solid #69A4D8; width: 100%;"><tr>                                                              
            <td colspan="5" style="width:auto;border-right:none">         
                <c:choose>                                                
                    <c:when test="${findModel.getAllUserList() != null}"> 
                        総件数：<span id="totalCount">${findModel.getAllUserList().size()}</span>件
                    </c:when>                                      
                    <c:otherwise>                                  
                        総件数：<span id="totalCount">0</span>件   
                    </c:otherwise>                                 
                </c:choose>                                        
            </td>                                                  
            <td style="border:none;text-align:right">   
                表示件数：                                         
            </td>                                                  
            <td style="width:80px;border:none">                    
                <c:set var="disabled" value=""/>                   
                <c:if test="${findModel.getAllUserList() == null}">
                    <c:set var="disabled" value="disabled"/>       
                </c:if>                                            
                <select class="Select" name="showNumber" id="showNumber" style="width:100%;float:right" ${disabled}> 
                    <c:set var="array" scope="request">0,5,10,20,50,100</c:set>          
                    <c:forEach var="item" items="${array}">                              
                        <c:choose>                                                       
                            <c:when test="${findModel.getShowNumber() == item}">         
                                <c:set var="selected" value="selected" scope="request"/> 
                            </c:when>                                                    
                            <c:otherwise>                                                
                                <c:set var="selected" value="" scope="request"/>         
                            </c:otherwise>                                               
                        </c:choose>                                                      
                        <c:choose>                                                       
                            <c:when test="${item == 0}">                                 
                                <c:set var="text" value="すべて" scope="request"/>       
                            </c:when>                                                    
                            <c:otherwise>                                                
                                <c:set var="text" value="${item}件" scope="request"/>    
                            </c:otherwise>                                               
                        </c:choose>                                                      
                        <option value="${item}" ${selected}>${text}</option>             
                    </c:forEach>   
                </select>          
            </td>                  
        </tr>                                                
        <tr>                       
            <td>選択</td>          
            <c:set var="array" scope="request">ユーザーID,氏名,性別,電話番号,郵便番号,住所</c:set>
            <c:forEach var="item" items="${array}"> 
                <td onclick="sort(this)">           
                    ${item}                         
                    <span>                          
                        <c:if test="${findModel.getSortColumn() == item}">                        
                            <br />${findModel.getSortOrder()}                                     
                        </c:if>                                                                   
                    </span>                                                                       
                </td>                                                                             
            </c:forEach>                                                                          
        <tr>                    
    <c:set var="MALE" value="1"/>  
    <c:set var="FEMALE" value="2"/>
    <c:if test="${findModel.getAllUserList() != null}">                                  
        <c:set var="i" value="0" scope="request"/>                                       
        <c:forEach var="item" items="${findModel.getShowUserList()}">
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
<!--<tr>
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
		<td style="border: none; display: block; float: right;width: 125px;">
			<img src="${pageContext.request.contextPath}/img/left_triangle.png" name="前ページ" id="btn前ページ" style="float: left;  width: 30px; margin: 2px;" />
			<select class="Select" name="現ページ" id="txt現ページ" style="width: 50px; margin: 2px;">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
			</select>
			<img src="${pageContext.request.contextPath}/img/right_triangle.png" name="次ページ" id="btn次ページ" style="float: right; width: 30px; margin: 2px;" />
		</td>
	</tr>            
	-->
	<c:if test="${findModel.getShowUserList() != null&& findModel.getShowUserList().size() < findModel.getAllUserList().size()}"> 
    <tr>                                     
        <td colspan="6" style="border:none;">
            <div style="float:right">        
                <c:choose>                   
                    <c:when test="${findModel.getCurrentPage() == 1}">                       
                        <input type="image" src="${pageContext.request.contextPath}/img/left_triangle_disable.png" id="previousPage" style="width:30px;float:left" />                                                               
                    </c:when> 
                    <c:otherwise> <input type="image" src="${pageContext.request.contextPath}/img/left_triangle.png" id="previousPage" style="width:30px;float:left" />                                                                                 
                    </c:otherwise>                                                                                                               
                </c:choose>                                                                                                                      
                <select class="Select" name="currentPage" id="currentPage" style="width:60px;height:30px;float:left;margin:0px 5px 0px 5px;">                                                       
                    <c:set var="modulo" value="${findModel.getAllUserList().size() % findModel.getShowNumber()}" scope="request"/>                                                                                                    
                    <c:set var="plus" value="${(modulo == 0? 0:1)}" scope="request"/>                                      
                    <c:set var="loopCount" value="${findModel.getAllUserList().size() / findModel.getShowNumber() + plus}" 
                            scope="request"/>                   
                    <c:if test="${findModel.getShowNumber() != 0
                                    && (findModel.getAllUserList().size() / findModel.getShowNumber() + 1) >= 1}">         
                        <c:forEach var="loop" begin="1" end="${loopCount}">
                            <c:choose>
                                <c:when test="${findModel.getCurrentPage() == loop}"> 
                                    <option selected value="${loop}">${loop}</option> 
                                </c:when>     
                                <c:otherwise> 
                                    <option value="${loop}">${loop}</option>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach> 
                    </c:if>
                </select> 
                <fmt:parseNumber var="numberData" value="${findModel.getAllUserList().size() / findModel.getShowNumber() + 1}" integerOnly="true" />                                
                <c:choose>
                    <c:when test="${findModel.getCurrentPage() == numberData }">  
                        <input type="image" src="${pageContext.request.contextPath}/img/right_triangle_disable.png" id="nextPage" style="width:30px;float:left" />                        
                    </c:when>
                    <c:otherwise> 
                        <input type="image" src="${pageContext.request.contextPath}/img/right_triangle.png" id="nextPage" style="width:30px;float:left" />
                    </c:otherwise>
                </c:choose>
            </div>
        </td>
    </tr>
</c:if>
	
	                                           
</table>
</body>
</html>