<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>众筹管理后台</title>
	<link rel="stylesheet" href="css/bootstrap.min.css" />
	<link rel="stylesheet" href="css/dashboard.css" />
</head>
<body>
 <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">众筹管理平台</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
        	
          <ul class="nav navbar-nav navbar-right">
          	<li><a href="index.html">首页</a></li>
          	<li><a href="#">欢迎, 张三</a></li>
            <li><a href="#" title="修改个人资料和密码的页面">设置</a></li>
            <li><a href="#" title="退出登录">退出</a></li>
          </ul>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
        	<ul class="nav nav-sidebar">
            <li class="active"><a href="index.html">首页</a></li>
           </ul>
          <ul class="nav nav-sidebar">
            <li><a href="products.html">所有项目*</a></li>
            <li><a href="#">项目审核</a></li>
            <li><a href="#">项目跟踪</a></li>
            <li><a href="#">项目评论</a></li>
            <li><a href="classify/all_classity.html">项目分类*</a></li>
            <li><a href="#">项目推荐</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li><a href="">注册用户</a></li>
            <li><a href="">用户资金</a></li>
            <li><a href="">用户日志</a></li>
            <li><a href="">实名审核</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li><a href="">新闻管理</a></li>
            <li><a href="">问题管理</a></li>
            <li><a href="">管理用户</a></li>
            <li><a href="">管理日志</a></li>
          </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">今日众筹</h1>

        <div class="jumbotron">
  <h2>今日新增众筹资金：<span id="moneyCount" style="color:#4b63bc;font-size: 1.2em;"></span>￥</h2>
  <h5>昨日总众筹资金：18900￥</h5>
  <h2>今日新增众筹项目：10</h2>
  <h5>昨日新增众筹项目</h5>
  <p><a class="btn btn-primary btn-lg" href="#" role="button">查看详细</a></p>
</div>

          <div><h2 class="sub-header" style="display: inline-block;">实时数据</h2><span style="display: inline-block;">(每5s自动刷新)</span></div>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>时间</th>
                  <th>类型</th>
                  <th>记录</th>
                  <th>操作</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>10秒前</td>
                  <td>新众筹项目</td>
                  <td>用户xxx发起了新的众筹项目xxxxx</td>
                  <td><a href="#">查看项目</a></td>
                </tr>
                <tr>
                  <td>15秒前</td>
                  <td>项目达标</td>
                  <td>众筹项目xxxxx已达标</td>
                  <td><a href="#">查看项目</a></td>
                </tr>
                 <tr>
                  <td>20秒前</td>
                  <td>众筹资金</td>
                  <td>用户xxx参与了众筹项目xxxxx</td>
                  <td><a href="#"></a></td>
                </tr>
                 <tr>
                  <td>1分前</td>
                  <td>项目达标</td>
                  <td>众筹项目xxxxx已达标</td>
                  <td><a href="#">查看项目</a></td>
                </tr>
                  <tr>
                  <td>5分前</td>
                  <td>众筹资金</td>
                  <td>用户xxx参与了众筹项目xxxxx</td>
                  <td><a href="#"></a></td>
                </tr>
               
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
		
		<script type="text/javascript" src="js/jquery1.12.4.min.js" ></script>
		<script type="text/javascript" src="js/bootstrap.min.js" ></script>
		<script type="text/javascript" src="js/countUp.js" ></script>
		<script>
			$(document).ready(function() {
				var options = {  
					useEasing: true,
					  useGrouping: true,
					  separator: ',',
					  decimal: '.',
				};
				var demo = new CountUp('moneyCount', 10000, 208965, 0, 2.5, options);
				if(!demo.error) {  
					demo.start();
				} else {  
					console.error(demo.error);
				}
			});
		</script>
</body>
</html>