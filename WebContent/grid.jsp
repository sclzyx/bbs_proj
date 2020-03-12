<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="com.bbs.pojo.Plate"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.bbs.service.AdminService"%>
<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
<title>Crown - premium responsive admin template for backend systems</title>
<link href="${pageContext.request.contextPath}/static/css/main.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/spinner/ui.spinner.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/spinner/jquery.mousewheel.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-ui.min.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/charts/excanvas.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/charts/jquery.sparkline.min.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/forms/uniform.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/forms/jquery.cleditor.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/forms/jquery.validationEngine-en.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/forms/jquery.validationEngine.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/forms/jquery.tagsinput.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/forms/autogrowtextarea.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/forms/jquery.maskedinput.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/forms/jquery.dualListBox.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/forms/jquery.inputlimiter.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/forms/chosen.jquery.min.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/wizard/jquery.form.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/wizard/jquery.validate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/wizard/jquery.form.wizard.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/uploader/plupload.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/uploader/plupload.html5.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/uploader/plupload.html4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/uploader/jquery.plupload.queue.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/tables/datatable.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/tables/tablesort.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/tables/resizable.min.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/ui/jquery.tipsy.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/ui/jquery.collapsible.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/ui/jquery.prettyPhoto.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/ui/jquery.progress.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/ui/jquery.timeentry.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/ui/jquery.colorpicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/ui/jquery.jgrowl.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/ui/jquery.breadcrumbs.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/ui/jquery.sourcerer.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/calendar.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/elfinder.min.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/custom.js"></script>

<!-- Shared on MafiaShare.net  --><!-- Shared on MafiaShare.net  --></head>

<body>

<!-- Left side content -->
<div id="leftSide">
    <div class="logo"><a href="index.jsp"><img src="${pageContext.request.contextPath}/static/images/logo.png" alt="" /></a></div>
    
    <div class="sidebarSep mt0"></div>
    
    <!-- Search widget -->
    <form action="" class="sidebarSearch">
        <input type="text" name="search" placeholder="search..." id="ac" />
        <input type="submit" value="" />
    </form>
    
    <div class="sidebarSep"></div>

    <!-- General balance widget -->
    <div class="genBalance">
        <a href="#" title="" class="amount">
            <span>General balance:</span>
            <span class="balanceAmount">$10,900.36</span>
        </a>
        <a href="#" title="" class="amChanges">
            <strong class="sPositive">+0.6%</strong>
        </a>
    </div>
    
    <!-- Next update progress widget -->
    <div class="nextUpdate">
        <ul>
            <li>Next update in:</li>
            <li>23 hrs 14 min</li>
        </ul>
        <div class="pWrapper"><div class="progressG" title="78%"></div></div>
    </div>
    
    <div class="sidebarSep"></div>
    
    <!-- Left navigation -->
    <ul id="menu" class="nav">
        <li class="dash"><a href="index.html" title=""><span>Dashboard</span></a></li>
        <li class="charts"><a href="charts.html" title=""><span>Statistics and charts</span></a></li>
        <li class="forms"><a href="#" title="" class="exp"><span>Forms stuff</span><strong>4</strong></a>
            <ul class="sub">
                <li><a href="forms.html" title="">Form elements</a></li>
                <li><a href="form_validation.html" title="">Validation</a></li>
                <li><a href="form_editor.html" title="">WYSIWYG and file uploader</a></li>
                <li class="last"><a href="form_wizards.html" title="">Wizards</a></li>
            </ul>
        </li>
        <li class="ui"><a href="ui_elements.html" title=""><span>Interface elements</span></a></li>
        <li class="tables"><a href="tables.html" title="" class="exp"><span>Tables</span><strong>3</strong></a>
            <ul class="sub">
                <li><a href="table_static.html" title="">Static tables</a></li>
                <li><a href="table_dynamic.html" title="">Dynamic table</a></li>
                <li class="last"><a href="table_sortable_resizable.html" title="">Sortable &amp; resizable tables</a></li>
            </ul>
        </li>
        <li class="widgets"><a href="#" title="" class="active exp" id="current"><span>Widgets and grid</span><strong>2</strong></a>
            <ul class="sub">
                <li><a href="widgets.html" title="">Widgets</a></li>
                <li class="last this"><a href="grid.html" title="">Grid</a></li>
            </ul>
        </li>
        <li class="errors"><a href="#" title="" class="exp"><span>Error pages</span><strong>6</strong></a>
            <ul class="sub">
                <li><a href="403.html" title="">403 page</a></li>
                <li><a href="404.html" title="">404 page</a></li>
                <li><a href="405.html" title="">405 page</a></li>
                <li><a href="500.html" title="">500 page</a></li>
                <li><a href="503.html" title="">503 page</a></li>
                <li class="last"><a href="offline.html" title="">Website is offline</a></li>
            </ul>
        </li>
        <li class="files"><a href="file_manager.html" title=""><span>File manager</span></a></li>
        <li class="typo"><a href="#" title="" class="exp"><span>Other pages</span><strong>3</strong></a>
            <ul class="sub">
                <li><a href="typography.html" title="">Typography</a></li>
                <li><a href="calendar.html" title="">Calendar</a></li>
                <li class="last"><a href="gallery.html" title="">Gallery</a></li>
            </ul>
        </li>
    </ul>
