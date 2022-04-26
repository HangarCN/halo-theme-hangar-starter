<ul>
    <@paginationTag method="index" page="${posts.number}" total="${posts.totalPages}" display="5">
        <#if pagination.hasPrev>
            <li>
                <a href="${pagination.prevPageFullPath!}">
                    上一页
                </a>
            </li>
        </#if>
        <#list pagination.rainbowPages as number>
            <li>
                <#if number.isCurrent>
                    <span class="current">第 ${number.page!} 页</span>
                <#else>
                    <a href="${number.fullPath!}">第 ${number.page!} 页</a>
                </#if>
            </li>
        </#list>
        <#if pagination.hasNext>
            <li>
                <a href="${pagination.nextPageFullPath!}">
                    下一页
                </a>
            </li>
        </#if>
    </@paginationTag>
</ul>
