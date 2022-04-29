<button type="button" class="btn btn-primary" onclick="changeFontSize('26px')" id="largeFont">大</button>
<button type="button" class="btn btn-primary" onclick="changeFontSize('18px')" id="middleFont">中</button>
<button type="button" class="btn btn-primary" onclick="changeFontSize('14px')" id="smallFont">小</button>
<script>
    $(document).ready(function () {
        window.changeFontSize = function (fontSize) {
            const postContent = $('#postContent');
            postContent.find('*').css({
                fontSize: fontSize
            })
        }
    });
</script>