</div>


<!-- Right side -->
<div id="rightSide">

    <!-- Top fixed navigation -->
    <div class="topNav">
        <div class="wrapper">
            <div class="welcome"><a href="#" title=""><img src="images/userPic.png" alt="" /></a><span>Howdy, Eugene!</span></div>
            <div class="userNav">
                <ul>
                    <li><a href="#" title=""><img src="images/icons/topnav/profile.png" alt="" /><span>Profile</span></a></li>
                    <li><a href="#" title=""><img src="images/icons/topnav/tasks.png" alt="" /><span>Tasks</span></a></li>
                    <li class="dd"><a title=""><img src="images/icons/topnav/messages.png" alt="" /><span>Messages</span><span class="numberTop">8</span></a>
                        <ul class="userDropdown">
                            <li><a href="#" title="" class="sAdd">new message</a></li>
                            <li><a href="#" title="" class="sInbox">inbox</a></li>
                            <li><a href="#" title="" class="sOutbox">outbox</a></li>
                            <li><a href="#" title="" class="sTrash">trash</a></li>
                        </ul>
                    </li>
                    <li><a href="#" title=""><img src="${pageContext.request.contextPath}/static/images/icons/topnav/settings.png" alt="" /><span>Settings</span></a></li>
                    <li><a href="login.jsp" title=""><img src="${pageContext.request.contextPath}/static/images/icons/topnav/logout.png" alt="" /><span>Logout</span></a></li>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    
    <!-- Responsive header -->
    <div class="resp">
        <div class="respHead">
            <a href="index.jsp" title=""><img src="${pageContext.request.contextPath}/static/images/loginLogo.png" alt="" /></a>
        </div>
        
        <div class="cLine"></div>
        <div class="smalldd">
            <span class="goTo"><img src="${pageContext.request.contextPath}/static/images/icons/light/blocks.png" alt="" />Content grid</span>
            <ul class="smallDropdown">
                <li><a href="index.html" title=""><img src="${pageContext.request.contextPath}/static/images/icons/light/home.png" alt="" />Dashboard</a></li>
                <li><a href="charts.html" title=""><img src="${pageContext.request.contextPath}/static/images/icons/light/stats.png" alt="" />Statistics and charts</a></li>
                <li><a href="#" title="" class="exp"><img src="${pageContext.request.contextPath}/static/images/icons/light/pencil.png" alt="" />Forms stuff<strong>4</strong></a>
                    <ul>
                        <li><a href="forms.html" title="">Form elements</a></li>
                        <li><a href="form_validation.html" title="">Validation</a></li>
                        <li><a href="form_editor.html" title="">WYSIWYG and file uploader</a></li>
                        <li class="last"><a href="form_wizards.html" title="">Wizards</a></li>
                    </ul>
                </li>
                <li><a href="ui_elements.html" title=""><img src="${pageContext.request.contextPath}/static/images/icons/light/users.png" alt="" />Interface elements</a></li>
                <li><a href="tables.html" title="" class="exp"><img src="${pageContext.request.contextPath}/static/images/icons/light/frames.png" alt="" />Tables<strong>3</strong></a>
                    <ul>
                        <li><a href="table_static.html" title="">Static tables</a></li>
                        <li><a href="table_dynamic.html" title="">Dynamic table</a></li>
                        <li class="last"><a href="table_sortable_resizable.html" title="">Sortable &amp; resizable tables</a></li>
                    </ul>
                </li>
                <li><a href="#" title="" class="exp"><img src="${pageContext.request.contextPath}/static/images/icons/light/fullscreen.png" alt="" />Widgets and grid<strong>2</strong></a>
                    <ul>
                        <li><a href="widgets.html" title="">Widgets</a></li>
                        <li class="last"><a href="grid.html" title="">Grid</a></li>
                    </ul>
                </li>
                <li><a href="#" title="" class="exp"><img src="${pageContext.request.contextPath}/static/images/icons/light/alert.png" alt="" />Error pages<strong>6</strong></a>
                    <ul class="sub">
                        <li><a href="403.html" title="">403 page</a></li>
                        <li><a href="404.html" title="">404 page</a></li>
                        <li><a href="405.html" title="">405 page</a></li>
                        <li><a href="500.html" title="">500 page</a></li>
                        <li><a href="503.html" title="">503 page</a></li>
                        <li class="last"><a href="offline.html" title="">Website is offline</a></li>
                    </ul>
                </li>
                <li><a href="file_manager.html" title=""><img src="${pageContext.request.contextPath}/static/images/icons/light/files.png" alt="" />File manager</a></li>
                <li><a href="#" title="" class="exp"><img src="${pageContext.request.contextPath}/static/images/icons/light/create.png" alt="" />Other pages<strong>3</strong></a>
                    <ul>
                        <li><a href="typography.html" title="">Typography</a></li>
                        <li><a href="calendar.html" title="">Calendar</a></li>
                        <li class="last"><a href="gallery.html" title="">Gallery</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="cLine"></div>
    </div>
    
    <!-- Title area -->
    <div class="titleArea">
        <div class="wrapper">
            <div class="pageTitle">
                <h5>Content grid</h5>
                <span>Do your layouts deserve better than Lorem Ipsum.</span>
            </div>
            <div class="middleNav">
                <ul>
                    <li class="mUser"><a href="#" title=""><span class="users"></span></a>
                        <ul class="mSub1">
                            <li><a href="#" title="">Add user</a></li>
                            <li><a href="#" title="">Statistics</a></li>
                            <li><a href="#" title="">Orders</a></li>
                        </ul>
                    </li>
                    <li class="mMessages"><a href="#" title=""><span class="messages"></span></a>
                        <ul class="mSub2">
                            <li><a href="#" title="">New tickets<span class="numberRight">8</span></a></li>
                            <li><a href="#" title="">Pending tickets<span class="numberRight">12</span></a></li>
                            <li><a href="#" title="">Closed tickets</a></li>
                        </ul>
                    </li>
                    <li class="mFiles"><a href="#" title="Or you can use a tooltip" class="tipN"><span class="files"></span></a></li>
                    <li class="mOrders"><a href="#" title=""><span class="orders"></span><span class="numberMiddle">8</span></a>
                        <ul class="mSub4">
                            <li><a href="#" title="">Pending uploads</a></li>
                            <li><a href="#" title="">Statistics</a></li>
                            <li><a href="#" title="">Trash</a></li>
                        </ul>
                    </li>
                </ul>
                <div class="clear"></div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    
    <div class="line"></div>
    
    <!-- Page statistics area -->
    <div class="statsRow">
        <div class="wrapper">
        	<div class="controlB">
            <%-- 	<ul>
                	<li><a href="#" title=""><img src="${pageContext.request.contextPath}/static/images/icons/control/32/plus.png" alt="" /><span>Add new session</span></a></li>
                    <li><a href="#" title=""><img src="${pageContext.request.contextPath}/static/images/icons/control/32/database.png" alt="" /><span>New DB entry</span></a></li>
                    <li><a href="#" title=""><img src="${pageContext.request.contextPath}/static/images/icons/control/32/hire-me.png" alt="" /><span>Add new user</span></a></li>
                    <li><a href="#" title=""><img src="${pageContext.request.contextPath}/static/images/icons/control/32/statistics.png" alt="" /><span>Check statistics</span></a></li>
                    <li><a href="#" title=""><img src="${pageContext.request.contextPath}/static/images/icons/control/32/comment.png" alt="" /><span>Review comments</span></a></li>
                    <li><a href="#" title=""><img src="${pageContext.request.contextPath}/static/images/icons/control/32/order-149.png" alt="" /><span>Check orders</span></a></li>
            </ul>
            <ul>
             <li> <input type="text" ></li>
             <li> <input type="text" ></li>
             <li> <input type="submit" value=" 保 存 "  /></li>
           </ul>
             --%>
             <form action="${pageContext.request.contextPath}/AddSession">
             
            <div style="float:left;padding-left:20%;padding-top:3%;">
            <p ><a href="#" title="" ><img src="${pageContext.request.contextPath}/static/images/icons/control/32/plus.png" alt="" /><span style="color:red;">${empty message?'Add new session':message}</span></a></p>
            </div>
             <div style="float:left;padding-left:10%;padding-top:1%;">
             <p>标题：<input type="text" name="plateTitle" ></p>
             <p>描述： <textarea rows="3" cols="23" name="plateMessage"></textarea></p>
             <p><input type="submit" value=" 保 存 "  /></p>
             </div>
             </form>
                <div class="clear"></div>
            </div>
        </div>
    </div>
    
    <div class="line"></div>
    
    <!-- Main content wrapper -->
    <div class="wrapper">
    
        <!-- Note -->
        <div class="nNote nInformation hideit">
            <p><strong>NOTE: </strong>以下呈现输入的板块内容</p>
        </div>
        
        <!-- Full width -->
             <%
	AdminService adminService = new AdminService();
	ArrayList<Plate> plate = adminService.listPlate();//获取图书分类列表
	for(Plate x : plate){//循环获取，并且显示
%>		
        <div class="widget"  >
            <div>
	            <div class="title"><h4 style="padding-top:8px;">&nbsp;&nbsp;<%=x.getPlateTitle() %></h4> <div class="clear"></div></div>
	            <div><h6  style="padding-top:6px;padding-bottom:6px;">&nbsp;&nbsp; <%=x.getPlateMessage() %></h6></div>
            </div>
         
        </div>
          <%
	}
