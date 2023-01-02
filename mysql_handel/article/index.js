const { db } = require('./../../db/index.js')
const sqlgetarticleclass = "select * from articleclass;"
// const sqlgetarticle = "select * from articleitem where class = ?"
const sqlgetarticle = "select * from articleitem  where class = ? order by id desc"
const sqlgetarticlecli = "update articleitem set click=click+1 where id = ?"
const sqlgetarticbyid = "select * from  articleitem where id = ?"
const sqladdarticleitem = "insert into articleitem set ?"
/**
 * 获取文章分类
 */
module.exports.getarticleclassmysql = () => {
  return new Promise((resolve, reject) => {
    db.query(sqlgetarticleclass, (err, results) => {
      if (err) {
        return reject(err)
      }
      if (!results.length) {
        return reject(new Error('查询失败 长度0'))
      }
      return resolve(results)
    })
  })
}
/**
 * 根据分类id 查询文章
 */
module.exports.getarticlewhereclassmsq = (classid) => {
  return new Promise((resolve, reject) => {
    db.query(sqlgetarticle, [classid], (err, results) => {
      if (err) {
        return reject(err)
      }
      if (!results.length) {
        return reject(new Error('查询失败 长度0'))
      }
      return resolve(results)
    })
  })
}
/**
 * 增加浏览量
 */
module.exports.addarticleviewsmsq = (id) => {
  return new Promise((resolve, reject) => {
    db.query(sqlgetarticlecli, [id], (err, results) => {
      if (err) {
        return reject(new Error('mysql error'))
      }
      if (!results.changedRows) {
        return reject(new Error('未查询到该文章'))
      }
      return resolve(results)
    })
  })
}

/**
 * 获取文章详情
 */
module.exports.getarticbyidmsq = async (id) => {
  return new Promise((resolve, reject) => {
    db.query(sqlgetarticbyid, [id], (err, results) => {
      if (err) {
        return reject(new Error('mysql error'))
      }
      if (!results.length) {
        return reject(new Error('未查询到该文章'))
      }
      return resolve(results)
    })
  })
}
/**
 * 添加文章
 * 
 */
module.exports.addarticleitemmsq = (data) => {
  return new Promise((resolve, reject) => {
    db.query(sqladdarticleitem, data, (err, results) => {
      if (err) {
        return reject(new Error('mysql error'))
      }
      return resolve(results)
    })
  })
}