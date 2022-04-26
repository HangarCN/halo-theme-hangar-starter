<ul>
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
</ul>
