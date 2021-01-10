import request from './request'

/*登录请求*/
export const goLogin = params => request.post('/user/user/login', params)

/*案件模块相关*/
/*添加案件信息*/
export const addLawCase = params => request.post('/lawcase/lawcase/insert', params)
/*更新一条案件信息*/
export const updateLawCase = params => request.put('/lawcase/lawcase/update', params)
/*获取一条案件信息*/
export const getLawCase = params => request.get('/lawcase/lawcase/get', {params})
/*获取所有案件信息*/
export const listLawCase = params => request.get('/lawcase/lawcase/list', {params})
/*根据id删除一条案件信息*/
export const deleteLawCase = params => request.delete('/lawcase/lawcase/delete', {params})

/*项目模块相关*/
/*添加一条项目信息*/
export const insertProjectInfo = params => request.post('/project/project/insert', params)
/*更新一条项目信息*/
export const updateProjectInfo = params => request.put('/project/project/update', params)
/*列出所有项目信息*/
export const listProjectInfo = params => request.get('/project/project/list', {params})
/*删除一条项目信息*/
export const deleteProjectInfo = params => request.delete('/project/project/delete', {params})

/*客户模块相关*/
/*添加一条客户信息*/
export const insertClientInfo = params => request.post('/client/client/insert', params)
/*更新一条客户信息*/
export const updateClientInfo = params => request.put('/client/client/insert', params)
/*查询所有客户信息*/
export const listClientInfo = params => request.get('/client/client/list', {params})
/*删除一条客户信息*/
export const deleteClientInfo = params => request.delete('/client/client/delete', {params})
