<link href="${theme_base!}/source/css/module/menu.css" rel="stylesheet">
<div class="menu">
    <div class="menu-box">
      <div class="menu-logo">
        <a href="/">
          <img src="${theme_base!}/source/images/menu/logo.png" alt="河北省市场监督管理局">
        </a>
      </div>
      <div class="menu-navigation nav">
          <@menuTag method="list">
          <#--
              ?sort_by('priority')：根据菜单的排序编号排序
          -->
              <ul>
                <#list menus?sort_by('priority') as menu>
                  <li>
                    <a href="${menu.url}" target="${menu.target!}">${menu.name} </a>
                  </li>
                </#list>
              </ul>
          </@menuTag>
      </div>
      <div class="menu-login">
        <button class="menu-login-button">
          <span class="menu-login-user-icon">
            登录
          </span>
        </button>
      </div>
    </div>
</div>

<script>
  $(document).ready(function () {
    var url = location.href;
    var urlstatus = false;
    $(".nav ul li a").each(function addMenuActiveClass () {
      if ((url + '/').indexOf($(this).attr('href')) > -1 && $(this).attr('href') != '/') {
        $(this).addClass('menu-current');
        urlstatus = true;
      } else {
        $(this).removeClass('menu-current');
      }
    });
    if (!urlstatus) {
      $(".nav ul li a").eq(0).addClass('menu-current');
    }
  })
</script>
