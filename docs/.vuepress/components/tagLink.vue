<template>
    <div class="tags-list">
        <span class="label">标签:</span>
        <router-link class="link" v-for="tag in $page.frontmatter.tags" :key="tag" :to="{path: `/#${tag}`}">
            {{tag}}
        </router-link>
    </div>
</template>
<style lang="scss" scoped>
$text: 13px;
$second-color: #a8a8a8;
.tags-list {
    font-size: $text;
    margin-bottom: 10px;
    .label {
        color: $second-color;
    }
    .label,.link {
        margin-right: 5px;
    }
}
</style>
