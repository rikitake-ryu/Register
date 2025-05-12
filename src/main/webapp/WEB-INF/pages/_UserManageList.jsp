<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<table style="width: 100%; border: 1px solid #5b9bd5">
    <tbody>
      <tr style="height: 35px">
        <td style="width: 200px; padding-left: 5px" colspan="2">
          <c:choose>
				<c:when test="${userManageModel.getAllUserList() != null}">
					総件数：<span id="totalCount">${userManageModel.getAllUserList().size()}</span>件
				</c:when>
				<c:otherwise>
					総件数：<span id="totalCount">0</span>件
				</c:otherwise>
			</c:choose>
        </td>
        <td
          style="font-weight: bold; width: auto; text-align: right; font-weight: normal; ">
          表示件数
        </td>
        <td style="border:none">
			<c:set var="disabled" value=""/>
			<c:if test="${userManageModel.getAllUserList() == null}">
				<c:set var="disabled" value="disabled"/>
			</c:if>
			<select class="Select" name="showNumber" id="showNumber" style="width:100%;float:right" ${disabled}>
				<c:set var="array" scope="request">0,5,10,20,50,100</c:set>
				<c:forEach var="item" items="${array}">
					<c:choose>
						<c:when test="${userManageModel.getShowNumber() == item}">
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
      <table id="検索結果一覧" style="width: 100%;  word-break: break-all; font-size: 13px; ">
          <tbody>
              <tr>
		<td align="center">選択</td>
		<c:set var="array" scope="request">氏名,性別,生年月日,メール,所属,役職</c:set>
		<c:set var="array_width" scope="request">250px,200px,100px,250px,200px,400px</c:set>
		<c:forEach var="item" items="${array}" >
			<td onclick="sort(this)" align="center">
				${item}
				<span>
					<c:if test="${userManageModel.getSortColumn() == item}">
						<br />${userManageModel.getSortOrder()}
					</c:if>
				</span>
			</td>
		</c:forEach>
	</tr>
	<c:set var="MALE" value="1"/>
	<c:set var="FEMALE" value="2"/>
	<c:if test="${userManageModel.getAllUserList() != null}">
		<c:set var="i" value="0" scope="request"/>
		<c:forEach var="item" items="${userManageModel.getShowUserList()}">
		 	<tr>
				<td align="center"><input type="checkbox" name="checkbox" id="selectUser_${item.getUserName() }" ></td>
				<td class="userName">${item.getUserName() }</td>
				<td>
					<c:choose>
						<c:when test="${item.getSex() == MALE}">
							<c:out value="男"/>
						</c:when>
						<c:when test="${item.getSex() == FEMALE}">
							<c:out value="女"/>
						</c:when>
						<c:otherwise>
						</c:otherwise>
					</c:choose>
				</td>
				<td>${item.getBirthday()}</td>
				<td>${item.getEmail()}</td>
				<td>${item.getAffiliation()}</td>
				<td>${item.getPosition()}</td>
			</tr>
		</c:forEach>
	</c:if>

	<c:if test="${userManageModel.getShowUserList() != null
					&& userManageModel.getShowUserList().size() < userManageModel.getAllUserList().size()}">
		<tr>
			<td colspan="7" style="border:none;">
				<div style="float:right">

				   	<c:choose>
				   		<c:when test="${userManageModel.getCurrentPage() == 1}">

							<input type="image" src="${pageContext.request.contextPath}/img/left_triangle_disable.png"
									id="previousPage" style="width:30px;float:left" />
				   		</c:when>

				   		<c:otherwise>

				   			<input type="image" src="${pageContext.request.contextPath}/img/left_triangle.png" id="previousPage"
									style="width:30px;float:left" />
				   		</c:otherwise>
				   	</c:choose>
	   				<select class="Select" name="currentPage" id="currentPage"
							style="width:60px;height:30px;float:left;margin:0px 5px 0px 5px;">
						<c:set var="modulo" value="${userManageModel.getAllUserList().size() % userManageModel.getShowNumber()}"
								scope="request"/>
						<c:set var="plus" value="${(modulo == 0? 0:1)}" scope="request"/>
						<c:set var="loopCount" value="${userManageModel.getAllUserList().size() / userManageModel.getShowNumber() + plus}"
								scope="request"/>
						<c:if test="${userManageModel.getShowNumber() != 0
										&& (userManageModel.getAllUserList().size() / userManageModel.getShowNumber() + 1) >= 1}">
							<c:forEach var="loop" begin="1" end="${loopCount}">
								<c:choose>
									<c:when test="${userManageModel.getCurrentPage() == loop}">
										<option selected value="${loop}">${loop}</option>
									</c:when>
									<c:otherwise>
										<option value="${loop}">${loop}</option>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</c:if>
					</select>
					<fmt:parseNumber var="numberData" value="${userManageModel.getAllUserList().size() / userManageModel.getShowNumber() + 1}" integerOnly="true" />
				   	<c:choose>
				   		<c:when test="${userManageModel.getCurrentPage() == numberData }">
							<input type="image" src="${pageContext.request.contextPath}/img/right_triangle_disable.png"
									id="nextPage" style="width:30px;float:left" />
				   		</c:when>
				   		<c:otherwise>
				   			<input type="image" src="${pageContext.request.contextPath}/img/right_triangle.png" id="nextPage"
									style="width:30px;float:left" />
				   		</c:otherwise>
				   	</c:choose>
				</div>
			</td>
		</tr>
	</c:if>
       </tbody>
    </table>
 </tbody>
</table>