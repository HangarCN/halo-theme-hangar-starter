<#include "module/macro.ftl">
<#import "module/index_tabs.ftl" as newsTab>
<#import "module/index_videos.ftl" as videosList>

<link href="${theme_base!}/source/css/index.css" rel="stylesheet">
<script type="text/javascript" src="${theme_base!}/source/js/lib/echarts.min.js"></script>
<@layout title="${blog_title!}">
  <div class="contentBody my-row">
    <div class="texture"></div>
    <div class="my-container">
      <div class="search">
        <div class="title">
          <img src="${theme_base!}/source/images/index/banner_title.png" alt="河北省企业信用研究中心智能知识库">
        </div>
        <div class="titleLine"></div>
        <div class="inputBlock my-row">
          <input id="Jump" type="text" placeholder="请输入搜索内容"/>
          <div class="btn" onclick="Jump()">搜索</div>
        </div>
        <div class="vocabulary">
          <span onclick="Jump('市场秩序')">市场秩序</span>
          <span class="line">|</span>
          <span onclick="Jump('质量提升')">质量提升</span>
          <span class="line">|</span>
          <span onclick="Jump('市场安全')">市场安全</span>
          <span class="line">|</span>
          <span onclick="Jump('创新机制')">创新机制</span>
          <span class="line">|</span>
          <span onclick="Jump('工作保障')">工作保障</span>
        </div>
      </div>
      <!-- 知识 -->
      <div class="knowledge">
        <div class="knowledgeTitle">
          <img src="${theme_base!}/source/images/index/knowledgeTitle.png"/>
        </div>
        <div id="knowledgeId"></div>
      </div>

      <div class="index-news">
        <div class="index-news-box">
          <@newsTab.newsList parentId="news1" params="[{id: '4', name: '总局动态', slug: 'dynamicnews'}, {id: '5', name: '政策文件', slug: 'policydocuments'}, {id: '6', name: '政策解读', slug: 'policyanalyzing'}]">
          </@newsTab.newsList>
        </div>
        <div class="index-news-box">
          <@newsTab.newsList parentId="news2" params="[{id: '7', name: '法律法规', slug: 'laws'}, {id: '8', name: '执法依据', slug: 'enforcementbasis'}, {id: '9', name: '经典案例', slug: 'classiccase'}]">
          </@newsTab.newsList>
        </div>
      </div>
        <div class="special" id="app">
          <div class="tab">
            <div class="tabBlock">
              <div class="tabBox action">知识专题</div>
              <div class="tabBox">公众服务专题</div>
            </div>
          </div>
          <div class="my-row">
            <div class="cardBox">
              <img class="video" src="${theme_base!}/source/images/index/rotation3.jpg" />
              <div class="curtain">
                <img class="icon" src="${theme_base!}/source/images/index/icon_special1.png" />
                <p class="title">食品专题</p>
                <p class="subtitle">展现食品专题及学习资料。</p>
              </div>
            </div>
            <div class="cardBox">
              <img class="video" src="${theme_base!}/source/images/index/rotation2.jpg" />
              <div class="curtain">
                <img class="icon" src="${theme_base!}/source/images/index/icon_special2.png" />
                <p class="title">行政许可专题</p>
                <p class="subtitle">展现食品专题及学习资料。</p>
              </div>
            </div>
            <div class="cardBox">
              <img class="video" src="${theme_base!}/source/images/index/rotation1.jpg" />
              <div class="curtain">
                <img class="icon" src="${theme_base!}/source/images/index/icon_special3.png" />
                <p class="title">登记注册专题</p>
                <p class="subtitle">展现食品专题及学习资料。</p>
              </div>
            </div>
            <div class="cardBox">
              <img class="video" src="${theme_base!}/source/images/index/rotation4.jpg" />
              <div class="curtain">
                <img class="icon" src="${theme_base!}/source/images/index/icon_special4.png" />
                <p class="title">特种设备专题</p>
                <p class="subtitle">展现食品专题及学习资料。</p>
              </div>
            </div>
            <div class="cardBox">
              <img class="video" src="${theme_base!}/source/images/index/rotation5.jpg" />
              <div class="curtain">
                <img class="icon" src="${theme_base!}/source/images/index/icon_special5.png" />
                <p class="title">认可专题</p>
                <p class="subtitle">展现食品专题及学习资料。</p>
              </div>
            </div>
            <div class="cardBox">
              <img class="video" src="${theme_base!}/source/images/index/rotation6.jpg" />
              <div class="curtain">
                <img class="icon" src="${theme_base!}/source/images/index/icon_special6.png" />
                <p class="title">知识产权专题</p>
                <p class="subtitle">展现食品专题及学习资料。</p>
              </div>
            </div>
            <div class="army-rowL"></div>
            <div class="army-rowR"></div>
          </div>
          <div class="page">
          </div>
        </div>
        <div class="lectureRoom">
          <div class="tab">
            <div class="tabBox action">市场监管大讲堂</div>
            <a href="/categories/auditorium"><div class="more">更多</div></a>
          </div>
          <@videosList.videosList>
          </@videosList.videosList>
        </div>
    </div>
    <div style="height: 50px;"></div>
  </div>
