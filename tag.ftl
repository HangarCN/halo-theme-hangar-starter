<#include "module/macro.ftl">
<@layout title="标签：${tag.name} - ${blog_title!}">
    <h1>标签：${tag.name}</h1>
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
