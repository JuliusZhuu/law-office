/**
 * 时间戳
 * @param {*} timestamp  时间戳
 */
const timestampToTime = (timestamp) => {
  let date = new Date(timestamp) //时间戳为10位需*1000，时间戳为13位的话不需乘1000
  let Y = date.getFullYear() + '-'
  let M =
    (date.getMonth() + 1 < 10 ?
      '0' + (date.getMonth() + 1) :
      date.getMonth() + 1) + '-'
  let D =
    (date.getDate() < 10 ? '0' + date.getDate() : date.getDate()) + ' '
  let h =
    (date.getHours() < 10 ? '0' + date.getHours() : date.getHours()) + ':'
  let m =
    (date.getMinutes() < 10 ? '0' + date.getMinutes() : date.getMinutes()) +
    ':'
  let s =
    date.getSeconds() < 10 ? '0' + date.getSeconds() : date.getSeconds()
  return Y + M + D + h + m + s
};
/**
 * 存储localStorage
 */
const setStore = (name, content) => {
  if (!name) return;
  if (typeof content !== 'string') {
    content = JSON.stringify(content);
  }
  window.localStorage.setItem(name, content);
}

/**
 * 获取localStorage
 */
const getStore = name => {
  if (!name) return;
  return window.localStorage.getItem(name);
}

/**
 * 删除localStorage
 */
const removeStore = name => {
  if (!name) return;
  window.localStorage.removeItem(name);
}

/**
 * 设置cookie
 **/
function setCookie(name, value, day) {
  let date = new Date();
  date.setDate(date.getDate() + day);
  document.cookie = name + '=' + value + ';expires=' + date;
}

/**
 * 获取cookie
 **/
function getCookie(name) {
  let reg = RegExp(name + '=([^;]+)');
  let arr = document.cookie.match(reg);
  if (arr) {
    return arr[1];
  } else {
    return '';
  }
}

/**
 * 删除cookie
 **/
function delCookie(name) {
  setCookie(name, null, -1);
}

/**
 * 通用轻提示
 * @param vm vue实例对象,this即可
 * @param type 类型,参阅element官方文档,可选info,error等
 * @param message 内容
 */
function commonToast(vm, type = 'success', message = '成功') {
  vm.$message({type, message})
}

/**
 * 导出
 **/
export {
  commonToast,
  timestampToTime,
  setStore,
  getStore,
  removeStore,
  setCookie,
  getCookie,
  delCookie
}
