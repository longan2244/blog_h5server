const dayjs = require('dayjs')
// require ('dayjs/locale/zh-cn')
// const relativeTime = require('dayjs/plugin/relativeTime')
// dayjs.locale('zh-cn') // 全局使用
// dayjs.extend(relativeTime)
// 解析xx多少分钟前时间
/**
 * 
 * @param {String} time  2019-03-11 09:00:00
 * @returns 
 */
module.exports.parseTime = time => {
  return dayjs(parseInt(time)).format('YYYY-MM-DD');
}