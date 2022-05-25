<#--<ul>
  <li>
    <a href="${blog_url!}">首页</a>
  </li>
  <#list post.categories as category>
      <li>/</li>
      <li>
        <a href="${category.fullPath!}">${category.name!"默认分类"}</a>
      </li>
  </#list>
  <li>/</li>
  <li>正文</li>
</ul>-->

<div class="breadCrumbs">
  <span class="content-breadcrumb-title ">您的当前位置</span>
  <span class="content-breadcrumb-title content-breadcrumb-title-block">
    <a href="${blog_url!}">首页</a>
  </span>
  <#list post.categories as category>
    <span class="content-breadcrumb-title content-breadcrumb-title-block">
      <a href="${category.fullPath!}">${category.name!"默认分类"}</a>
    </span>
  </#list>

</div>

<style>
  .breadCrumbs {
  }
  .content-breadcrumb-title {
    font-size: 14px;
    color: white;
    line-height: 25px;
    display: inline-block;
    margin-top: -4px;
  }

  .content-breadcrumb-title a {
    color: white!important;
    text-decoration: none;
  }

  .content-breadcrumb-title-block {
    cursor: pointer;
  }

  .content-breadcrumb-title-block:before {
    display: inline-block;
    content: '>';
    margin-left: 8px;
    margin-right: 8px;
  }
</style>
