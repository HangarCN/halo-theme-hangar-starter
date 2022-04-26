<#include "module/macro.ftl">
<@layout title="${post.title!} - ${blog_title!}">
  <#include "module/post_bread.ftl">
  <h1>${post.title!}</h1>
  <article>
      ${post.formatContent!}
  </article>
  <#include "module/post_share.ftl">
  <#include "module/post_print.ftl">
  <#include "module/comment.ftl">
  <@comment post=post type="post" />
</@layout>
