<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ychef APP| menu detail</title>
    <meta name="layout" content="portal"/>
</head>

<body>

<div class="row menu">

    <div id="sticky" class="menu-reserve col-md-4 border-b pb20" id="menu-event-section">
        <div class="text-center border-b"><h4>MENU DETAILS <br><small>菜 单 细 节</small></h4></div>

        <div class="row">
            <div class="col-md-8 col-md-offset-2 col-sm-6">
                <form action="" class="form-horizontal">
                    <h1>${listing.title}</h1>
                    <br>
                    <label><i class="glyphicon glyphicon-list-alt"></i>  Reservation Info</label>

                    <div class="table-responsive">
                        <br>
                        <table class="table">
                            <tbody>
                            <tr>
                                <th scope="row"><i class="glyphicon glyphicon-usd"></i></th>
                                <td><span>单价: $${listing.price}</span></td>
                            </tr>
                            <tr>
                                <th scope="row"><i class="glyphicon glyphicon-user"></i></th>
                                <td><span>人数:${listing.quantity}</span></td>
                            </tr>
                            <tr>
                                <th scope="row"><i class="glyphicon glyphicon-calendar"></i></th>
                                <td><span>GST:5%</span></td>
                            </tr>
                            <tr></tr>
                            </tbody>
                        </table>
                    </div>

                    <label><i class="glyphicon glyphicon-calendar"></i>  Select Reservation Date</label>
                    <hr>

                    <div id="calendar-portal"></div>
                    <input type="hidden" id="my_hidden_input">
                    <label for=""><i class="glyphicon glyphicon-user"></i>  How many people?</label>
                    <select id="people-quantity" class="form-control">
                        <g:set var="counter" value="${1}"/>
                        <g:set var="limit" value="${listing.quantity}"/>
                        <g:while test="${counter <= limit}">
                            <option>${counter}</option>
                            <g:set var="counter" value="${counter + 1}"/>
                        </g:while>
                    </select>
                    <br>
                    <p id="calendar-reserve-error-msg" class="text-red hide" ><small><i class="fa fa-times-circle-o"></i> 请先选择行程。</small></p>
                    <div><button id="btn-reserve-event" eventId="" listingId="${listing?.id}" type="button"
                                 class="btn-lg btn-ghost btn-block" ${disabled?"disabled":""}>预定</button></div>
                    <p id="calendar-preview-error-msg" class="text-red" ${disabled?"":"hidden"}><small> 提示：这里是预览界面，无法进行预定。</small></p>
                </form>
            </div>
        </div>
    </div>

    <div class="menu-details col-md-8">
        <g:picture
                class="col-md-12 pd0 img-responsive"
                src="${listing.coverImage.path}" alt=""/>
        <div class="row menu-content">
            <div class="menu-sign col-md-8 col-md-offset-2">
                <ul class="list-inline text-center border-b">
                    <li><i class="fz60 glyphicon glyphicon-time cGreen"></i><br><strong><small>1 hour 20 min</small></strong>
                    </li>
                    <li><i class="fz60 glyphicon glyphicon-cutlery cGreen"></i><br><strong><small>5 courses</small></strong>
                    </li>
                    <li><i class="fz60 glyphicon glyphicon-usd cGreen"></i><br><strong><small>$${listing.price} per</small>
                    </strong></li>
                    <li><i class="fz60 glyphicon glyphicon-user cGreen"></i><br><strong><small>Max ${listing.quantity} people</small>
                    </strong></li>
                </ul>
            </div>
        </div>
        <br>

        <div id="sticky-anchor"></div>

        <div class="row border-t">
            <div class="col-md-6 col-md-offset-3 text-center pb20">
                <br>

                <h1>Menu Details <small>菜 单 细 节</small></h1>
                <br>
                ${listing.description.encodeAsRaw()}
            </div>
        </div>
        %{--<img src="/assets/chef-1860x862.png" alt="">--}%
    </div>

</div>

</body>
</html>

