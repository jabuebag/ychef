<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ychef APP| Home</title>
    <meta name="layout" content="portal"/>
</head>

<body>

<div class="jumbotron jumbotron-sm text-center" style="background:url('/assets/search-result-header.jpg'); background-repeat:no-repeat;background-size:cover;">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                <h2>精品. 推荐. 美食 <br><small>Search Result</small></h2>
            </div>
        </div>
    </div>
</div>

<!-- Page Content -->
<div class="container marketing">
    <!-- New Menu Tile-->
    <div class="row">
        <div class="col-lg-12 text-center">
            <img width="50px" src="/assets/icons/food-icon-2-128x128.png" alt=""><h1>厨 说 食 谱</h1>
            <small>精品. 推荐. 美食</small>
        </div>
    </div>
    <!-- /.New Menu Tile -->
    <hr>
    <g:if test="${listings}">
        <g:set var="rowNum" value="${listings.size()/3 + 1}"/>
    </g:if>
    <!-- New Menu Details -->
    <g:each in="${0..rowNum-1}" var="row">
        <div class="row text-center">
            <g:each in="${listings.subList(row*3, (row+1)*3 > listings.size()?listings.size:(row+1)*3)}">
                <div class="col-md-4 hero-feature">
                    <div class="thumbnail">
                        <a href="${createLink(controller: 'listing', action: 'detailPortal', id: it.id)}"><g:picture
                                class="img-responsive"
                                src="${it.coverImage?.path}" alt=""/></a>
                        <div class="caption">
                            <h4>${it.title}</h4>
                            <p>${it.introduction}</p>
                            <a href="${createLink(controller: 'listing', action: 'detailPortal', id: it.id)}" class="btn btn-success btn-ghost btn-block">预定美食</a>
                        </div>
                        <p class="price">$${it.price} / per</p>
                    </div>
                </div>
            </g:each>
        </div>
    </g:each>
    <!-- /.row -->
</div>

</body>
</html>

