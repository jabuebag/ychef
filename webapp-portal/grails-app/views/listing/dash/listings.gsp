<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Ychef APP| Dashboard</title>
    <meta name="layout" content="dashboard"/>
</head>

<body>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            菜单管理
            <small>Menu Management</small>
        </h1>
        <br>
        <div class="row">
            <div class="col-md-3">
                    <a href="${createLink(controller: 'listing', action: 'create')}"
                       class="btn btn-primary btn-block margin-bottom">创建新菜单</a>
                    %{--<g:render template="/listing/templates/controlbar" />--}%
            </div><!-- /.col -->
        </div>
        <!-- <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Dashboard</li>
          </ol> -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            
            <div class="col-md-12">
                <div class="box box-primary">
                    <div class="box-header with-border">

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
                            %{--<button class="btn btn-default btn-sm checkbox-toggle"><i class="fa fa-square-o"></i>--}%
                            %{--</button>--}%

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
                                    %{--<th>Select</th>--}%
                                    <th>Chefs</th>
                                    <th>Menu Name</th>
                                    <th>Pic</th>
                                    <th>Time</th>
                                    <th></th>
                                </tr>
                                </thead>
                                <tbody>
                                <g:each var="listing" in="${listings}">
                                    <tr>
                                        %{--<td><input type="checkbox"></td>--}%
                                        <td class="mailbox-name">${listing.owner?.username}</td>
                                        <td class="mailbox-subject"><g:link controller="listing" action="preview"
                                                                            id="${listing.id}" target="_blank"><b>${listing.title}</b></g:link>
                                        </td>
                                        <td class="mailbox-attachment"><g:picture
                                                src="${listing.coverImage.path}" height="40" width="80" alt=""/></td>
                                        <td class="mailbox-date">${listing.dateUpdated}</td>
                                        <td class="mailbox-date"><a href="${createLink(controller: 'listing', action: 'edit', id: listing.id)}">编辑</a></td>
                                    </tr>
                                </g:each>
                                </tbody>
                            </table><!-- /.table -->
                        </div><!-- /.mail-box-messages -->
                    </div><!-- /.box-body -->
                    <div class="box-footer no-padding">
                        <div class="mailbox-controls">
                            <!-- Check all button -->
                            %{--<button class="btn btn-default btn-sm checkbox-toggle"><i class="fa fa-square-o"></i>--}%
                            %{--</button>--}%

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
                    </div>
                </div><!-- /. box -->
            </div><!-- /.col -->
        </div><!-- /.row -->
    </section><!-- /.content -->

</div><!-- /.content-wrapper -->
</body>
</html>