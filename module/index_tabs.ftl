<#macro newsList parentId params>
<link rel="stylesheet" href="${theme_base!}/source/css/module/newsTab.css">
<div id="${parentId}" class="module-news-box">
  <div class="module-news-nav">
  </div>
  <div class="module-news-category">
  </div>
</div>
<script>
  ${params}.forEach(item => {
    $(${parentId}).eq(0).find('.module-news-nav').append(createNavBar(item));
    $(${parentId}).eq(0).find('.module-news-nav').children().eq(0).addClass('module-news-nav-item-active');
    axios({
      method: 'get',
      url: '${settings.base_url!}/api/content/posts',
      params: {
        size: 6,
        categoryId: item.id,
        sort: 'createTime,desc'
      },
      headers: {
        'API-Authorization': 'hangar'
      }
    }).then(resp => {
      const data = resp.data.data.content || [];
      data.forEach(news => {
        $(${parentId}).eq(0).find('.module-news-category').append(createParent(item, news))
      });
      if ($(${parentId}).eq(0).find('.module-news-category-box').length === ${params}.length) {
        $('#' + ${params}[0].slug).show();
      }
    }).catch(e => {
      console.log(e);
    })
  })

  function createNavBar(entity) {
    const $navBar = $('<span class="module-news-nav-item">' + entity.name + '</span>');
    $navBar.attr({ listId: entity.slug })
    return $navBar
  }

  function createParent(entity, data) {
    const $parent = $('<div class="module-news-category-box"><div class="module-news-category-list"><ul></ul></div><div class="module-news-category-more"><a class="module-news-category-more-a">查看更多</a></div></div>')
    $parent.attr({ id: entity.slug });
    $parent.find('.module-news-category-more-a').attr({ href: '/categories/' + entity.slug })
    $parent.find('ul').append(createNews(data));
    $parent.hide();
    return $parent
  }

  function createNews(entity) {
    const $news = $('<li class="module-news-category-list-item"><a class="module-news-category-list-item-title">'+ entity.title +'</a><span class="module-news-category-list-item-date">01-20</span></li>')
    $news.find('a').attr({ href: entity.fullPath });
    return $news;
  }

  $(${parentId}).eq(0).find('.module-news-nav-item').click(function changeNewsTab () {
    $(this).siblings().removeClass('module-news-nav-item-active');
    $(this).addClass('module-news-nav-item-active');
    const listId = $(this).attr('listId');
    $(${parentId}).eq(0).find('.module-news-category-box').hide();
    $('#' + listId).show();
  })
</script>
</#macro>
