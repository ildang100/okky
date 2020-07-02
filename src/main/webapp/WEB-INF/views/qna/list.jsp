<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@include file="../includes/header.jsp"%>

        <div class="sidebar-category-nav">
            <h3 class="sub-title">Q&A</h3>
            <ul class="nav">
                <li><a href="/qna/list" class="link"><span class="nav-sidebar-label nav-sidebar-category-label">All</span><span class='nav-indicator <c:out value="${maker.cri.category eq null ? 'nav-selected':''}"/> '><span class="nav-selected-dot"></span></span></a></li>
                <li><a href="/qna/list?category=a" class="link"><span class="nav-sidebar-label nav-sidebar-category-label">공지사항</span> <span class='nav-indicator <c:out value="${maker.cri.category eq 'a' ? 'nav-selected':''}"/>'><span class="nav-selected-dot"></span></span></a></li>
                <li><a href="/qna/list?category=b" class="link"><span class="nav-sidebar-label nav-sidebar-category-label">사는얘기</span> <span class='nav-indicator <c:out value="${maker.cri.category eq 'b' ? 'nav-selected':''}"/>'><span class="nav-selected-dot"></span></span></a></li>
            </ul>
            <div class="special-nav">
            </div>
        </div>
        <div id="list-article" class="content scaffold-list" role="main">
			<div id="list-article" class="content scaffold-list" role="main">

				<div class="nav" role="navigation">

					<a href="/qna/register" class="create btn btn-success btn-wide pull-right"><i class="fa fa-pencil"></i> 새 글 쓰기</a>

					<h4>Q&A</h4>
					<form action="/articles/community" method="get" name="category-filter-form" id="category-filter-form" >
						<div class="category-filter-wrapper">
							<div class="category-filter-query pull-right">
								<div class="input-group input-group-sm">
									<input type="search" name="query" id="search-field" class="form-control" placeholder="검색어" value="" />
									<span class="input-group-btn">
                                    <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>

                                </span>
								</div>
							</div>

							<ul class="list-sort pull-left">
								<li><a href="/articles/community?sort=id&amp;order=desc" data-sort="id" data-order="desc" class="category-sort-link active">최신순</a></li>
								<li><a href="/articles/community?sort=voteCount&amp;order=desc" data-sort="voteCount" data-order="desc" class="category-sort-link ">추천순</a></li>
								<li><a href="/articles/community?sort=noteCount&amp;order=desc" data-sort="noteCount" data-order="desc" class="category-sort-link ">댓글순</a></li>
								<li><a href="/articles/community?sort=scrapCount&amp;order=desc" data-sort="scrapCount" data-order="desc" class="category-sort-link ">스크랩순</a></li>
								<li><a href="/articles/community?sort=viewCount&amp;order=desc" data-sort="viewCount" data-order="desc" class="category-sort-link ">조회순</a></li>
							</ul>

							<input type="hidden" name="sort" id="category-sort-input" value="id"/>
							<input type="hidden" name="order" id="category-order-input" value="desc"/>
						</div>


					</form>

				</div>

				<div class="panel panel-default">

					<!-- Table -->

					<ul class="list-group">



					<c:forEach var="board" items="${board}">

						<li class="list-group-item list-group-item-question list-group-no-note clearfix">

							<div class="list-title-wrapper clearfix">
								<div class="list-tag clearfix">
									<span class="list-group-item-text article-id">${board.seq}</span>
									<a href="#" class="list-group-item-text item-tag label label-info"><i class="fa fa-comments"></i> ${board.category}</a>

								</div>

								<h5 class="list-group-item-heading list-group-item-evaluate">
									<a href="/qna/get?seq=${board.seq }">

										${board.title}
									</a>
								</h5>
							</div>

							<div class="list-summary-wrapper clearfix">

								<div class="list-group-item-summary clearfix">
									<ul>
										<li class="item-icon-disabled"><i class="item-icon fa fa-comment "></i> 리플</li>
										<li class="item-icon-disabled">
											<i class="item-icon fa fa-thumbs-up"></i> 좋아
										</li>
										<li class=""><i class="item-icon fa fa-eye"></i> ${board.cnt}</li>
									</ul>
								</div>

							</div>

							<div class="list-group-item-author clearfix">
								<div class='avatar avatar-list clearfix '><a href='#' class='avatar-photo'><img src='//www.gravatar.com/avatar/7fa2d4d22e174192ba72a9d91acf2eb0?d=identicon&s=30'/></a> <div class="avatar-info"><a class="nickname" href="#"  title="${board.id}">${board.id}</a> <div class="activity"><span class="fa fa-flash"></span>활동</div><div class="date-created"><span class="timeago" title="${board.regdate}">${board.regdate}</span> </div> </div></div>
							</div>
						</li>
					</c:forEach>





















					</ul>
				</div>
			</div>
		</div>

<%@include file="../includes/footer.jsp"%>