<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Ychef APP| gallary</title>
    <meta name="layout" content="portal"/>
</head>
<body>

<div class="jumbotron jumbotron-sm text-center" style="background:url('https://static.pexels.com/photos/93593/pexels-photo-93593.jpeg'); background-repeat:no-repeat;background-size:cover;">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                <h2>近期活动<br><small>Recent Activity</small></h2>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <!-- Page Heading -->
    <g:each var="article" in="${articles}">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">${article.title}
                </h1>
            </div>
        </div>

        <g:set var="pages" value="${article.images.size()/3+1}"></g:set>
        <g:each var="i" in="${ (0..<pages)}" >
            <div class="row">
                <g:each var="articleImage" in="${new ArrayList(article.images).subList(i*3, i*3+3>article.images.size()?article.images.size():i*3+3)}">
                    <div class="col-md-4 portfolio-item">
                        <a type="button" href="${articleImage.image.path}" data-toggle="lightbox" data-gallery="multiimages" data-title="" rel="lightbox">
                            <g:picture class="img-responsive" src="${articleImage.image.path}" alt=""/>
                        </a>
                    </div>
                </g:each>
            </div>
        </g:each>
    </g:each>

    <hr>

    <!-- Pagination -->
    %{--<div class="row text-center">--}%
        %{--<div class="col-lg-12">--}%
            %{--<ul class="pagination">--}%
                %{--<li>--}%
                    %{--<a href="#">&laquo;</a>--}%
                %{--</li>--}%
                %{--<li class="active">--}%
                    %{--<a href="#">1</a>--}%
                %{--</li>--}%
                %{--<li>--}%
                    %{--<a href="#">2</a>--}%
                %{--</li>--}%
                %{--<li>--}%
                    %{--<a href="#">3</a>--}%
                %{--</li>--}%
                %{--<li>--}%
                    %{--<a href="#">4</a>--}%
                %{--</li>--}%
                %{--<li>--}%
                    %{--<a href="#">5</a>--}%
                %{--</li>--}%
                %{--<li>--}%
                    %{--<a href="#">&raquo;</a>--}%
                %{--</li>--}%
            %{--</ul>--}%
        %{--</div>--}%
    %{--</div>--}%
    <!-- /.row -->

</div><!-- /.container -->
</body>
</html>
