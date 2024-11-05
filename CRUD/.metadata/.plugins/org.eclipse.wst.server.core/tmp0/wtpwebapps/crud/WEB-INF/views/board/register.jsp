<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp" %>

<h2>게시글 등록</h2>
<form action="/board/register" method="post">
    <div class="form-group">
        <label for="title">제목</label>
        <input type="text" class="form-control" id="title" name="title" required>
    </div>
    <div class="form-group">
        <label for="content">내용</label>
        <textarea class="form-control" id="content" name="content" rows="3" required></textarea>
    </div>
    <div class="form-group">
        <label for="writer">작성자</label>
        <input type="text" class="form-control" id="writer" name="writer" required>
    </div>
    <button type="submit" class="btn btn-primary">등록</button>
</form>

<%@ include file="../includes/footer.jsp" %>