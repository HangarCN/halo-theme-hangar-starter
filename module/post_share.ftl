<button id="weibo">分享到微博</button>
<button id="qq">分享到QQ</button>
<button id="wechat">分享到微信</button>
<div id="wechatQRCode"></div>

<script src="${theme_base!}/source/js/qrcode.min.js"></script>
<script>
    $(document).ready(function () {
        $('#weibo').click(function () {
            window.open('https://service.weibo.com/share/share.php?title=文章标题' + document.title + window.location.href)
        })

        $('#qq').click(function () {
            window.open('https://connect.qq.com/widget/shareqq/index.html?url=' + window.location.href + '&title=' + document.title)
        })

        $('#wechat').click(function () {
            $('#wechatQRCode').children().remove();
            new QRCode(document.getElementById("wechatQRCode"), window.location.href);
        })
    });
</script>
