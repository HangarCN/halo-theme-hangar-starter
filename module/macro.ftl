<#macro layout title>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="keywords" content="${meta_keywords!}"/>
    <meta name="description" content="${meta_description!}"/>
    <link href="${theme_base!}/source/css/lib/bootstrap.min.css" rel="stylesheet">
    <link href="${theme_base!}/source/css/style.css" rel="stylesheet">
    <script src="${theme_base!}/source/js/lib/jquery-3.6.0.min.js"></script>
    <script src="${theme_base!}/source/js/lib/bootstrap.bundle.min.js"></script>
    <script src="${theme_base!}/source/js/lib/axios.min.js"></script>
    <#--
        公共 head 代码，详情请参考：https://docs.halo.run/zh/developer-guide/theme/public-template-tag
        包含：Favicon，自定义 head 等
    -->

    <@global.head />

    <title>${title}</title>
</head>
<body class="page_box">
<#include "menu.ftl">

<#-- 页面占位符 -->
<#nested >

<#--
    公共底部代码，详情请参考：https://docs.halo.run/zh/developer-guide/theme/public-template-tag
    包含：统计代码，底部信息
-->
<#--<@global.footer />-->
<#include "footer.ftl">
</body>
</html>
</#macro>

