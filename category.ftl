<#include "module/macro.ftl">
<link rel="stylesheet" href="${theme_base!}/source/css/category.css">
<@layout title="分类：${category.name} - ${blog_title!}">
  <div style="background-color: #f5f5f5">
    <div class="sub-banner">
      <!-- 二三级页面Banner -->
    </div>
    <div class="content-box">
      <div class="breadCrumbs"><#include "module/category_bread.ftl"></div>
      <div class="article">
        <div class="article-classify">
          <ul id="articleClassifyList" class="article-classify-list">
          </ul>
        </div>
        <div class="article-list">
          <div class="article-list-search">
            <span class="article-list-title">全部信息</span>
            <el-input placeholder="请输入内容" size="small" style="width: 30%; height: 32px;">
              <el-button slot="append" icon="el-icon-search" size="small"></el-button>
            </el-input>
          </div>
          <div class="article-list-box">
              <#list posts.content as post>
                <div class="article-list-item">
                  <span class="article-list-item-classify">【${category.name!"默认分类"}】</span>
                  <a href="${post.fullPath}" class="article-list-item-title font-ellipsis">${post.title}</a>
                  <span class="article-list-item-date">${post.createTime?string("yyyy-MM-dd")}</span>
                </div>
              </#list>
          </div>
          <div class="article-list-pagination"></div>
        </div>
      </div>
    </div>
  </div>
  <script>
    const url = decodeURI(window.location.href);
    const activeClassify = url.substring(url.lastIndexOf('/') + 1, url.length);
    axios({
      method: 'get',
      url: '${settings.base_url!}/api/content/categories',
      params: {},
      headers: {
        'API-Authorization': 'hangar'
      }
    }).then(resp => {
      const data = resp.data.data || [];
      data.forEach(classify => {
        createClassifyList(classify);
      });
      addActiveClassify();
    }).catch(e => {
      console.log(e);
    })
    function createClassifyList(entity) {
      const $element = $('<li class="article-classify-item "><a href="'+ entity.fullPath +'">'+ entity.name +'</a></li>')
      $element.attr({ classifyId: entity.slug })
      $('#articleClassifyList').append($element);
    }
    function addActiveClassify() {
      $('.article-classify-item').map((index, item) => {
        if (item.getAttribute('classifyId') === activeClassify) {
          item.classList.add('article-classify-item-check');
        }
      })
    }
  </script>
</@layout>