</@layout>

<script type="text/javascript">
  let resultData = {
    status: 'success',
    data: [
      {
        name: '食品销售',
        value: 1025,
        x: 30,
        y: -130,
        random: 1
      },
      {
        name: '网络交易监管',
        value: 10058,
        x: 180,
        y: -200,
        random: 0
      },
      {
        name: '虚假宣传',
        value: 803,
        x: 330,
        y: -190,
        random: 1
      },
      {
        name: '市场监管现代化',
        value: 16550,
        x: 500,
        y: -150,
        random: 0
      },
      {
        name: '合同监管',
        value: 11550,
        x: 630,
        y: -200,
        random: 0
      },
      {
        name: '合同监管',
        value: 2587,
        x: 130,
        y: -70,
        random: 1
      },
      {
        name: '合同监管',
        value: 358,
        x: 260,
        y: -110,
        random: 0
      },
      {
        name: '广告监管',
        value: 13550,
        x: 600,
        y: -90,
        random: 1
      },
      {
        name: '合同监管',
        value: 453,
        x: 0,
        y: -30,
        random: 0
      },
      {
        name: '汽车销售',
        value: 296,
        x: 100,
        y: 0,
        random: 0
      },
      {
        name: '扶持小微企业',
        value: 4991,
        x: 250,
        y: -20,
        random: 0
      },
      {
        name: '高质量发展',
        value: 5028,
        x: 370,
        y: -50,
        random: 1
      },
      {
        name: '合同监管',
        value: 11550,
        x: 500,
        y: -30,
        random: 0
      },
      {
        name: '合同监管',
        value: 337,
        x: 660,
        y: -10,
        random: 0
      }
    ]
  };

  //  颜色渐变函数 前四个参数分别表示四个位置依次为左、下、右、上
  let colorList = [
    // new echarts.graphic.LinearGradient(0, 0, 1, 1, [
    //   {
    //     offset: 0,
    //     color: 'rgba(59, 181, 182, 1)',
    //   },
    //   {
    //     offset: 1,
    //     color: 'rgba(66, 227, 151, 0.2)',
    //   },
    // ]),
    {
      rgb: 'rgb(80, 151, 255)',
      rgba: 'rgba(80, 151, 255,'
    },
    {
      rgb: 'rgb(151, 148, 251)',
      rgba: 'rgba(151, 148, 251,'
    }
  ];
  let colorListLen = colorList.length;

  // 生成随机坐标的不重叠圆
  function drawCircles(maxLength, radius, max_x, max_y) {
    let circles = [
      {
        x: 100,
        y: 100,
        radius: 100
      }
    ];
    let anti_crash_count = 0;
    while (circles.length < maxLength) {
      let circle = {
        x: getRandomNumber(radius, max_x - radius),
        y: getRandomNumber(radius, max_y - radius),
        radius,
      };

      let isOverlapping = false;

      for (let j = 0; j < circles.length; j++) {
        let previous_circle = circles[j];
        let distance = Math.hypot(circle.x - previous_circle.x, circle.y - previous_circle.y);

        if (distance < circle.radius + previous_circle.radius + 50) {
          isOverlapping = true;
          break;
        }
      }

      if (!isOverlapping) {
        circles.push(circle);
      }
      anti_crash_count++;
      if (anti_crash_count > 10000) {
        break;
      }
    }
    return circles;
  }

  // 生成随机数坐标
  function getRandomNumber(min, max) {
    return Math.floor(Math.random() * (max - min) + min);
  }

  // 数据数组
  let countList = resultData.data;
  var showData = [];
  var sum = 0,
    max = 0;
  countList.forEach((e, i) => {
    e.id = i;
    e.label = {
      normal: {
        show: true,
        color: '#fff',
        formatter: function (params) {
          if (params['data']['name'] !== '') {
            return params['data']['name'] + '\n' + params['data']['value'];
          }
        },
      },
    };
    if (e.random === undefined) {
      e.random = Math.floor(Math.random() * colorListLen);
    }
    e.itemStyle = {
      normal: {
        // color: colorList[Math.floor(Math.random() * colorListLen)],
        color: colorList[e.random].rgb,
        borderColor: colorList[e.random].rgba + '0.2)',
        borderWidth: 16,
        shadowBlur: 25,
        // shadowOffsetY: 10,
        shadowColor: colorList[e.random].rgb,
      },
    };
    sum += e.value;
    if (e.value >= max) max = e.value;
  });
  // 放大规则
  var number = Math.round(max * 0.5);
  let graphCanvas = document.getElementById('knowledgeId').getBoundingClientRect();
  // let randomCircleArr = drawCircles(
  //   countList.length,
  //   ((max + number) / max) * 40,
  //   graphCanvas.width,
  //   graphCanvas.height
  // );
  for (var i = 0; i < countList.length; i++) {
    countList[i].radius = ((max + number) / max) * 40;
  }
  const randomCircleArr = countList;
  countList.forEach((e, i) => {
    if (randomCircleArr[i]) {
      e.x = randomCircleArr[i].x;
      e.y = randomCircleArr[i].y;
      e.symbolSize = ((e.value + number) / max) * 60 + 50;
      e.label.normal.fontSize = ((e.value + number) / max) * 6 + 8;
      e.label.normal.lineHeight = ((e.value + number) / max) * 10 + 10;
    } else {
      e.symbolSize = 0;
      e.x = 0;
      e.y = 0;
    }
  });
  let option = {
    title: {},
    tooltip: {
      trigger: 'item',
      formatter: function (params) {
        if (params['data']['name'] !== '') {
          return '<b>' + params['data']['name'] + '</b>：<b>' + params['data']['value'] + ' </b>';
        }
      },
    },
    series: [
      {
        name: '词条分布',
        type: 'graph',
        layout: 'none',
        label: {
          show: true,
          normal: {
            color: '#fff',
          },
        },
        data: countList,
      },
    ],
  };
  var myChart = echarts.init(document.getElementById('knowledgeId'));
  myChart.setOption(option);
  myChart.off('click');
  myChart.on('click', function (params) {
    // console.log(params);
    window.location.href = 'knowledgeSpecial.html';
  })

  function Jump(val = undefined) {
    var oDiv = document.getElementById('Jump');
    var link = 'search.html'
    if (val) {
      link = link + '?keyWord=' + val;
    } else if (oDiv.value != '') {
      link = link + '?keyWord=' + oDiv.value;
    }
    window.location.href = link;
  }
</script>
