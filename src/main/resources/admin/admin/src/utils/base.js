const base = {
    get() {
        return {
            url : "http://localhost:8080/springbootpt9c5/",
            name: "springbootpt9c5",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springbootpt9c5/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "校级活动管理平台"
        } 
    }
}
export default base
