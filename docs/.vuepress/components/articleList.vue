<template>
  <div>
    <ul v-for="post of tags" :key="post.key">
      <li>
        <router-link :to="{path:post.path}">{{post.title}}</router-link>
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  computed: {
    tags() {
      let tags = [];
      for (const page of this.$site.pages) {
        if (page.path.indexOf("_post") > -1) {
          tags.push(page);
        }
      }
      return tags;
    }
  }
};
</script>

