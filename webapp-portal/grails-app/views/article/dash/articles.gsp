<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Ychef APP| Dashboard</title>
    <meta name="layout" content="dashboard"/>
</head>

<body class="hold-transition skin-black-light sidebar-mini">
<div class="wrapper">
    <!-- Left side column. contains the logo and sidebar -->

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                活动管理
                <small>Article Management</small>
            </h1>
            <!-- <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Dashboard</li>
          </ol> -->
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-md-3">
                    <a href="${createLink(controller: 'article', action: 'create')}" class="btn btn-primary btn-block margin-bottom">创建新活动</a>
                    %{--<div class="box box-solid">--}%
                        %{--<div class="box-header with-border">--}%
                            %{--<h3 class="box-title">Actions</h3>--}%
                            %{--<div class="box-tools">--}%
                                %{--<button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>--}%
                            %{--</div>--}%
                        %{--</div>--}%
                        %{--<div class="box-body no-padding">--}%
                            %{--<ul class="nav nav-pills nav-stacked">--}%
                                %{--<li><a href="mailbox.html"><i class="fa fa-inbox"></i> Articles <span class="label label-primary pull-right">12</span></a></li>--}%
                                %{--<!-- <li><a href="#"><i class="fa fa-envelope-o"></i> Sent</a></li> -->--}%
                                %{--<li><a href="#"><i class="fa fa-file-text-o"></i> Draft</a></li>--}%
                                %{--<!-- <li><a href="#"><i class="fa fa-filter"></i> Junk <span class="label label-warning pull-right">65</span></a></li> -->--}%
                                %{--<li><a href="#"><i class="fa fa-trash-o"></i> Trash</a></li>--}%
                            %{--</ul>--}%
                        %{--</div><!-- /.box-body -->--}%
                    %{--</div><!-- /. box -->--}%
                </div><!-- /.col -->
                <div class="col-md-9">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Articles</h3>
                            <div class="box-tools pull-right">
                                %{--<div class="has-feedback">--}%
                                    %{--<input type="text" class="form-control input-sm" placeholder="Search menu">--}%
                                    %{--<span class="glyphicon glyphicon-search form-control-feedback"></span>--}%
                                %{--</div>--}%
                            </div><!-- /.box-tools -->
                        </div><!-- /.box-header -->
                        <div class="box-body no-padding">
                            <div class="mailbox-controls">
                                <!-- Check all button -->
                                %{--<button class="btn btn-default btn-sm checkbox-toggle"><i class="fa fa-square-o"></i></button>--}%
                                %{--<div class="btn-group">--}%
                                    %{--<button class="btn btn-default btn-sm"><i class="fa fa-trash-o"></i></button>--}%
                                    %{--<button class="btn btn-default btn-sm"><i class="fa fa-reply"></i></button>--}%
                                    %{--<button class="btn btn-default btn-sm"><i class="fa fa-share"></i></button>--}%
                                %{--</div><!-- /.btn-group -->--}%
                                %{--<button class="btn btn-default btn-sm"><i class="fa fa-refresh"></i></button>--}%
                                %{--<div class="pull-right">--}%
                                    %{--1-50/200--}%
                                    %{--<div class="btn-group">--}%
                                        %{--<button class="btn btn-default btn-sm"><i class="fa fa-chevron-left"></i></button>--}%
                                        %{--<button class="btn btn-default btn-sm"><i class="fa fa-chevron-right"></i></button>--}%
                                    %{--</div><!-- /.btn-group -->--}%
                                %{--</div><!-- /.pull-right -->--}%
                            </div>
                            <div class="table-responsive mailbox-messages">
                                <table class="table table-hover table-striped">

                                    <thead>
                                    <tr>
                                        <th>Aurther</th>
                                        <th>Article Name</th>
                                        <th>Time</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <g:each in="${articles}">
                                        <tr>
                                            <td class="mailbox-name">${it.owner.username}</td>
                                            <td class="mailbox-subject"><a href="${createLink(controller: 'article', action: 'edit', id: it.id)}"><b>${it.title}</b></a></td>
                                            <td class="mailbox-date">${it.dateUpdated}</td>
                                        </tr>
                                    </g:each>
                                    </tbody>
                                </table><!-- /.table -->
                            </div><!-- /.mail-box-messages -->
                        </div><!-- /.box-body -->
                        %{--<div class="box-footer no-padding">--}%
                            %{--<div class="mailbox-controls">--}%
                                %{--<!-- Check all button -->--}%
                                %{--<button class="btn btn-default btn-sm checkbox-toggle"><i class="fa fa-square-o"></i></button>--}%
                                %{--<div class="btn-group">--}%
                                    %{--<button class="btn btn-default btn-sm"><i class="fa fa-trash-o"></i></button>--}%
                                    %{--<button class="btn btn-default btn-sm"><i class="fa fa-reply"></i></button>--}%
                                    %{--<button class="btn btn-default btn-sm"><i class="fa fa-share"></i></button>--}%
                                %{--</div><!-- /.btn-group -->--}%
                                %{--<button class="btn btn-default btn-sm"><i class="fa fa-refresh"></i></button>--}%
                                %{--<div class="pull-right">--}%
                                    %{--1-50/200--}%
                                    %{--<div class="btn-group">--}%
                                        %{--<button class="btn btn-default btn-sm"><i class="fa fa-chevron-left"></i></button>--}%
                                        %{--<button class="btn btn-default btn-sm"><i class="fa fa-chevron-right"></i></button>--}%
                                    %{--</div><!-- /.btn-group -->--}%
                                %{--</div><!-- /.pull-right -->--}%
                            %{--</div>--}%
                        %{--</div>--}%
                    </div><!-- /. box -->
                </div><!-- /.col -->
            </div><!-- /.row -->
        </section><!-- /.content -->

    </div><!-- /.content-wrapper -->

</div><!-- ./wrapper -->

</body>
</html>
