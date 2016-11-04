<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Ychef APP| Dashboard</title>
    <meta name="layout" content="dashboard"/>
</head>

<body class="hold-transition skin-black-light sidebar-mini">
<div class="wrapper">

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Create New Article
                <small>发布新软文</small>
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
                    <a href="${createLink(controller: 'article', action: 'articles')}"
                       class="btn btn-primary btn-block margin-bottom">返回到列表</a>
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
                <form id="ArticleCreateForm" name="ListingCreateForm"
                      action="${createLink(controller: 'article', action: 'save')}" method="post">
                    <div class="col-md-9">
                        <div class="box box-primary">
                            <div class="box-header with-border">
                                <h3 class="box-title">Create New Article</h3>
                            </div><!-- /.box-header -->
                            <div class="box-body">
                                <!-- <div class="form-group">
                    <input class="form-control" placeholder="To:">
                  </div> -->
                                <input name="id" class="form-control hide"
                                       value="${article?.id}">

                                <div class="form-group col-md-12">
                                    <label for="article-name">Article Name</label>
                                    <input name="title" class="form-control" data-validation="required"
                                           value="${article?.title}"
                                           placeholder="Article Name">
                                </div>

                                <div class="form-group col-md-12">
                                    <label for="cover-photo">Gallary Photo</label><br>

                                    <div class="btn btn-default btn-file">
                                        <i class="fa fa-image"></i> Choose Gallary Photo
                                        <input id="article-img-selector" data-validation="mime size"
                                               data-validation-allowing="jpg, png, gif"
                                               data-validation-max-size="2048kb" type="file" name="file">
                                    </div>
                                    <a id="btn-img-upload" class="btn btn-success"><i
                                            class="fa  fa-upload"></i> add</a>
                                    <span id="article-file-upload-span"></span>

                                    <p id="article-image-error-msg" class="text-red hide">please add picture first.</p>

                                    <p class="help-block">Max. 2MB</p>
                                </div>

                            </div><!-- /.box-body -->

                            <div class="box-footer">
                                <ul id="img-show-area" class="mailbox-attachments clearfix">
                                    <g:each in="${article?.images}">
                                        <li>
                                            <input name="imageId" value="${it.image.id}" hidden>
                                            <span class="mailbox-attachment-icon has-img"><img src="${it.image.path}"
                                                                                               alt="Attachment"></span>

                                            <div class="mailbox-attachment-info">
                                                <span class="mailbox-attachment-size">
                                                    photo
                                                    <a href="#"
                                                       class="btn btn-default btn-xs pull-right btn-click-remove"><i
                                                            class="fa  fa-close"></i></a>
                                                </span>
                                            </div>
                                        </li>
                                    </g:each>
                                </ul>
                            </div>

                            <div class="box-footer">
                                <div class="pull-right">
                                    %{--<button class="btn btn-default"><i class="fa fa-pencil"></i> Drafe</button>--}%
                                    <button id="btn-article-form-submit" type="submit" form="ArticleCreateForm"
                                            class="btn btn-primary"><i class="fa fa-next"></i> 添加
                                    </button>
                                </div>
                                <a href="${createLink(controller: 'article', action: 'articles')}" class="btn btn-default"><i class="fa fa-times"></i> 返回</a>

                                <br>

                                <div class="modal fade" id="add-article-success-modal" tabindex="-1" role="dialog"
                                     data-backdrop="static"
                                     data-keyboard="false" aria-labelledby="myModalLabel">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title" id="myModalLabel">添加成功</h4>
                                            </div>

                                            <div class="modal-body">
                                                <p>成功，您可以返回Article列表，也可以继续添加Article。</p>
                                            </div>

                                            <div class="modal-footer">
                                                <a type="button"
                                                   href="${createLink(controller: 'article', action: 'articles')}"
                                                   class="btn btn-default">返回列表</a>
                                                <a type="button"
                                                   href="${createLink(controller: 'article', action: 'create')}"
                                                   class="btn btn-primary">继续添加</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="modal fade" id="add-article-fail" tabindex="-1" role="dialog"
                                     data-backdrop="static"
                                     data-keyboard="false" aria-labelledby="myModalLabel">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h4 class="modal-title" id="myModalLabel">添加失败</h4>
                                            </div>

                                            <div class="modal-body">
                                                <p>失败，您可以返回Menu列表，也可以重新添加Menu。</p>
                                            </div>

                                            <div class="modal-footer">
                                                <a type="button"
                                                   href="${createLink(controller: 'article', action: 'articles')}"
                                                   class="btn btn-default">返回列表</a>
                                                <a type="button"
                                                   href="${createLink(controller: 'article', action: 'create')}"
                                                   class="btn btn-primary">重新添加</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- /.box-footer -->
                        </div><!-- /. box -->
                    </div><!-- /.col -->
                </form>
            </div><!-- /.row -->
        </section><!-- /.content -->

    </div><!-- /.content-wrapper -->
<!-- Add the sidebar's background. This div must be placed
           immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>

</div><!-- ./wrapper -->
</body>
</html>
