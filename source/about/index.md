title: 关于
date: 2017-09-29 10:43:48
layout: page
---
{% raw %}
<!-- 引入Vue -->
<script src="//vuejs.org/js/vue.min.js"></script>
<!-- 引入样式 -->
<link rel="stylesheet" href="//unpkg.com/iview/dist/styles/iview.css">
<!-- 引入组件库 -->
<script src="//unpkg.com/iview/dist/iview.min.js"></script>
<div id="app">
  <Row>
    <i-col span="12">
      <Card>
        <p><span class="fa fa-user-o"></span> Nickname: <a href="http://blog.ruterly.com">Ruter</a></p>
        <p><span class="fa fa-envelope-o"></span> Email: <a href="mailto:i@ruterly.com" target="_blank" rel="external">i@ruterly.com</a></p>
        <p><span class="fa fa-github"> Github: <a href="https://github.com/ruter" target="_blank" rel="external">@ruter</a></span></p>
      </Card>
    </i-col>
  </Row>
</div>
<script>
new Vue({
  el: '#app',
  data: {}
})
</script>
{% endraw %}

---