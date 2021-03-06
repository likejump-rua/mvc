<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 3 | Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="/static/plugins/fontawesome-free/css/all.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="/static/css/adminlte.min.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">


    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        {{/*                        <h1 class="m-0 text-dark">{{.BigTitle}}</h1>*/}}
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->

        <!-- Main content -->

        <button type="button" class="btn btn-block btn-outline-primary" style="width: 10%" onclick="add()">收藏</button>

        <div id="base" class="">

            <div id="tests">  </div>


            <!-- Unnamed (矩形) -->
            <div id="u11" class="ax_default _三级标题">
                <div id="u11_div" class=""></div>
                <!-- Unnamed () -->
                <div id="u12" class="text">
                    <p><span>作者：顾康 最后更改于 今天 13:31</span></p>
                </div>
            </div>


    </div>

        <input type="hidden" id="articleid" value="{{.articleId}}">
    <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="/static/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="/static/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="/static/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/static/js/demo.js"></script>

<script type="text/javascript">
    window.onload = function () {
        var id = $("#articleid").val()
        $.ajax({
            type:"post",
            url:"/getArticle",
            data:{articleid:id},
            success:function(data){
                console.log("data:"+data[0].Detail);
                $("#tests").html(data[0].Detail);
            }
        });
    }

    function add() {
        var id = $("#articleid").val()
        $.ajax({
            type:"post",
            url:"/addCollection",
            data:{articleid:id},
            success:function(data){
                alert("收藏成功！")
            }
        });
    }


</script>

</body>
</html>