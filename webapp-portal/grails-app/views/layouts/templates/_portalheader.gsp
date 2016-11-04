<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/"><img src="/assets/logo-253x50.png" height="25px" alt=""></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    %{--<li class="dropdown">--}%
                        %{--<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">菜单 <span class="caret"></span></a>--}%
                        %{--<ul class="dropdown-menu">--}%
                            %{--<li><a href="#">私人菜单</a></li>--}%
                            %{--<li><a href="#">美食活动</a></li>--}%
                        %{--</ul>--}%
                    %{--</li>--}%
                    <li>
                        <a href="${createLink(controller: 'user', action: 'becomeChef')}">Become Chef</a>
                    </li>
                    <li>
                        <a href="${createLink(controller: 'article', action: 'portal')}">活动剪影</a>
                    </li>
                    <li>
                        <a href="${createLink(controller: 'company', action: 'howUse')}">如何使用</a>
                    </li>
                    %{--<li>--}%
                        %{--<a href="#">EN｜中文</a>--}%
                    %{--</li>--}%
                    <li>
                        <a href="${createLink(controller: 'login')}"><i class="glyphicon glyphicon-user"></i></a>
                    </li>
                    %{--<li>--}%
                        %{--<a href="#"><i class="glyphicon glyphicon-shopping-cart"></i></a>--}%
                    %{--</li>--}%
                    %{--<li>--}%
                        %{--<a href="#"><i class="glyphicon glyphicon-heart"></i></a>--}%
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>