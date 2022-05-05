<nav>
    <div class="nav nav-tabs" id="nav-tab" role="tablist">
        <button class="nav-link active news-tab" id="nav-home-tab" data-bs-toggle="tab" categoryId="1" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home" aria-selected="true">默认分类</button>
        <button class="nav-link news-tab" id="nav-profile-tab" data-bs-toggle="tab" categoryId="2" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="false">新闻</button>
    </div>
</nav>
<div class="tab-content" id="nav-tabContent">
    <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
        <ul></ul>
    </div>
    <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
        <ul></ul>
    </div>
</div>

<style>
  .news-list {
    display: block;
    color: #333333;
    font-size: 16px;
  }
</style>

<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script>
    const newsTab = $('.news-tab')
    for (var i = 0; i < newsTab.length; i++) {
        const categoryId = newsTab.eq(i).attr('categoryId');
        const tabCardId = newsTab.eq(i).attr('data-bs-target');
        axios({
            methods: 'get',
            url: 'http://127.0.0.1:5001/api/content/posts',
            params: {
                size: 5,
                categoryId: categoryId,
                sort: 'createTime,desc'
            },
            headers: {
                'API-Authorization': 'hangar'
            }
        }).then(resp => {
            const data = resp.data.data.content || [];
            data.forEach(item => {
                const $element = $("<a class=\"news-list\" href=\""+ item.fullPath +"\">"+ item.title +"</a>");
                $(tabCardId).find('ul').append($element);
            })
        }).catch(e => {
            console.log(e);
        })
    }
</script>
