import request from './request'

/*请求首页数据*/
export const getHomeData = () => request.get('/index/index')
/*获取popup的数据*/
export const getPopupData = () => request.get('/search/index')
/*搜索框商品搜索*/
export const getSearch = params => request.get('/goods/list', {params})
/*实时搜索功能*/
export const getTimeSearch = params => request.get('/search/helper', {params})
/*登录请求*/
export const goLogin = params => request.post('/user/user/login', params)
/*添加案件信息*/
export const addLawCase = params => request.post('/lawcase/lawcase/insert', params)
/*获取一条案件信息*/
export const getLawCase = params => request.get('/lawcase/lawcase/get', {params})
/*获取所有案件信息*/
export const listLawCase = params => request.get('/lawcase/lawcase/list', {params})
/*根据id删除一条案件信息*/
export const deleteLawCase = params => request.delete('/lawcase/lawcase/delete', {params})

/*项目相关*/
/*添加一条项目信息*/
export const insertProjectInfo = params => request.post('/project/project/insert', params)
