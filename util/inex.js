const { baseurl } = require('./../baseurl.js')
const staticimg = `${baseurl}/static/img/`
const { parseTime } = require('./../util/dayjs.js')
const fs = require('fs')
const path = require('path')
const baseimgfs = path.join(__dirname, '../static/img/')
/**
 * 数据处理函数
 */
module.exports.pathimgurl = (data) => {
  data.forEach(element => {
    element.sendtime = parseTime(element.sendtime)
    element.newimgurl = []
    let imgarr = element.imgurl.split(';')
    if (element.imgurl == ';') {
      return data
    }
    if (imgarr[1] == '') {
      element.newimgurl.push(`${staticimg}${imgarr[0]}`)
      return data
    }
    imgarr.forEach(imgurl => {
      element.newimgurl.push(`${staticimg}${imgurl}`)//循环添加到数组
    })
  })
  return data
}
/**
 * 重命名multer文件名
 */
module.exports.rednamemulterimg = (req) => {
  req.files.forEach(element => {
    fs.rename(`${baseimgfs}${element.filename}`, `${baseimgfs}${element.originalname}`, (err) => {
      if (err) return false;
    });
  });
  return true
}