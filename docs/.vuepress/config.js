module.exports = {
    // base: '/blog/',
    title: '柏拉图笔记',
    description: '这里是柏拉图的笔记',
    plugins: ['@vuepress/blog'],
    themeConfig: {
        nav: [ // 导航栏配置
            {
                text: '首页',
                link: '/'
            },
            {
                text: '前端',
                link: '/frontend'
            },
            {
                text: '后端',
                link: '/backend'
            },
            {
                text: '其它',
                link: '/other'
            },
            {
                text: 'GitHub',
                link: 'https://github.com/hotplato'
            }
        ]
    }
}