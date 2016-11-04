<!DOCTYPE html>
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
                活动时间
                <small>Menu Calendar</small>
            </h1>
            <!-- <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Dashboard</li>
          </ol> -->
        </section>

        <!-- Main content -->
        <section class="content" id="calendar-section">
            <div class="row">
                <div class="col-md-3">

                    <div class="box box-primary">
                        <div class="box-header">
                            <h3 class="box-title">1. 创建活动</h3>
                        </div>
                        <div class="box-body">
                            <!-- Start time Picker -->
                              <div class="bootstrap-timepicker">
                                <div class="form-group">
                                  <label>开始时间:</label>
                                  <div class="input-group">
                                    <input id="start-timepicker" type="text" class="form-control timepicker">
                                    <div class="input-group-addon">
                                      <i class="fa fa-clock-o"></i>
                                    </div>
                                  </div><!-- /.input group -->
                                </div><!-- /.form group -->
                              </div>
                              <!-- End time Picker -->
                              <div class="bootstrap-timepicker">
                                <div class="form-group">
                                  <label>结束时间:</label>
                                  <div class="input-group">
                                    <input id="end-timepicker" type="text" class="form-control timepicker">
                                    <div class="input-group-addon">
                                      <i class="fa fa-clock-o"></i>
                                    </div>
                                  </div><!-- /.input group -->
                                </div><!-- /.form group -->
                                <p id="time-error-msg" class="text-red hide" ><small><i class="fa fa-times-circle-o"></i> 结束时间需大于开始时间</small></p>
                              </div>
                        <button id="add-new-event" type="button" class="btn btn-primary btn-flat btn-block">添加时间</button>
                        </div><!-- /.box-body -->
                    </div><!-- /.box -->

                    <div class="box box-solid">
                        <div class="box-header with-border">
                            <h4 class="box-title">2. 选择日期</h4>
                        </div>

                        <div class="box-body">
                            <p class="text-aqua"><small><i class="fa fa-info-circle"></i> 请拖动已生成活动到日历当中.</small></p>
                            <!-- the events -->
                            <div id="external-events">
                                <div class="checkbox">
                                    <label for="drop-remove">
                                        <input type="checkbox" id="drop-remove">
                                        移除已添加活动
                                    </label>
                                </div>
                            </div>
                        </div><!-- /.box-body -->
                    </div><!-- /. box -->
                    <p id="calendar-error-msg" class="text-red hide" ><small><i class="fa fa-times-circle-o"></i> 请至少安排一天行程。</small></p>
                    <button type="button" id="btn-calendar" class="btn btn-success btn-block btn-flat" listingId="${listing?.id}">提交</button>

                    <br>
                    <div class="modal fade" id="add-event-success-modal" tabindex="-1" role="dialog" data-backdrop="static"
                         data-keyboard="false" aria-labelledby="myModalLabel">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h4 class="modal-title" id="myModalLabel">添加成功</h4>
                                </div>
                                <div class="modal-body">
                                    <p>添加成功，您可以返回Menu列表，也可以继续添加Menu。</p>
                                </div>
                                <div class="modal-footer">
                                    <a type="button" href="${createLink(controller: 'listing', action: 'listings')}" class="btn btn-default">返回列表</a>
                                    <a type="button" href="${createLink(controller: 'listing', action: 'create')}" class="btn btn-primary">继续添加</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div id="add-event-fail" class="alert alert-danger hide" role="alert">
                        <p class="text-center"><strong>添加失败!</strong></p>
                        <br>
                        <div class="text-center">
                            <a type="button" href="${createLink(controller: 'listing', action: 'listings')}" class="btn btn-default">返回列表</a>
                            <a type="button" href="${createLink(controller: 'listing', action: 'create')}" class="btn btn-default">重新添加</a>
                        </div>
                    </div>
                </div><!-- /.col -->



                <div class="col-md-9">
                    <div class="box box-primary">
                        <div class="box-body no-padding">
                            <!-- THE CALENDAR -->
                            <div id="calendar"></div>
                        </div><!-- /.box-body -->
                    </div><!-- /. box -->
                </div><!-- /.col -->
            </div><!-- /.row -->
        </section><!-- /.content -->

        
    </div><!-- /.content-wrapper -->
</div><!-- ./wrapper -->
</body>
</html>
