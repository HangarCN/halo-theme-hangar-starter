<#include "module/macro.ftl">
<link rel="stylesheet" href="${theme_base!}/source/css/post.css">
<@layout title="${post.title!} - ${blog_title!}">
  <div class="sub-banner">
    <!-- 二三级页面Banner -->
  </div>
  <div class="content-box">
    <div class="breadCrumbs"><#include "module/post_bread.ftl"></div>
    <div class="articleContent">
      <div class="articleContent-head">
        <span class="articleContent-head-title">${post.title!}</span>
        <div class="articleContent-head-subTitle">
          <span>发布：${post.createTime?string("yyyy-MM-dd")}</span>
          <span>阅读量：${post.visits}</span>
            <#list categories as category>
              <span>类型：${category.name!}</span>
            </#list>
        </div>
      </div>
      <el-divider></el-divider>
      <div class="articleContent-body">
        <article id="postContent">
            ${post.formatContent!}
        </article>
      </div>
    </div>
    <div class="post-function">
        <#include "module/post_share.ftl">
        <#include "module/post_print.ftl">
        <#include "module/post_font_size.ftl">
    </div>
  </div>
</@layout>
