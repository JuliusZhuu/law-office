import axios from 'axios'

const instance = axios.create({
    baseURL: 'http://localhost:8089',
    timeout: 3000
})
//请求拦截
instance.interceptors.request.use(config => {
    return config;
}, error => {
    return Promise.reject(error)
})

//响应拦截
instance.interceptors.response.use(response => {
    return response.data;
}, error => {
    return Promise.reject(error);
})

//暴露出去
export default instance
