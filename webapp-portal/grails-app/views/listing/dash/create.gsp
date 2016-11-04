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
            发布菜单
            <small>Create New Menu</small>
        </h1>
        <br>
        <div class="row">
            <div class="col-md-3">
                <a href="${createLink(controller: 'listing', action: 'listings')}" class="btn btn-primary btn-block margin-bottom">返回到列表</a>
                %{--<g:render template="/listing/templates/controlbar" />--}%
            </div><!-- /.col -->
        </div>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-12">
            <g:if test="${listing}">
                <form id="ListingCreateForm" name="ListingCreateForm"
                      action="${createLink(controller: 'listing', action: 'update')}" method="post" enctype="multipart/form-data">
            </g:if>
            <g:else>
                <form id="ListingCreateForm" name="ListingCreateForm"
                      action="${createLink(controller: 'listing', action: 'save')}" method="post" enctype="multipart/form-data">
            </g:else>
                    <div class="box box-primary">
                        <div class="box-body">
                            <input style="visibility:hidden" name="id" value="${listing?.id}">
                            <div class="form-group col-md-12">
                                <label for="menu-name">Menu Name</label>
                                <input type="text" class="form-control" name="title" data-validation="required" placeholder="Menu Name" value="${listing?.title}">
                            </div>

                            <div class="form-group col-md-12">
                                <label for="menu-name">Introduction</label>
                                <input type="text" class="form-control" name="introduction" data-validation="required" placeholder="Menu Name" value="${listing?.introduction}">
                            </div>

                            <div class="form-group col-md-4">
                                <label for="menu-name">Average Cost</label>
                                <input type="text" class="form-control" data-validation="number" data-validation-allowing="float" name="price" placeholder="$" value="${listing?.price}">
                            </div>

                            <div class="form-group col-md-4">
                                <label for="menu-name">Required Rev Days</label>
                                <input type="text" class="form-control" name="revDays" data-validation="number" data-validation-allowing="range[1;100]" placeholder="Days" value="${listing?.revDays}">
                            </div>

                            <div class="form-group col-md-4">
                                <label for="menu-name">People QTY</label>
                                <input class="form-control" name="quantity" data-validation="number" data-validation-allowing="range[1;100]" placeholder="People QTY" value="${listing?.quantity}">
                            </div>


                            <div class="form-group col-md-4">
                                <label>Dine Services</label>
                                <select name="dineService" class="form-control" >
                                    <option value="1" ${listing&&listing?.dineService==1?"selected":""}>YES</option>
                                    <option value="0" ${listing&&listing?.dineService==0?"selected":""}>NO</option>
                                </select>
                            </div>

                            <div class="form-group col-md-4">
                                <label>Beverage Services</label>
                                <select name="beverageService" class="form-control">
                                    <option value="1" ${listing&&listing?.beverageService==1?"selected":""}>YES</option>
                                    <option value="0" ${listing&&listing?.beverageService==0?"selected":""}>NO</option>
                                </select>
                            </div>

                            <div class="form-group col-md-4">
                                <label>Cleaning Services</label>
                                <select name="cleanService" class="form-control">
                                    <option value="1" ${listing&&listing?.cleanService==1?"selected":""}>YES</option>
                                    <option value="0" ${listing&&listing?.cleanService==0?"selected":""}>NO</option>
                                </select>
                            </div>

                            <div class="form-group col-md-12">
                                <label for="file">Cover Photo</label><br>

                                <div class="btn btn-default btn-file">
                                    <i class="fa fa-image"></i> Upload Photo
                                    <input type="file" name="file" data-validation="mime size"
                                           data-validation-allowing="jpg, png, gif"
                                           data-validation-max-size="800kb" id="file">
                                </div>
                                <g:picture id="file-upload-show" class="${listing?"":"hide"}" src="${listing?.coverImage?.path}" height="70" width="140" />
                                <span id="file-upload-span"></span>

                                <p class="help-block">Max. 800kb</p>
                            </div>

                            <div class="form-group col-md-12">
                                <textarea id="description" name="description" placeholder="菜单内容..." class="form-control" style="height: 500px">
                                    ${listing?.description}
                                </textarea>
                            </div>
                        </div><!-- /.box-body -->
                        <div class="box-footer">
                            <div class="pull-right">
                                <a>${flash.message}</a>
                                %{--<button class="btn btn-default"><i class="fa fa-pencil"></i> Drafe</button>--}%
                                <button type="submit" form="ListingCreateForm" name="save" class="btn btn-primary"><i
                                        class="fa fa-next"></i>下一步</button>
                            </div>
                            <a href="${createLink(controller: 'listing', action: 'listings')}" class="btn btn-default"><i class="fa fa-times"></i> 返回</a>
                        </div><!-- /.box-footer -->
                    </div><!-- /. box -->
                </form>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </section><!-- /.content -->

</div><!-- /.content-wrapper -->
</body>
</html>