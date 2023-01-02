const express = require('express');
const router = new express.Router()
const path = require('path')
const multer = require('multer')//处理上传文件
const uploadFile = multer({ dest: path.join(__dirname, './../static/img') }); //配置目的地
const {
  getarticleclassapi,
  getarticleapi,
  addarticleviewsapi,
  getarticbyidapi,
  addarticleitemapi,
  uploadimgapi } = require('./../router_handel/article.js')
// 文章分类
router.get('/getarticleclass', getarticleclassapi)
//根据文章分类展示文章
router.post('/getarticlelist', getarticleapi)
//增加浏览量
router.post('/addarticleviews', addarticleviewsapi)
//根据id查询文章详情
router.post('/getarticbyid', getarticbyidapi)
//上传图片
router.post("/uploadimg", uploadFile.array("jpg"), uploadimgapi)
//新增加文章
router.post("/addarticleitem", addarticleitemapi)

module.exports = router 