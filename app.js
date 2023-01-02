const express = require('express');
const cors = require('cors');
const app = express();
const path = require('path');
//配置解析表单数据的中间件
app.use(express.urlencoded({ extended: false }))
const articlerouter = require('./router/articlerouter.js')
app.use(cors())
app.use('/api', articlerouter)
app.use('/static/img', express.static(path.join(__dirname, './static/img/')))
app.listen(5139, () => {
  console.log('成功启动');
})