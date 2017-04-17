<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<%=basePath%>">
    <!-- 下拉框 -->
    <link rel="stylesheet" href="static/ace/css/chosen.css"/>
    <!-- 日期框 -->
    <link rel="stylesheet" href="static/ace/css/bootstrap-datetimepicker.css" />
    <!-- jsp文件头和头部 -->
    <%@ include file="../index/top.jsp" %>
    <!-- ueditor 编辑器 -->
    <script type="text/javascript" charset="utf-8" src="plugins/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="plugins/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="plugins/ueditor/lang/zh-cn/zh-cn.js"></script>
    <script type="text/javascript">
        //实例化编辑器
        //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
        var ue = UE.getEditor('CONTENT');
    </script>

</head>
<body class="no-skin">
<!-- /section:basics/navbar.layout -->
<div class="main-container" id="main-container">
    <!-- /section:basics/sidebar -->
    <div class="main-content">
        <div class="main-content-inner">
            <div class="page-content">
                <div class="row">
                    <div class="col-xs-12">
                        <form action="article/${msg }.do" name="articleForm" id="articleForm" method="post">
                            <input type="hidden" name="ARTICLE_ID"  id="ARTICLE_ID" value="${pd.ARTICLE_ID }"/><br>
                            <div id="zhongxin" style="padding-top: 13px;">
                            文章分类：<select  class="chosen-select" name="CATEGORY" id="CATEGORY" data-placeholder="请选择文章" style="width:25%;" >
                                        <option value="1" <c:if test="${'1' == pd.CATEGORY }">selected</c:if> >机构概况</option>
                                        <option value="2" <c:if test="${'2' == pd.CATEGORY }">selected</c:if> >公安要闻</option>
                                        <option value="3" <c:if test="${'3' == pd.CATEGORY }">selected</c:if> >新闻发布</option>
                                        <option value="4" <c:if test="${'4' == pd.CATEGORY }">selected</c:if> >警务动态</option>
                                        <option value="5" <c:if test="${'5' == pd.CATEGORY }">selected</c:if> >警界博览</option>
                                        <option value="6" <c:if test="${'6' == pd.CATEGORY }">selected</c:if> >防范常识</option>
                                     </select>
                            文章标题：<input type="text"   name="TITLE"       id="TITLE"      value="${pd.TITLE }"     style="width:25%;" /><br>
                            修改时间：<input class="span10 date-picker" name="LAST_EDIT"
                                                                 id="LAST_EDIT" value="${pd.LAST_EDIT}"
                                                                 type="text" data-date-format="YYYY-MM-DD HH:mm:ss"
                                                                 style="width:25%;"
                                                                 placeholder="编辑日期" title="编辑日期"/>
                            本文作者：<input type="text"   name="AUTHOR"      id="AUTHOR"     value="${pd.AUTHOR }"    style="width:25%;" /><br>
                            发布状态：<select  class="chosen-select" name="STATUS" id="STATUS" data-placeholder="请选择文章状态"  style="width:25%;" >
                                        <option value="0" <c:if test="${'1' == pd.STATUS }">selected</c:if> >作为草稿</option>
                                        <option value="1" <c:if test="${'2' == pd.STATUS }">selected</c:if> >立即发布</option>
                                    </select>
                            <a class="btn btn-mini btn-primary" onclick="save();">保存</a><br><br>
                            <script  type="text/plain" name="CONTENT"  id="CONTENT" style="width:1024px;height:200px;">${pd.CONTENT }</script>
                            </div>
                            <div id="zhongxin2" class="center" style="display:none"><br/><br/><br/><br/><img
                                    src="static/images/jiazai.gif"/><br/><h4 class="lighter block green"></h4></div>
                        </form>
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.page-content -->
        </div>
    </div>
    <!-- /.main-content -->
</div>
<!-- /.main-container -->
<!-- basic scripts -->
<!-- 页面底部js¨ -->
<%@ include file="../index/foot.jsp"%>
<!-- 删除时确认窗口 -->
<script src="static/ace/js/bootbox.js"></script>
<!-- ace scripts -->
<script src="static/ace/js/ace/ace.js"></script>
<!-- 日期框 -->
<script src="static/ace/js/date-time/moment.js"></script>
<script src="static/ace/js/date-time/bootstrap-datetimepicker.js"></script>
<!-- 下拉框 -->
<script src="static/ace/js/chosen.jquery.js"></script>
<!--提示框-->
<script type="text/javascript" src="static/js/jquery.tips.js"></script>
</body>
<script type="text/javascript">
    $(top.hangge());
    // 保存
    function save() {
        if ($("#CATEGORY").val() == "") {
            $("#CATEGORY").tips({
                side: 3,
                msg: '选择文章分类',
                bg: '#AE81FF',
                time: 2
            });
            $("#CATEGORY").focus();
            return false;
        }
        if ($("#TITLE").val() == "") {
            $("#TITLE").tips({
                side: 3,
                msg: '输入文章标题',
                bg: '#AE81FF',
                time: 2
            });
            $("#TITLE").focus();
            return false;
        }
        if ($("#LAST_EDIT").val() == "") {
            $("#LAST_EDIT").tips({
                side: 3,
                msg: '输入 编辑时间',
                bg: '#AE81FF',
                time: 3
            });
            $("#LAST_EDIT").focus();
            return false;
        } else {
            $("#LAST_EDIT").val($.trim($("#LAST_EDIT").val()));
        }
        bootbox.alert("content = " + $("#CONTENT").val(), function(){});
        bootbox.confirm("确定要保存吗?", function (result) {
            if (result) {
                $("#articleForm").submit();
                $("#zhongxin").hide();
                $("#zhongxin2").show();

            }
        });

    }

    $(function() {
        //日期框
        $('.date-picker').datetimepicker();
    });

    $(function () {
        //下拉框
        if (!ace.vars['touch']) {
            $('.chosen-select').chosen({allow_single_deselect: true});
            $(window)
                    .off('resize.chosen')
                    .on('resize.chosen', function () {
                        $('.chosen-select').each(function () {
                            var $this = $(this);
                        });
                    }).trigger('resize.chosen');
            $(document).on('settings.ace.chosen', function (e, event_name, event_val) {
                if (event_name != 'sidebar_collapsed') return;
                $('.chosen-select').each(function () {
                    var $this = $(this);
                    $this.next().css({'width': $this.parent().width()});
                });
            });
            $('#chosen-multiple-style .btn').on('click', function (e) {
                var target = $(this).find('input[type=radio]');
                var which = parseInt(target.val());
                if (which == 2) $('#form-field-select-4').addClass('tag-input-style');
                else $('#form-field-select-4').removeClass('tag-input-style');
            });
        }
    });
</script>
</html>