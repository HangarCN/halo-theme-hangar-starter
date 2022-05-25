<#macro videosList>
<div id="videosList" class="my-row">
</div>


<script>
  axios({
    methods: 'get',
    url: 'http://127.0.0.1:5001/api/content/posts',
    params: {
      size: 4,
      categoryId: '3',
      sort: 'createTime,desc'
    },
    headers: {
      'API-Authorization': 'hangar'
    }
  }).then(resp => {
    const data = resp.data.data.content || [];
    data.forEach(news => {
      createVideoItem(news);
    });
  }).catch(e => {
    console.log(e);
  })
  function createVideoItem(entity) {
    const element = $('<div class="block"><div class="box"><img class="videos-cover"/></div><img class="play" src="${theme_base!}/source/images/index/play.png" /><div class="title"><a>'+ entity.title +'</a></div></div>')
    element.find('.videos-cover').attr({ src: entity.thumbnail ? entity.thumbnail : '' });
    element.find('a').attr({ href: entity.fullPath ? entity.fullPath : '' });
    $('#videosList').append(element);
  }
</script>
</#macro>
