<#include "module/macro.ftl">
<@layout title="分类：${category.name} - ${blog_title!}">
    <#include "module/category_bread.ftl">
    <h1>分类：${category.name}</h1>
    <ul>
        <#list posts.content as post>
            <li>
                <a href="${post.fullPath}">${post.title}</a>
            </li>
        </#list>
    </ul>

    <h1>分页</h1>

    <#include "module/pagination.ftl">
</@layout>
