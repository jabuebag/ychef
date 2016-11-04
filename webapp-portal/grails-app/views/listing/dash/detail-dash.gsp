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
                Menu Details
                <small>菜单细节</small>
            </h1>
            <br>
            <div class="row">
                <div class="col-md-3">
                    <a href="${createLink(controller: 'listing', action: 'listings')}" class="btn btn-primary btn-block margin-bottom">Back to previous</a>
                    %{--<g:render template="/listing/templates/controlbar" />--}%
                </div><!-- /.col -->
            </div>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                
                <div class="col-md-12">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Menu Details</h3>
                            <div class="box-tools pull-right">
                                <a href="#" class="btn btn-box-tool" data-toggle="tooltip" title="Previous"><i class="fa fa-chevron-left"></i></a>
                                <a href="#" class="btn btn-box-tool" data-toggle="tooltip" title="Next"><i class="fa fa-chevron-right"></i></a>
                            </div>
                        </div><!-- /.box-header -->
                        <div class="box-body no-padding">
                            <div class="mailbox-read-info">
                                <h3>${listing.title}</h3>
                                <h5>${listing.owner?.username}<span class="mailbox-read-time pull-right">${listing.dateUpdated}</span></h5>
                            </div><!-- /.mailbox-read-info -->
                            <div class="mailbox-controls with-border text-center">
                                %{--<div class="btn-group">--}%
                                    %{--<button class="btn btn-default btn-sm" data-toggle="tooltip" title="Delete"><i class="fa fa-trash-o"></i></button>--}%
                                    %{--<button class="btn btn-default btn-sm" data-toggle="tooltip" title="Edit"><i class="fa fa-pencil"></i></button>--}%
                                %{--</div><!-- /.btn-group -->--}%
                                %{--<button class="btn btn-default btn-sm" data-toggle="tooltip" title="Print"><i class="fa fa-print"></i></button>--}%
                            </div><!-- /.mailbox-controls -->
                            <div class="mailbox-read-message">
                                ${listing.description.encodeAsRaw()}
                            </div><!-- /.mailbox-read-message -->
                        </div><!-- /.box-body -->
                        <div class="box-footer">
                            %{--<ul class="mailbox-attachments clearfix">--}%
                                %{--<li>--}%
                                    %{--<span class="mailbox-attachment-icon"><i class="fa fa-file-pdf-o"></i></span>--}%
                                    %{--<div class="mailbox-attachment-info">--}%
                                        %{--<a href="#" class="mailbox-attachment-name"><i class="fa fa-paperclip"></i> Sep2014-report.pdf</a>--}%
                                        %{--<span class="mailbox-attachment-size">--}%
                                            %{--1,245 KB--}%
                                            %{--<a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-cloud-download"></i></a>--}%
                                        %{--</span>--}%
                                    %{--</div>--}%
                                %{--</li>--}%
                                %{--<li>--}%
                                    %{--<span class="mailbox-attachment-icon"><i class="fa fa-file-word-o"></i></span>--}%
                                    %{--<div class="mailbox-attachment-info">--}%
                                        %{--<a href="#" class="mailbox-attachment-name"><i class="fa fa-paperclip"></i> App Description.docx</a>--}%
                                        %{--<span class="mailbox-attachment-size">--}%
                                            %{--1,245 KB--}%
                                            %{--<a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-cloud-download"></i></a>--}%
                                        %{--</span>--}%
                                    %{--</div>--}%
                                %{--</li>--}%
                                %{--<li>--}%
                                    %{--<span class="mailbox-attachment-icon has-img"><img src="/assets/photo1.png" alt="Attachment"></span>--}%
                                    %{--<div class="mailbox-attachment-info">--}%
                                        %{--<a href="#" class="mailbox-attachment-name"><i class="fa fa-camera"></i> photo1.png</a>--}%
                                        %{--<span class="mailbox-attachment-size">--}%
                                            %{--2.67 MB--}%
                                            %{--<a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-cloud-download"></i></a>--}%
                                        %{--</span>--}%
                                    %{--</div>--}%
                                %{--</li>--}%
                                %{--<li>--}%
                                    %{--<span class="mailbox-attachment-icon has-img"><img src="/assets/photo2.png" alt="Attachment"></span>--}%
                                    %{--<div class="mailbox-attachment-info">--}%
                                        %{--<a href="#" class="mailbox-attachment-name"><i class="fa fa-camera"></i> photo2.png</a>--}%
                                        %{--<span class="mailbox-attachment-size">--}%
                                            %{--1.9 MB--}%
                                            %{--<a href="#" class="btn btn-default btn-xs pull-right"><i class="fa fa-cloud-download"></i></a>--}%
                                        %{--</span>--}%
                                    %{--</div>--}%
                                %{--</li>--}%
                            %{--</ul>--}%
                        </div><!-- /.box-footer -->
                        <div class="box-footer">
                            <div class="pull-right">
                                <g:link controller="listing" action="edit" id="${listing.id}" class="btn btn-default"><i class="fa fa-pencil"> Edit</i></g:link>
                            </div>
                            <g:link controller="listing" action="delete" id="${listing.id}" class="btn btn-default"><i class="fa fa-trash-o"></i> Delete</g:link>
                            %{--<button class="btn btn-default"><i class="fa fa-print"></i> Print</button>--}%
                        </div><!-- /.box-footer -->
                    </div><!-- /. box -->
                </div><!-- /.col -->
            </div><!-- /.row -->
        </section><!-- /.content -->

    </div><!-- /.content-wrapper -->
</body>
</html>