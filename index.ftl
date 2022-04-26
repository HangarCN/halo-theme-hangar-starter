<#include "module/macro.ftl">
<@layout title="${blog_title!}">
    <h1>公告</h1>
    <p>
        ${settings.index_notice!}
    </p>

    <h1>文章列表</h1>
    <ul>
        <#list posts.content as post>
            <li>
                <a href="${post.fullPath!}">${post.title}</a>
            </li>
        </#list>
    </ul>

    <h1>分页</h1>

    <#include "module/pagination.ftl">
</@layout>
