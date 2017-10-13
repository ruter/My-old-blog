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
<script src="//unpkg.com/axios/dist/axios.min.js"></script>
<style>
#app p {
  margin: 0 !important;
}
#app h2 {
  margin: 0 !important;
  border-bottom: 0 !important;
}
#app img {
  padding: 0 !important;
}
</style>
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
  <Row><hr/></Row>
  <row>
  <i-col span="12">
  <card>
      <div slot="title">
        <row>
          <i-col span="4"><avatar shape="square" :src="user.avatar_url || ''" size="large"/></i-col>
          <i-col span="15">
            <p><a :href="user.html_url" target="_blank">{{ user.name }}</a></p>
            <span>@{{ user.login }}</span>
          </i-col>
          <i-col span="5"><i-button type="ghost" @click="follow">Follow</i-button></i-col>
        </row>
      </div>
      <row>
        <i-col span="8" style="border-right: 1px solid #CCC">
          <div style="text-align:center">
            <h2><a :href="user.html_url + '?tab=repositories'" target="_blank">{{ user.public_repos }}</a></h2>
            <p>REPOS</p>
          </div>
        </i-col>
        <i-col span="8" style="border-right: 1px solid #CCC">
          <div style="text-align:center">
            <h2><a :href="'https://gist.github.com/' + user.login" target="_blank">{{ user.public_gists }}</a></h2>
            <p>GISTS</p>
          </div>
        </i-col>
        <i-col span="8">
          <div style="text-align:center">
            <h2><a :href="user.html_url + '?tab=followers'" target="_blank">{{ user.followers }}</a></h2>
            <p>FOLLOWERS</p>
          </div>
        </i-col>
      </row>
    </card>
    </i-col>
    </row>
</div>
<script>
new Vue({
  el: '#app',
  data: {
    	user: {}
    },
    created: function () {
    	axios.get('https://api.github.com/users/ruter')
        	.then(response => {
            	this.user = response.data
            })
    },
    methods: {
    	follow: function() {
      	window.open(this.user.html_url, '_blank')
      }
    }
})
</script>
{% endraw %}

---