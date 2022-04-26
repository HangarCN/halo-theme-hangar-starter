<#include "module/macro.ftl">
<@layout title="归档 - ${blog_title!}">
    <h1>归档</h1>
    <ul>
        <#list archives as archive>
            <h2>${archive.year?c}</h2>
            <#list archive.posts as post>
                <li>
                    <a href="${post.fullPath!}">${post.title!}</a>
                </li>
            </#list>
        </#list>
    </ul>

    <h1>分页</h1>

    <#include "module/pagination.ftl">
</@layout>
