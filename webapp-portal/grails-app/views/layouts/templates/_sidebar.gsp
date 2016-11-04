<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="/assets/favicon.png" class="img-circle" alt="User Image">
            </div>

            <div class="pull-left info">
                <p>Alexander Pierce</p>
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>
        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search...">
                <span class="input-group-btn">
                    <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i
                            class="fa fa-search"></i></button>
                </span>
            </div>
        </form>
        <!-- /.search form -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            <li class="header">Main Menu</li>
            <li>
                <a href="${createLink(controller: 'listing', action: 'listings')}">
                    <i class="fa fa-calendar"></i> <span>菜单管理</span>
                    <i class="fa fa-angle-right pull-right"></i>
                </a>
            </li>
            <li>
                <a href="${createLink(controller: 'article', action: 'articles')}">
                    <i class="fa fa-calendar"></i> <span>活动管理</span>
                    <i class="fa fa-angle-right pull-right"></i>
                </a>
            </li>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>