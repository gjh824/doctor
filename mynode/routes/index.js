var express = require('express');
// 引入数据库操作的模块
let db = require('../db');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

module.exports = router;
