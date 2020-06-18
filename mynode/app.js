var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');


// 引入 formidable
let formidable=require('formidable');
// 文件操作
let fs=require('fs');
// let path=require('path');


var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
// 配置医生路由
var doctorRouter = require('./routes/doctor');

var app = express();


//自定义跨域中间件
var allowCORS = function(req, res, next) {
  res.header( 'Access-Control-Allow-Origin', req.headers.origin);
  res.header( 'Access-Control-Allow-Methods',' GET, POST, PUT,DELETE, OPTIONS');
  res.header( 'Access-Control-Allow-Headers', ' Content-Type');
  res.header( 'Access-Control-Allow-Credentials', 'true');

  next();

} 
//使用跨域中间件
app. use(allowCORS);

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', indexRouter);
app.use('/users', usersRouter);

// 配置医生路由
app.use('/doctor', doctorRouter);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
