module.exports = {
    title: '柏拉图的饭堂',
    description: '这里是柏拉图的饭堂',
    themeConfig: {
        lastUpdated: '最后编辑时间', // string | boolean
    },
    plugins: ['@vuepress/blog', '@vuepress/last-updated', {
        transformer: (timestamp, lang) => {
            console.log('测试:', timestamp)
            return timestamp
        }
    }]
}