%> 
    </div>
   <!--      
     Half width
        <div class="widgets">
            <div class="oneTwo">
                <div class="widget">
                    <div class="title"><h6>Half width</h6></div>
                    <p>ed condimentum, purus pretium varius blandit, diam felis tempor tortor, a pulvinar felis lectus eget eros. Aenean in turpis risus, condimentum pellentesque eros. Mauris elementum est vitae neque venenatis accumsan.</p>
                </div>
            </div>
            <div class="oneTwo">
                <div class="widget">
                    <div class="title"><h6>Half width</h6></div>
                    <p>ed condimentum, purus pretium varius blandit, diam felis tempor tortor, a pulvinar felis lectus eget eros. Aenean in turpis risus, condimentum pellentesque eros. Mauris elementum est vitae neque venenatis accumsan.</p>
                </div>
            </div>
            <div class="clear"></div>
        </div>
        
        Third width
        <div class="widgets">
        	<div class="oneThree">
            	<div class="widget">
                	<div class="title"><h6>One third width</h6></div>
                    <p>Nam lorem elit, luctus quis consectetur sollicitudin, tempor nec elit. Nunc nibh lorem, pharetra at porta vitae, volutpat quis lorem. Nam dolor nisl, condimentum eget</p>
                </div>

            </div>  -->
            
        	<!-- <div class="oneThree">
            	<div class="widget">
                	<div class="title"><h6>One third width</h6></div>
                    <p>Nam lorem elit, luctus quis consectetur sollicitudin, tempor nec elit. Nunc nibh lorem, pharetra at porta vitae, volutpat quis lorem. Nam dolor nisl, condimentum eget</p>
                </div>
            </div>
            
        	<div class="oneThree">
            	<div class="widget">
                	<div class="title"><h6>One third width</h6></div>
                    <p>Nam lorem elit, luctus quis consectetur sollicitudin, tempor nec elit. Nunc nibh lorem, pharetra at porta vitae, volutpat quis lorem. Nam dolor nisl, condimentum eget</p>
                </div>
            </div>
            <div class="clear"></div>
        </div>
        
        Third / Half
        <div class="widgets">
        	<div class="twoOne">
            	<div class="widget">
                	<div class="title"><h6>Two third width</h6></div>
                    <p>Proin imperdiet magna eu ligula ultrices bibendum. Vivamus cursus placerat placerat. Aenean euismod ligula non libero imperdiet semper. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam ut eros nec eros interdum accumsan a id orci.</p>
                </div>
            </div>
            
        	<div class="oneThree">
            	<div class="widget">
                	<div class="title"><h6>One third width</h6></div>
                    <p>Nam lorem elit, luctus quis consectetur sollicitudin, tempor nec elit. Nunc nibh lorem, pharetra at porta vitae, volutpat quis lorem. Nam dolor nisl, condimentum eget</p>
                </div>
            </div>
            <div class="clear"></div>
        </div>
        
        Half / Third
        <div class="widgets">
        	<div class="oneThree">
            	<div class="widget">
                	<div class="title"><h6>One third width</h6></div>
                    <p>Nam lorem elit, luctus quis consectetur sollicitudin, tempor nec elit. Nunc nibh lorem, pharetra at porta vitae, volutpat quis lorem. Nam dolor nisl, condimentum eget</p>
                </div>
            </div>
            
        	<div class="twoOne">
            	<div class="widget">
                	<div class="title"><h6>Two third width</h6></div>
                    <p>Proin imperdiet magna eu ligula ultrices bibendum. Vivamus cursus placerat placerat. Aenean euismod ligula non libero imperdiet semper. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam ut eros nec eros interdum accumsan a id orci.</p>
                </div>
            </div>
            <div class="clear"></div>
        </div> -->
   <!--     
         Quarter
        <div class="widgets">
        	<div class="oneFour">
            	<div class="widget">
                	<div class="title"><h6>Quarter width</h6></div>
                    <p>Ut sed ligula a orci eleifend semper et vel urna. Sed semper tortor urna. Proin faucibus nunc nibh, et porta metus</p>
                </div>
            </div>
            
        	<div class="oneFour">
            	<div class="widget">
                	<div class="title"><h6>Quarter width</h6></div>
                    <p>Ut sed ligula a orci eleifend semper et vel urna. Sed semper tortor urna. Proin faucibus nunc nibh, et porta metus</p>
                </div>
            </div>
            
        	<div class="oneFour">
            	<div class="widget">
                	<div class="title"><h6>Quarter width</h6></div>
                    <p>Ut sed ligula a orci eleifend semper et vel urna. Sed semper tortor urna. Proin faucibus nunc nibh, et porta metus</p>
                </div>
            </div>
            
        	<div class="oneFour">
            	<div class="widget">
                	<div class="title"><h6>Quarter width</h6></div>
                    <p>Ut sed ligula a orci eleifend semper et vel urna. Sed semper tortor urna. Proin faucibus nunc nibh, et porta metus</p>
                </div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
     -->
    <!--  <br/> <br/><br/> <br/>
    Footer line
    <div id="footer">
        <div class="wrapper">@bbs论坛专有 <a href="http://www.cssmoban.com/" target="_blank" title=""></a> - Collect from <a href="http://www.cssmoban.com/" title="" target="_blank"></a></div>
    </div>

</div>

<div class="clear"></div> -->

</body>
</html>