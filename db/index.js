//导入mysql
const mysql = require('mysql')
//配置
module.exports.db = mysql.createPool({
  host: 'localhost',
  // host: '127.0.0.1',
  user: 'root',
  password: 'admin123', //数据库密码
  database: 'boke'
})
