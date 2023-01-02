const { getarticleclassmysql, getarticlewhereclassmsq, addarticleviewsmsq,
  getarticbyidmsq, addarticleitemmsq
} = require('./../mysql_handel/article/index.js')
const { pathimgurl, rednamemulterimg } = require('./../util/inex.js')
/**
 * 获取文章分类
 */
module.exports.getarticleclassapi = async (req, res) => {
  try {
    let data = await getarticleclassmysql()
    return res.send({
      code: 1,
      msg: "获取文章分类成功",
      data
    })
  } catch (error) {
    return res.send({
      code: 0,
      msg: error.message
    })
  }
}

/**
 * 根据分类id获取文章
 */
module.exports.getarticleapi = async (req, res) => {
  console.log(req.body);
  if (!req.body.classid) return res.send({
    code: 0,
    msg: '请提交classid'
  })
  try {
    let data = await getarticlewhereclassmsq(req.body.classid)
    return res.send({
      code: 1,
      msg: "获取文章成功",
      data: pathimgurl(data)//处理数据
    })
  } catch (error) {
    return res.send({
      code: 0,
      msg: error.message
    })
  }
}
/**
 * 增加文章浏览量
 */
module.exports.addarticleviewsapi = async (req, res) => {
  if (!req.body.id) return res.send({
    code: 0,
    msg: '请提交文章id'
  })
  try {
    let data = await addarticleviewsmsq(req.body.id)
    return res.send({
      code: 1,
      msg: "浏览量+1",
      data
    })
  } catch (error) {
    return res.send({
      code: 0,
      msg: error.message
    })
  }
}

/**
 * 根据文章id获取文章内容
 */

module.exports.getarticbyidapi = async (req, res) => {
  if (!req.body.id) return res.send({
    code: 0,
    msg: '请提交文章id'
  })
  try {
    let data = await getarticbyidmsq(req.body.id)
    return res.send({
      code: 1,
      msg: "获取文章成功",
      data: pathimgurl(data)//处理数据
    })
  } catch (error) {
    return res.send({
      code: 0,
      msg: error.message
    })
  }
}

/**
 * 上传图片
 */
module.exports.uploadimgapi = async (req, res) => {
  try {
    if (rednamemulterimg(req)) {
      return res.send({
        code: 1,
        msg: '上传图片成功'
      })
    }
    return res.send({
      code: 0,
      msg: '上传图片失败'
    })
  } catch (error) {
    return res.send({
      code: 0,
      msg: '上传图片失败'
    })
  }
}


/***
 * 新增文章
 */
module.exports.addarticleitemapi = async (req, res) => {
  let obj = req.body
  if (obj.artictitle == '' || obj.articclass == '' || obj.articleshtml == '') {
    return res.send({
      code: 0,
      msg: '上传错误'
    })
  }

  try {
    let option = {
      title: obj.artictitle,
      class: obj.articclass,
      content: obj.articleshtml,
      imgurl: obj.articimgurl + ';',
      classname: obj.classname,
      sendtime: Date.now()
    }
    let data = await addarticleitemmsq(option)
    res.send({
      code: 1,
      msg: '添加成功'
    })
  } catch (error) {
    return res.send({
      code: 0,
      msg: '上传错误'
    })
  }
}
