<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ychef APP| Home</title>
    <meta name="layout" content="portal"/>
    <link href="/assets/home.css" rel="stylesheet">
</head>

<body>

<g:render template="/home/templates/headImg"/>

<!-- Page Content -->
<div class="container">

    <div class="space"></div><!-- Spacing -->

    <!-- Recommendation Tile-->
    <div class="row">
        <div class="col-lg-12 col-xs-12 text-center cGrey">
            <img width="50px" src="/assets/icons/food-icon-4-128x128.png" alt=""><h1>推 荐 菜 单</h1>
        </div>
    </div>
    <!-- /.Recommendation Tile -->
    <hr>
    <g:if test="${listings}">
        <g:if test="${listings[0]}">
            <div class="row bgc333 recommend-bk prelative">
                <div class="col-md-9 pd0">
                    <a href="${createLink(controller: 'listing', action: 'detailPortal', id: listings[0].id)}"><g:picture
                            class="col-md-12 pd0 img-responsive"
                            src="${listings[0].coverImage?.path}" alt=""/></a>
                </div>

                <div class="col-md-3 pd0">
                    <div class="caption pd30 mt20 cWhite">
                        <h3>${listings[0].title}</h3>
                        <br>
                        <p>${listings[0].introduction}</p>
                        <p class="price">$${listings[0].price} per serve</p>
                    </div>
                </div>
                <a href="${createLink(controller: 'listing', action: 'detailPortal', id: listings[0].id)}"
                   class="col-md-3 btn btn-success btn-recommend bottom-right">预定美食</a>
            </div>

            <div class="space"></div><!-- Spacing -->
        </g:if>
        %{--<g:if test="${listings[1]}">
            <div class="row bgc3d3e52 recommend-bk prelative">
                <div class="col-md-3 pd0">
                    <div class="caption pd30 mt20 cWhite">
                        <h3>${listings[1].title}</h3>
                        <br>

                        <p>${listings[1].introduction}</p>

                        <p class="price">$${listings[1].price} per serve</p>
                    </div>
                </div>
                <div class="col-md-9 pd0">
                    <a href="${createLink(controller: 'listing', action: 'detailPortal', id: listings[1].id)}"><g:picture class="col-md-12 pd0 img-responsive" src="${listings[1].coverImage?.path}" alt=""/></a>
                </div>
                <a href="${createLink(controller: 'listing', action: 'detailPortal', id: listings[1].id)}"
                   class="col-md-3 btn btn-success btn-recommend bottom-left">预定美食</a>
            </div>
        </g:if>--}%
    </g:if>

    <div class="space"></div><!-- Spacing -->

    <!-- Milestone Lists -->
    <div class="row">
        <div class="col-lg-12 col-xs-12 text-center cGrey">
            <img width="50px" src="/assets/icons/food-icon-3-128x128.png" alt=""><h1>北美生活方式</h1>
            %{--<small>厨说团队精选菜单</small>--}%
        </div>
    </div>
    <hr>
    <div class="space"></div><!-- Spacing -->

    <div class="row text-center">
        <section class="counter-section content-section">
            <div class="col-sm-6 col-md-3 wow slideInLeft">
                <div class="thumbnail bgtransparent">
                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 409.223 409.223" enable-background="new 0 0 409.223 409.223" style="fill: rgb(147, 62, 197);">
                        <path d="m214.614,289.788c0,5.522-4.477,10-10,10-35.045,0-65.562,28.375-70.983,66.002-0.718,4.983-4.995,8.575-9.885,8.575-0.475,0-0.955-0.033-1.439-0.104-5.466-0.787-9.259-5.857-8.472-11.323 3.278-22.75 14.113-43.69 30.51-58.964 16.744-15.597 38.147-24.187 60.269-24.187 5.523,0.001 10,4.479 10,10.001zm111.645-140.606c3.525,4.252 9.83,4.842 14.081,1.319 4.253-3.524 4.843-9.828 1.32-14.081-15.57-18.79-36.061-34.355-59.257-45.014-24.214-11.126-50.387-16.768-77.791-16.768-27.405,0-53.578,5.642-77.792,16.768-23.197,10.658-43.688,26.225-59.257,45.015-3.523,4.252-2.933,10.557 1.32,14.08 1.866,1.546 4.127,2.3 6.375,2.3 2.875,0 5.728-1.233 7.706-3.62 28.298-34.152 73.775-54.542 121.649-54.542 47.871-1.42109e-14 93.346,20.389 121.646,54.543zm74.894-66.34c-48.574-52.648-120.211-82.842-196.541-82.842-76.327,0-147.964,30.195-196.543,82.844-3.745,4.059-3.491,10.386 0.568,14.131 1.923,1.773 4.354,2.65 6.779,2.65 2.694,0 5.381-1.082 7.352-3.219 44.804-48.557 111.084-76.406 181.844-76.406 70.763,0 137.042,27.849 181.842,76.404 3.745,4.061 10.072,4.313 14.131,0.568 4.059-3.744 4.313-10.071 0.568-14.13zm-44.085,316.379c0,5.522-4.477,10-10,10h-24.73c-0.067,0.001-0.134,0.002-0.202,0.002s-0.134-0.001-0.202-0.002h-234.644c-0.135,0.002-0.269,0.002-0.403,0h-24.732c-5.523,0-10-4.478-10-10s4.477-10 10-10h14.933v-16.448c0-60.047 41.722-110.534 97.695-124.001v-9.537c0-16.447 13.381-29.828 29.829-29.828 16.448,0 29.83,13.381 29.83,29.828v9.537c55.974,13.467 97.696,63.954 97.696,124.001v16.448h14.932c5.521,0 9.998,4.477 9.998,10zm-162.285-153.597c3.242-0.248 6.524-0.375 9.829-0.375 3.309,0 6.583,0.126 9.83,0.375v-6.39c0-5.419-4.409-9.828-9.829-9.828-5.42,0-9.83,4.409-9.83,9.828v6.39zm117.354,127.148c0-52.898-38.393-96.996-88.779-105.888-0.413-0.045-0.817-0.114-1.212-0.207-5.706-0.939-11.564-1.429-17.531-1.429-5.971,0-11.833,0.49-17.542,1.431-0.391,0.091-0.79,0.159-1.197,0.204-50.388,8.892-88.787,52.99-88.787,105.889v16.448h215.049v-16.448zm-107.526-221.882c-32.381,0-61.458,16.234-75.883,42.369-2.669,4.835-0.913,10.918 3.922,13.587 4.834,2.668 10.918,0.913 13.587-3.923 10.741-19.459 33.654-32.033 58.373-32.033 24.718,0 47.629,12.574 58.369,32.033 1.823,3.304 5.24,5.17 8.764,5.17 1.634,0 3.291-0.401 4.823-1.247 4.835-2.669 6.592-8.752 3.923-13.587-14.423-26.134-43.498-42.369-75.878-42.369z" style="fill: rgb(104, 199, 198);"></path>
                    </svg>

                    <div class="caption counter-wrap">
                        <h4>本地新鲜食材选购</h4>
                    </div><!-- /.col-sm-4 -->

                </div>
            </div>

            <div class="col-sm-6 col-md-3 wow fadeInUp">
                <div class="thumbnail bgtransparent">
                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 409.221 409.221" enable-background="new 0 0 409.221 409.221" style="fill: rgb(147, 62, 197);">
                        <path d="m212.211,95.534c-39.313,0-71.297,31.984-71.297,71.298s31.983,71.297 71.297,71.297 71.297-31.983 71.297-71.297-31.984-71.298-71.297-71.298zm0,122.594c-28.285,0-51.297-23.012-51.297-51.297 0-28.286 23.012-51.298 51.297-51.298s51.297,23.012 51.297,51.298c-5.68434e-14,28.286-23.012,51.297-51.297,51.297zm101.82,38.467c3.941,3.868 4.002,10.199 0.134,14.142-1.958,1.995-4.547,2.996-7.139,2.996-2.527,0-5.056-0.952-7.003-2.862-0.347-0.34-0.7-0.655-1.051-0.938-4.304-3.461-4.987-9.755-1.526-14.06 3.46-4.303 9.754-4.988 14.06-1.526 0.86,0.693 1.71,1.448 2.525,2.248zm-101.82-124.09c-18.927,0-34.325,15.398-34.325,34.326 0,18.927 15.398,34.325 34.325,34.325 18.928,0 34.327-15.398 34.327-34.325 0-18.927-15.399-34.326-34.327-34.326zm0,48.652c-7.898,0-14.325-6.427-14.325-14.325 0-7.899 6.427-14.326 14.325-14.326 7.9,0 14.327,6.427 14.327,14.326 0,7.898-6.427,14.325-14.327,14.325zm-107.305-14.325c0-59.168 48.137-107.305 107.305-107.305 27.25,0 53.23,10.229 73.156,28.803 4.04,3.766 4.263,10.093 0.497,14.133-3.767,4.042-10.095,4.263-14.134,0.497-16.211-15.111-37.349-23.433-59.52-23.433-48.14,0-87.305,39.165-87.305,87.305s39.165,87.304 87.305,87.304 87.305-39.164 87.305-87.304v-16.129c0-14.407 11.721-26.128 26.128-26.128h49.753c3.321,0 6.128-2.807 6.128-6.129 0-3.321-2.807-6.128-6.128-6.128h-46.278c-14.407,0-26.128-11.722-26.128-26.129s11.721-26.128 26.128-26.128h17.735c3.321,0 6.128-2.807 6.128-6.128 0-5.522 4.478-10 10-10s10,4.478 10,10c0,14.407-11.721,26.128-26.128,26.128h-17.735c-3.321,0-6.128,2.807-6.128,6.128 0,3.322 2.807,6.129 6.128,6.129h46.278c14.407,0 26.128,11.721 26.128,26.128s-11.721,26.129-26.128,26.129h-49.753c-3.321,0-6.128,2.807-6.128,6.128v16.129c0,59.167-48.137,107.304-107.305,107.304s-107.304-48.137-107.304-107.304zm212.403,70.835c-4.671-2.947-6.067-9.123-3.12-13.794 2.948-4.67 9.122-6.069 13.794-3.12 14.703,9.278 25.495,23.54 30.387,40.156 1.56,5.298-1.471,10.857-6.769,12.417-0.942,0.277-1.894,0.41-2.828,0.41-4.322,0-8.307-2.823-9.589-7.179-3.518-11.949-11.287-22.209-21.875-28.89zm-256.002-79.069l4.893,14.339c1.418,4.157 5.303,6.773 9.463,6.773 1.071,0 2.16-0.174 3.23-0.539 5.227-1.783 8.019-7.466 6.234-12.693l-4.893-14.339c16.069-14.275 21.82-39.791 13.564-63.988-9.315-27.295-33.761-45.028-58.13-42.155-1.406,0.166-2.762,0.628-3.977,1.356-21.04,12.626-29.55,41.601-20.234,68.895 8.257,24.199 28.403,40.878 49.85,42.351zm-21.133-92.894c14.142-0.406 28.808,11.651 34.697,28.906 4.308,12.627 3.2,25.898-2.191,35.389l-10.885-31.9c-1.783-5.228-7.468-8.02-12.693-6.234-5.227,1.783-8.019,7.466-6.234,12.693l10.885,31.901c-10.068-4.216-19.059-14.043-23.367-26.672-5.89-17.254-1.662-35.715 9.788-44.083zm8.358,199.8c-0.87,4.836-5.083,8.23-9.83,8.23-0.588,0-1.184-0.052-1.783-0.16-5.436-0.979-9.049-6.178-8.07-11.613 5.677-31.544 25.018-58.684 53.063-74.46 4.812-2.709 10.91-1.001 13.618,3.813 2.708,4.813 1.001,10.91-3.813,13.618-22.828,12.842-38.568,34.919-43.185,60.572zm350.689,23.288h-389.221c-5.522,0-10,4.478-10,10s4.478,10 10,10h76.691l31.254,51.672c1.812,2.994 5.057,4.824 8.557,4.824h156.218c3.5,0 6.745-1.83 8.557-4.824l31.254-51.672h76.69c5.522,0 10-4.478 10-10s-4.478-10-10-10zm-122.14,56.496h-144.94l-22.075-36.496h189.091l-22.076,36.496zm-146.893-90.178c2.904,4.698 1.449,10.86-3.248,13.764-0.916,0.566-1.768,1.234-2.531,1.986-1.947,1.917-4.481,2.873-7.014,2.873-2.587,0-5.171-0.997-7.128-2.985-3.874-3.937-3.824-10.268 0.112-14.142 1.827-1.799 3.861-3.395 6.045-4.744 4.7-2.905 10.862-1.448 13.764,3.248zm-34.946-33.585c4.61-3.037 10.813-1.768 13.854,2.844 3.04,4.61 1.768,10.813-2.844,13.854-10.14,6.687-17.603,16.749-21.014,28.335-1.282,4.355-5.268,7.179-9.589,7.179-0.935,0-1.886-0.133-2.828-0.41-5.298-1.56-8.328-7.119-6.769-12.417 4.745-16.114 15.111-30.101 29.19-39.385zm280.648,43.978c-4.392-24.405-19.101-45.877-40.354-58.908-4.709-2.887-6.186-9.044-3.299-13.752 2.886-4.709 9.042-6.187 13.752-3.299 26.111,16.009 44.185,42.404 49.585,72.418 0.979,5.436-2.636,10.635-8.071,11.612-0.598,0.107-1.194,0.16-1.782,0.16-4.748,0.001-8.961-3.393-9.831-8.231z" style="fill: rgb(104, 199, 198);"></path>
                    </svg>
                    <div class="caption counter-wrap">
                        <h4>五星级就餐体验</h4>
                    </div><!-- /.col-sm-4 -->
                </div>
            </div>

            <div class="col-sm-6 col-md-3 wow slideInDown">
                <div class="thumbnail bgtransparent">
                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 409.222 409.222" enable-background="new 0 0 409.222 409.222" style="fill: rgb(147, 62, 197);">
                        <path d="m289.97,247.764c0,5.523-4.478,10-10,10h-50.808c-5.522,0-10-4.477-10-10s4.478-10 10-10h50.808c5.523,0 10,4.477 10,10zm-34.378,20.602h-26.43c-5.522,0-10,4.477-10,10s4.478,10 10,10h26.43c5.522,0 10-4.477 10-10s-4.477-10-10-10zm-97.47-185.387c0-19.248 20.421-34.325 46.489-34.325s46.489,15.078 46.489,34.325c0,19.249-20.421,34.326-46.489,34.326s-46.489-15.077-46.489-34.326zm20,0c0,6.763 11.328,14.326 26.489,14.326s26.489-7.563 26.489-14.326c0-6.762-11.328-14.325-26.489-14.325s-26.489,7.563-26.489,14.325zm41.041,134.183c0,5.523 4.478,10 10,10h50.808c5.522,0 10-4.477 10-10s-4.478-10-10-10h-50.808c-5.523,0-10,4.477-10,10zm148.52,182.06c0,5.523-4.478,10-10,10h-306.144c-5.522,0-10-4.477-10-10s4.478-10 10-10h21.44v-62.979-316.243c0-5.523 4.478-10 10-10h243.262c5.522,0 10,4.477 10,10v379.222h21.442c5.523,0 10,4.477 10,10zm-251.943-62.979h-22.761v52.979h22.761v-52.979zm157.742,0h-137.742v52.979h137.742v-52.979zm42.759,0h-22.759v52.979h22.759v-52.979zm0-316.243h-223.262v296.243h32.655c0.07-0.001 0.141-0.001 0.211,0h157.531c0.07-0.001 0.141-0.001 0.211,0h32.653v-296.243zm-186.989,207.162h26.43c5.522,0 10-4.477 10-10s-4.478-10-10-10h-26.43c-5.522,0-10,4.477-10,10s4.478,10 10,10zm0-61.204h50.807c5.522,0 10-4.477 10-10s-4.478-10-10-10h-50.807c-5.522,0-10,4.477-10,10s4.478,10 10,10zm0,30.602h50.807c5.522,0 10-4.477 10-10s-4.478-10-10-10h-50.807c-5.522,0-10,4.477-10,10s4.478,10 10,10z" style="fill: rgb(104, 199, 198);"></path>
                    </svg>

                    <div class="caption counter-wrap">
                        <h4>采购清洁一站式服务</h4>
                    </div><!-- /.col-sm-4 -->
                </div>
            </div>

            <div class="col-sm-6 col-md-3 wow slideInRight">
                <div class="thumbnail bgtransparent">
                    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" viewBox="0 0 409.223 409.223" enable-background="new 0 0 409.223 409.223" style="fill: rgb(147, 62, 197);">
                        <path d="m240.153,226.521l52.812,40.237c4.393,3.347 5.241,9.621 1.894,14.015-1.968,2.583-4.947,3.94-7.962,3.94-2.112,0-4.242-0.667-6.053-2.047l-52.812-40.237c-4.393-3.347-5.241-9.621-1.894-14.015 3.347-4.392 9.621-5.243 14.015-1.893zm-131.711-139.567c-17.907-18.896-25.428-46.52-21.21-78.271 0.662-4.97 4.9-8.683 9.914-8.683h8.943c3.047,0 5.927,1.389 7.824,3.772 2.704,3.397 5.587,6.371 8.669,8.936 0.14,0.109 0.277,0.223 0.412,0.34 5.745,4.684 12.179,7.964 19.441,9.935 11.575,3.142 32.172,2.57 48.717,2.111 5.724-0.159 11.13-0.309 15.888-0.309 24.353,0 44.164,19.813 44.164,44.165 0,12.65-5.345,24.074-13.896,32.134v35.308c0,0.617-0.058,1.233-0.171,1.84l-9.142,48.838c-3.13,16.73-14.597,27.541-29.212,27.541h-51.818c-14.616,0-26.082-10.811-29.211-27.542l-9.141-48.83c-0.113-0.606-0.171-1.223-0.171-1.84v-49.445zm108.866,24.956c-3.295,0.787-6.734,1.205-10.268,1.205-3.343,0-6.691,0.036-10.035,0.072-23.252,0.253-47.13,0.511-68.563-10.946v33.229l8.97,47.919c0.351,1.875 2.458,11.221 9.553,11.221h51.818c7.095,0 9.203-9.347 9.554-11.22l8.971-47.927v-23.553zm-92.402-36.759c0.08,0.076 0.161,0.153 0.241,0.229 0.093,0.083 0.184,0.169 0.272,0.256 19.418,18.115 44.67,17.846 71.368,17.554 3.416-0.037 6.837-0.074 10.252-0.074 5.135,0 9.899-1.609 13.818-4.351 0.329-0.278 0.676-0.535 1.039-0.769 5.661-4.427 9.307-11.318 9.307-19.045 0-13.325-10.84-24.166-24.164-24.166-4.48,0-9.752,0.146-15.333,0.301-15.848,0.438-33.48,0.93-47.264-1.276 10.225,8.784 21.448,12.108 30.699,13.105 5.49,0.592 9.462,5.523 8.87,11.015-0.592,5.49-5.519,9.459-11.014,8.87-16.888-1.82-47.482-10.788-64.854-50.145-0.691-0.609-1.376-1.234-2.051-1.873-0.147,20.886 6.345,38.463 18.814,50.369zm72.559,285.787l-14.591-14.524v-47.269c0-5.522-4.478-10-10-10s-10,4.478-10,10v47.269l-43.001,42.806h-22.254v-62.978c0-5.522-4.478-10-10-10s-10,4.478-10,10v72.978c0,5.522 4.478,10 10,10h36.383c2.645,0 5.181-1.047 7.055-2.913l41.817-41.627 10.481,10.433c3.913,3.896 10.246,3.882 14.142-0.032 3.897-3.916 3.882-10.248-0.032-14.143zm8.937-121.935c-2.16-5.08-8.028-7.45-13.116-5.288l-20.412,8.682-20.411-8.682c-5.088-2.162-10.956,0.207-13.116,5.288-2.162,5.082 0.206,10.955 5.288,13.116l2.688,1.144-2.688,1.144c-5.082,2.161-7.45,8.033-5.288,13.116 2.161,5.082 8.031,7.452 13.116,5.288l20.411-8.681 20.41,8.681c1.277,0.543 2.604,0.801 3.909,0.801 3.89,0 7.589-2.284 9.207-6.089 2.162-5.082-0.206-10.955-5.288-13.116l-2.688-1.144 2.689-1.144c5.083-2.161 7.451-8.033 5.289-13.116zm171.083,160.218c0,5.522-4.478,10-10,10h-19.208c-0.066,0.001-0.134,0.002-0.201,0.002s-0.135-0.001-0.201-0.002h-121.944c-0.133,0.002-0.27,0.002-0.402,0h-19.206c-5.522,0-10-4.478-10-10s4.478-10 10-10h9.407v-3.766c0-35.853 26.646-65.598 61.175-70.472v-8.311c0-5.522 4.478-10 10-10s10,4.478 10,10v8.311c34.527,4.877 61.172,34.621 61.172,70.472v3.766h9.409c5.522,0 9.999,4.477 9.999,10zm-39.409-13.766c0-28.216-22.956-51.172-51.172-51.172-28.218,0-51.175,22.956-51.175,51.172v3.766h102.347v-3.766zm-218.412-157.038c-3.345-4.394-9.619-5.246-14.014-1.898l-69.971,53.27c-2.484,1.892-3.942,4.835-3.942,7.957v111.476c0,5.522 4.478,10 10,10s10-4.478 10-10v-106.522l66.028-50.27c4.395-3.344 5.245-9.618 1.899-14.013z" style="fill: rgb(104, 199, 198);"></path>
                    </svg>

                    <div class="caption counter-wrap">
                        <h4>宴会快捷预订流程</h4>
                    </div><!-- /.col-sm-4 -->
                </div>
            </div>
        </section>
    </div>
    <!-- /Milestone Lists -->

    <div class="space"></div><!-- Spacing -->


    <!-- Cates Lists -->
    <div class="row">
        <div class="col-lg-12 col-xs-12 text-center cGrey">
            <img width="50px" src="/assets/icons/food-icon-1-128x128.png" alt=""><h1>具 体 类 别</h1>
            %{--<small>厨说团队精选菜单</small>--}%
        </div>
    </div>
    <hr>
    <div class="space"></div><!-- Spacing -->

    <div id="custom_carousel" class="carousel slide text-center" data-ride="carousel">
        <div class="controls">
            <ul class="nav">
                <li class="active wow slideInLeft" data-target="#custom_carousel" data-slide-to="0"><img class="img-responsive" src="/assets/icons/dinner-128x128.png"><h4>私人聚会</h4></li>

                <li class="wow fadeInUp" data-target="#custom_carousel" data-slide-to="1"><img class="img-responsive" src="/assets/icons/restaurant-128x128.png"><h4>商务宴请</h4></li>

                <li class="wow fadeInDown" data-target="#custom_carousel" data-slide-to="2"><img class="img-responsive" src="/assets/icons/cocktail-128x128.png"><h4>鸡尾酒会</h4></li>

                <li class="wow slideInRight" data-target="#custom_carousel" data-slide-to="3"><img class="img-responsive" src="/assets/icons/home-128x128.png"><h4>乔迁喜宴</h4></li>
            </ul>
        </div>
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <img src="/assets/gallary/feature-2-1920x1280.jpg" class="img-responsive">
                            <div class="col-md-12 gallary_description">
                                <h2>Julia Liang</h2>
                                <p>2015年6月成为厨说客户.</p>
                                <p>我曾经几次在家里举办私人小聚会都使用Ychef 的厨师，我每次都很满意.</p>
                            </div>
                        </div>
                       
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <img src="/assets/gallary/feature-1-1920x1280.jpg" class="img-responsive">
                            <div class="col-md-12 gallary_description">
                                <h2>Marrisa Fu</h2>
                                <p>2016年4月成为厨说客户. 已使用6次.</p>
                                <p>我经常在家里请客，请中国来的朋友或者我的生意伙伴在家里，凡是重要的客人，<br>我都会选用ychef 厨说－让我放心的几个平台.</p>
                            </div>
                        </div>
                       
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <img src="/assets/gallary/feature-3-1920x1280.jpg" class="img-responsive">
                            <div class="col-md-12 gallary_description">
                                <h2>Jack Wang</h2>
                                <p>2015年10月成为厨说客户.</p>
                                <p>从上海来到温哥华，我们习惯了热闹，温哥华的几乎没有夜生活，发现了厨说以后，我经常叫上同学们或者我事业的伙伴们，<br>在我家举办鸡尾酒会，我一直以来都在选择Ychef厨说</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <img src="/assets/gallary/feature-5-1920x1280.jpg" class="img-responsive">
                            <div class="col-md-12 gallary_description">
                                <h2>Andrew Li</h2>
                                <p>2015年11月成为厨说客户.</p>
                                <p>我在温哥华做地产生意，在2015年里我搬了5次家，每次搬家我都选择ychef 厨说为我们举办晚宴来温暖每一所房子，<br>这个团队策划很用心，很专业，符合五星级的感受.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Item -->
        </div>
        <!-- End Carousel Inner -->

    </div>
    <!-- End Carousel -->

    <div class="space"></div><!-- Spacing -->

    <!-- New Menu Tile-->
    <div class="row">
        <div class="col-lg-12 col-xs-12 text-center cGrey">
            <img width="50px" src="/assets/icons/food-icon-2-128x128.png" alt=""><h1>最 新 食 谱</h1>
            %{--<small>厨说团队最新食谱</small>--}%
        </div>
    </div>
    <!-- /.New Menu Tile -->
    <hr>
    <!-- New Menu Details -->
    <div class="row text-center">
        <div class="col-md-4 col-sm-12 hero-feature wow slideInLeft">
            <div class="thumbnail">
                <img class="img-responsive" src="${listings[1]?.coverImage?.path}" alt="">
                <div class="caption">
                    <h3>${listings[1]?.title}</h3>
                    <p>${listings[1]?.introduction}</p>
                    <p class="price">$${listings[1].price} per serve</p>
                    <p>
                        <a href="${createLink(controller: 'listing', action: 'detailPortal', id: listings[1]?.id)}" class="btn btn-success">预定美食</a>
                        <a href="${createLink(controller: 'listing', action: 'detailPortal', id: listings[1]?.id)}" class="btn btn-default">菜单细节</a>
                    </p>
                </div>
            </div>
        </div>

        <div class="col-md-4 col-sm-12 hero-feature wow slideInUp">
            <div class="thumbnail">
                <img class="img-responsive" src="${listings[2]?.coverImage?.path}" alt="">
                <div class="caption">
                    <h3>${listings[2]?.title}</h3>
                    <p>${listings[2]?.introduction}</p>
                    <p class="price">$${listings[2]?.price} per serve</p>
                    <p>
                        <a href="${createLink(controller: 'listing', action: 'detailPortal', id: listings[2]?.id)}" class="btn btn-success">预定美食</a>
                        <a href="${createLink(controller: 'listing', action: 'detailPortal', id: listings[2]?.id)}" class="btn btn-default">菜单细节</a>
                    </p>
                </div>
            </div>
        </div>

        <div class="col-md-4 col-sm-12 hero-feature wow slideInRight">
            <div class="thumbnail">
                <img class="img-responsive" src="${listings[3]?.coverImage?.path}" alt="">
                <div class="caption">
                    <h3>${listings[3]?.title}</h3>
                    <p>${listings[3]?.introduction}</p>
                    <p class="price">$${listings[3]?.price} per serve</p>
                    <p>
                        <a href="${createLink(controller: 'listing', action: 'detailPortal', id: listings[3]?.id)}" class="btn btn-success">预定美食</a>
                        <a href="${createLink(controller: 'listing', action: 'detailPortal', id: listings[3]?.id)}" class="btn btn-default">菜单细节</a>
                    </p>
                </div>
            </div>
        </div>
    </div>

    %{--<div class="row text-center">
        <div class="col-md-4 col-sm-12 hero-feature">
            <div class="thumbnail">
                <img class="img-responsive" src="/assets/menu1-320x320.png" alt="">
                <div class="caption">
                    <h3>培根乳酪意大利小方饺</h3>
                    <p>温哥华最棒的手工意大利方饺，经过厨师Lekker多年研制而成的特别秘密配方...</p>
                    <p class="price">$16.40 / $4.10 per serve</p>
                    <p>
                        <a href="menu-details.html" class="btn btn-success">预定美食</a> <a href="menu-details.html" class="btn btn-default">菜单细节</a>
                    </p>
                </div>
            </div>
        </div>

        <div class="col-md-4 col-sm-12 hero-feature">
            <div class="thumbnail">
                <img class="img-responsive" src="/assets/menu2-320x320.png" alt="">
                <div class="caption">
                    <h3>培根乳酪意大利小方饺</h3>
                    <p>温哥华最棒的手工意大利方饺，经过厨师Lekker多年研制而成的特别秘密配方...</p>
                    <p class="price">$16.40 / $4.10 per serve</p>
                    <p>
                        <a href="menu-details.html" class="btn btn-success">预定美食</a> <a href="menu-details.html" class="btn btn-default">菜单细节</a>
                    </p>
                </div>
            </div>
        </div>

        <div class="col-md-4 col-sm-12 hero-feature">
            <div class="thumbnail">
                <img class="img-responsive" src="/assets/menu3-320x320.png" alt="">
                <div class="caption">
                    <h3>培根乳酪意大利小方饺</h3>
                    <p>温哥华最棒的手工意大利方饺，经过厨师Lekker多年研制而成的特别秘密配方...</p>
                    <p class="price">$16.40 / $4.10 per serve</p>
                    <p>
                        <a href="menu-details.html" class="btn btn-success">预定美食</a> <a href="menu-details.html" class="btn btn-default">菜单细节</a>
                    </p>
                </div>
            </div>
        </div>
    </div>--}%
</div>
<!-- /.container -->
<!-- /.bottom sign -->
<g:render template="/home/templates/bottomSign"/>
</body>
</html>

