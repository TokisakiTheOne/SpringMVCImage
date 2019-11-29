<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="JS代码,图片列表,显示切换,jQuery特效"/>
    <meta name="description" content="jQuery实现的图片列表显示切换效果，更多图片列表,显示切换,jQuery特效请访问脚本分享网JS代码频道。"/>
    <title>jQuery实现的图片列表显示切换效果</title>
    <script type="text/javascript" src="../../js/jquery-latest.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            $("a.switch_thumb").toggle(function () {
                $(this).addClass("swap");
                $("ul.display").fadeOut("fast", function () {
                    $(this).fadeIn("fast").addClass("thumb_view");
                });
            }, function () {
                $(this).removeClass("swap");
                $("ul.display").fadeOut("fast", function () {
                    $(this).fadeIn("fast").removeClass("thumb_view");
                });
            });

        });
    </script>
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
            list-style-type: none;
        }

        a, img {
            border: 0;
        }

        body {
            font: 12px/180% Arial, Helvetica, sans-serif, "新宋体";
            background: #111;
        }

        .container {
            width: 758px;
            margin: 50px auto;
            overflow: hidden;
        }

        /* display */
        ul.display {
            float: left;
            width: 756px;
            padding: 0;
            list-style: none;
            border-top: 1px solid #333;
            border-right: 1px solid #333;
            background: #222;
        }

        ul.display li {
            float: left;
            width: 754px;
            padding: 10px 0;
            border-top: 1px solid #111;
            border-right: 1px solid #111;
            border-bottom: 1px solid #333;
            border-left: 1px solid #333;
        }

        ul.display li a {
            color: #e7ff61;
            text-decoration: none;
        }

        ul.display li .content_block {
            padding: 0 10px;
        }

        ul.display li .content_block h2 {
            padding: 5px;
            font-weight: normal;
            font-size: 1.7em;
        }

        ul.display li .content_block p {
            padding: 5px 5px 5px 245px;
            font-size: 1.2em;
            color: #fff;
        }

        ul.display li .content_block a img {
            padding: 5px;
            border: 2px solid #ccc;
            background: #fff;
            margin: 0 15px 0 0;
            float: left;
        }

        ul.thumb_view li {
            width: 250px;
        }

        ul.thumb_view li h2 {
            display: inline;
        }

        ul.thumb_view li p {
            display: none;
        }

        ul.thumb_view li .content_block a img {
            margin: 0 0 10px;
        }

        a.switch_thumb {
            width: 122px;
            height: 26px;
            line-height: 26px;
            padding: 0;
            margin: 10px 0;
            display: block;
            background: url(../../images/switch.gif) no-repeat;
            outline: none;
            text-indent: -9999px;
        }

        a:hover.switch_thumb {
            filter: alpha(opacity=75);
            opacity: .75;
            -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=75)";
        }

        a.swap {
            background-position: left bottom;
        }
    </style>
</head>

<body>

<div class="container">
    <a href="javascript:void(0);" class="switch_thumb">Switch Thumb</a>
    <ul class="display">
        <c:forEach items="${imgs}" var="img">
            <li>
                <div class="content_block">
                    <a href=""><img src="../../${img.imgUrl}.gif" alt=""/></a>
                    <h2><a href="">${img.imgName}</a></h2>
                    <p>${img.imgDesc}</p>
                </div>
            </li>
        </c:forEach>
    </ul>
</div>

</body>
</html>