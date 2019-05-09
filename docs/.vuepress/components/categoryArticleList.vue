<template>
  <div>
    <ul
      v-for="(category,index) of list"
      :key="index"
      class="category-ul"
      :class="{ none: category.pages.length === 0 }"
    >
      <h2 :id="category.name">{{category.name}}</h2>
      <li v-for="(page,index) of category.pages" :key="index" v-if="category.pages.length > 0">
        <router-link :to="{path:page.path}">{{page.title}}</router-link>
      </li>
      <li v-if="category.pages.length === 0">暂时没有该类文章</li>
    </ul>
  </div>
</template>

<script>
export default {
  data() {
    return {
      categories: ["前端", "后端", "其它"]
    };
  },
  computed: {
    list() {
      // console.log(this.categories)
      const pages = this.$site.pages;
      let list = [];
      this.categories.forEach(category => {
        let data = {
          name: category,
          pages: []
        };
        for (const page of pages) {
          if (
            page.path.indexOf("_post") > -1 &&
            page.frontmatter.tags.length > 0 &&
            page.frontmatter.tags[0] === category
          ) {
            data.pages.push(page);
          }
        }
        list.push(data);
      });
      // console.log("result:", list);
      return list;
      // let tags = [];
      // for (const page of this.$site.pages) {
      //   if (page.path.indexOf("_post") > -1) {
      //     tags.push(page);
      //   }
      // }
      // return tags;
    }
  }
};
</script>

<style lang="scss" scoped>
.category-ul {
  list-style: none;
  padding: 0;
  margin: 0;
}
.none {
  li {
    color: #999;
  }
}
</style>

