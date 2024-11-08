<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="../includes/header.jsp" %>

<h2>게시글 조회</h2>
<div class="form-group">
    <label>번호</label>
    <input class="form-control" name='bno' value='<c:out value="${board.bno}"/>' readonly>
</div>
<div class="form-group">
    <label>제목</label>
    <input class="form-control" name='title' value='<c:out value="${board.title}"/>' readonly>
</div>
<div class="form-group">
    <label>내용</label>
    <textarea class="form-control" rows="3" name='content' readonly><c:out value="${board.content}"/></textarea>
</div>
<div class="form-group">
    <label>작성자</label>
    <input class="form-control" name='writer' value='<c:out value="${board.writer}"/>' readonly>
</div>
<button data-oper='modify' class="btn btn-default" onclick="location.href='/board/modify?bno=<c:out value="${board.bno}"/>'">수정</button>
<button data-oper='list' class="btn btn-info" onclick="location.href='/board/list'">목록</button>

<%@ include file="../includes/footer.jsp" %>