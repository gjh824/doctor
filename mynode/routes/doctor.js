var express = require('express');
var router = express.Router();
// 引入数据库操作的模块
let db = require('../db');

// 引入 formidable
let formidable=require('formidable');
// 文件操作
let fs=require('fs');
let path=require('path');
const { route } = require('.');

/* GET users listing. */
// 配置登录路由
router.post('/doc', function(req, res, next) {
    console.log(req.body);
    let uname=req.body.uname;
    let pwd=req.body.pwd
    let sql='select * from user where uname=?'
    let data=[uname]
    db.base(sql,data,(result)=>{
        console.log(result[0].uid)
        if(result.length>0){
            if(pwd==result[0].pwd){
                res.cookie('u',result[0].uid,{maxAge:604800000})
                return res.send({status:1,id:result[0].uid})
            }else{
                return res.send({status:2})
            }
        }else{
            return res.send({status:3})
        }
    })
});


// 配置我的病人路由
router.get('/totalpages',function(req,res,next){
    let sqlZ='select count(*) as count from wdbr'
    // console.log(req.cookies)
    db.base(sqlZ,null,result=>{
        res.send(result)
    })
    // let pageCode=0
    // console.log(req.cookies.id)
    // let sql=`select * from wdbr limit ${pageCode},16`
    // if(req.cookies){
    //     db.base(sql,null,(result)=>{
    //         res.send(result)
    //     })
    // }
})
router.get('/pag1',(req,res)=>{
    let start=req.query.page*16
    let sql=`select * from wdbr limit ${start},16`
    db.base(sql,null,result=>{
        res.send(result)
    })
})
//  我的病人单个删除
router.get('/MySingDele',function(req,res,next){
    console.log(req.cookies)
    let sql='delete from wdbr where tel=?'
    let data=req.query.id
    // db.base(sql,data,result=>{
    //     if(result.affectedRows == 1){
    //         res.send('一个已删除')
    //     }
    // })
})
// 我的病人 多个删除
router.get('/MyBatchDele',function(req,res,next){
    let data=req.query.id
    console.log(req.query)
    // let sql='delete from wdbr where tel=?'
    // for(let i=0;i<data.length;i++){
    //     db.base(sql,data[i],result=>{
    //         if(result.affectedRows == 1){
    //             console.log('已删除')
    //         }
    //     })
    // }
})
// 我的病人 input 查找数据 
router.post('/MySearch',function(req,res,next){
    let data=req.body.myinp
    let sql=`select * from wdbr where xm like '%${data}%'`;
    db.base(sql,null,result=>{
        console.log(result)
        res.send(result)
    })
})


// 电子病历 默认数据路由
router.get('/pag2',function(req,res,next){
    let start=req.query.page*10
    // let DzCodepage=0
    let sql=`select * from dzbl limit ${start},10`
    db.base(sql,null,result=>{
        res.send(result)
    })
})
router.get('/eleDetail',function(req,res,next){
    let sqlZ='select count(*) as count from dzbl'
    db.base(sqlZ,null,result=>{
        res.send(result)
    })
})

// 删除 电子病历 数据 
router.get('/EMRdeleDzbl',function(req,res,next){
    console.log(req.query)
    let data=req.query.xh
    // let sql='delete from dzbl where xh=?'
    // for(let i=0;i<data.length;i++){
    //     db.base(sql,data[i],result=>{
    //         if(result.affectedRows == 1){
    //             console.log('已删除')
    //         }
    //     })
    // }
})





// 上传图片
router.post('/upPhoto',(req,res)=>{
    let form=new formidable.IncomingForm();
    form.parse(req,(err,files,file)=>{
    /* 1.上传[将图片从本地，上传到服务器]
        获取文件所在的位置 - 读取的管道流 - 管道流写的方式写进去 - 管道流
        */
    //    let read=fs.createReadStream(file.userImg.path);
       // 写入的时候，文件夹的名称如果不存在，则会写入失败了；需要手动创建
    //    let write=fs.createWriteStream('./public/images/'+file.userImg.name);
    //    read.pipe(write); // pipe 管道传输
    //    console.log(file.userImg)
    //    console.log(file.userImg)
    //    res.send()
    })
})


// 报告查询 默认数据

router.get('/reDefault',function(req,res,next){
    let sql='select count(*) as count from report'
    db.base(sql,null,result=>{
        res.send(result)
    })
})
router.get('/rePag',function(req,res,next){
    let start=req.query.page*10
    // let DzCodepage=0
    let sql=`select * from report limit ${start},10`
    db.base(sql,null,result=>{
        res.send(result)
    })
})
//  上传图片
router.post('/reportUpData',(req,res)=>{
    console.log(111111)
    let form=new formidable.IncomingForm();
    form.parse(req,(err,files,file)=>{
        let read=fs.createReadStream(file.userImg.path);
        let write=fs.createWriteStream('./public/images/'+file.userImg.name);
        read.pipe(write); // pipe 管道传输
        res.cookie('addReportImg','/images/'+file.userImg.name,{maxAge:604800000})
    })
})
// 报告查询 添加报告
router.post('/reportData',(req,res)=>{
    // console.log(req.cookies)
    let img=req.cookies.addReportImg
    let msg=req.body
    let times=new Date().toLocaleDateString()
    // console.log(msg)
    // 拿到 数据 插入 addreport 表中
    let sql=`insert into addreport(uname,sex,age,division,genre,diagnosis,examinat,pathology,immune,consequence,remark,times) values('${msg.uname}','${msg.sex}','${msg.age}','${msg.division}','${msg.genre}','${msg.diagnosis}','${msg.examinat}','${msg.pathology}','${msg.immune}','${msg.consequence}','${msg.remark}','${times}')`;
    db.base(sql,null,result=>{
        // console.log(result.affectedRows)
        if(result.affectedRows==1){
            let sql2=`insert into report(report_id,uname,sex,age,division,genre,times,examinat) values('${result.insertId}','${msg.uname}','${msg.sex}','${msg.age}','${msg.division}','${msg.genre}','${times}','${msg.examinat}')` 
            db.base(sql2,null,result=>{
                res.send({status:1})
            })
        }
    })
    // 截取 id sex 等 部分 插入report 表中
})

// 报告查询查看详情页面
router.get('/reDetail',(req,res)=>{
    let id=req.query.id
    let sql='select * from addreport where report_id=?'
    let data=[id]
    db.base(sql,data,result=>{
        res.send(result)
    })
})

// 修改报告
router.get('/reAdd',(req,res)=>{
    let id=req.query.id
    let sql='select * from addreport where report_id=?'
    let data=[id]
    db.base(sql,data,result=>{
        res.send(result)
    })
})
router.post('/reAddTwo',(req,res)=>{
    let params=req.body.params
    // console.log(params)
    let sql=`update addreport set  diagnosis='${params[1].diagnosis}',examinat='${params[2].examinat}',pathology='${params[3].pathology}',immune='${params[4].immune}',consequence='${params[5].consequence}',remark='${params[6].remark}' where report_id=?`
    let data=[params[0].id]
    db.base(sql,data,result=>{
        res.send(result)
    })
})




// 就诊咨询 默认数据路由
router.get('/attPag',function(req,res,next){
    let start=req.query.page*10
    let sql=`select * from jzzx limit ${start},10`
    db.base(sql,null,result=>{
        res.send(result)
    })
})
router.get('/amessage',function(req,res,next){
    let sqlZ='select count(*) as count from jzzx'
    db.base(sqlZ,null,result=>{
        res.send(result)
    })
})

//  修改 资讯 数据
router.post('/attUpData',(req,res)=>{
    let id=req.body.id
    let amend=req.body.amend
    let sql=`update jzzx set syyw='${amend}' where att_id=?`
    let data=[id]
    db.base(sql,data,result=>{
        if(result.affectedRows==1){
            // console.log(result)
            res.send(amend)
        }
    })
})

// 删除 资讯 数据
router.get('/attdele',(req,res)=>{
    let data=req.query.id
    // console.log(data)
    // let sql='delete from jzzx where att_id=?'
    // for(let i=0;i<data.length;i++){
    //     db.base(sql,data[i],result=>{
    //         if(result.affectedRows == 1){
    //             console.log('已删除')
    //         }
    //     })
    // }
})

// 处方管理 默认数据路由
router.get('/chufangPag',function(req,res,next){
    let start=req.query.page*10
    let sql=`select * from cfgl limit ${start},10`
    db.base(sql,null,result=>{
        res.send(result)
    })
})
router.get('/chufang',function(req,res,next){
    let sqlZ='select count(*) as count from cfgl'
    db.base(sqlZ,null,result=>{
        res.send(result)
    })
})
// 处方管理 批量删除
router.get('/chufangDele',(req,res)=>{
    let data=req.query.id
    // console.log(data)
    // let sql='delete from cfgl where pre_id=?'
    // for(let i=0;i<data.length;i++){
    //     db.base(sql,data[i],result=>{
    //         if(result.affectedRows == 1){
    //             console.log('已删除')
    //         }
    //     })
    // }
})
// 批量 单个删除
router.get('/cFoneDele',(req,res)=>{
    let data=req.query.id
    // console.log(data)
    let sql='delete from cfgl where pre_id=?'
    // db.base(sql,data,result=>{
    //     if(result.affectedRows==1){
    //         res.send('成功'+data)
    //     }
    // })
})
// 批量 更新 数据
router.post('/cfUpData',(req,res)=>{
    let id=req.body.id
    let amend=req.body.amend
    // console.log(req.body)
    let sql=`update cfgl set cf='${amend}' where pre_id=?`
    let data=[id]
    db.base(sql,data,result=>{
        if(result.affectedRows==1){
            res.send(amend)
        }
    })
})

// 出院管理 默认数据路由
router.get('/outHosPag',function(req,res,next){
    let start=req.query.page*10
    let sql=`select * from cygl limit ${start},10`
    db.base(sql,null,result=>{
        res.send(result)
    })
})
router.get('/chuyuan',function(req,res,next){
    let sql='select count(*) as count from cygl'
    db.base(sql,null,result=>{
        res.send(result)
    })
})
// 出院管理 批量删除
router.get('/outHosdele',(req,res)=>{
    let data=req.query.id
    console.log(data)
    // let sql='delete from cygl where out_id=?'
    // for(let i=0;i<data.length;i++){
    //     db.base(sql,data[i],result=>{
    //         if(result.affectedRows == 1){
    //             console.log('已删除')
    //         }
    //     })
    // }
})
// 出院 单个删除
router.get('/ouToneDele',(req,res)=>{
    let data=req.query.id
    console.log(data)
    let sql='delete from cygl where out_id=?'
    // db.base(sql,data,result=>{
    //     if(result.affectedRows==1){
    //         res.send('成功'+data)
    //     }
    // })
})

// 住院管理 默认数据路由
router.get('/inHosPag',function(req,res,next){
    let start=req.query.page*10
    let sql=`select * from zygl limit ${start},10`
    db.base(sql,null,result=>{
        res.send(result)
    })
})
router.get('/inhistory',function(req,res,next){
    let sql='select count(*) as count from zygl'
    db.base(sql,null,result=>{
        res.send(result)
    })
})
// 住院管理 批量删除
router.get('/inHosdele',(req,res)=>{
    let data=req.query.id
    console.log(data)
    // let sql='delete from zygl where inh_id=?'
    // for(let i=0;i<data.length;i++){
    //     db.base(sql,data[i],result=>{
    //         if(result.affectedRows == 1){
    //             console.log('已删除')
    //         }
    //     })
    // }
})
// 住院 单个删除
router.get('/inHoneDele',(req,res)=>{
    let data=req.query.id
    console.log(data)
    let sql='delete from zygl where inh_id=?'
    // db.base(sql,data,result=>{
    //     if(result.affectedRows==1){
    //         res.send('成功'+data)
    //     }
    // })
})

// 个人信息 默认路由
router.post('/msgInfo',function(req,res,next){
    // let info = req.body
    let sql = 'select * from grxx'
    // let data=[info]
    db.base(sql, null, (result)=>{
        console.log(result[0]);
        res.send(result[0])
        
    })
})
// 个人信息 修改操作
router.post('/save',function(req,res,next){
    let info=req.body
    //添加数据的操作
    // let data={};
    // for ( let key in info){
    //     data[key] = info[key]
    // }
    // let sql = 'insert into grxx set ?'
    //修改数据的操作
    let sql = 'update  grxx set uname=?,sex=?, year=?, month=?, tl=?, predictdate=?, hospitalte=?, age=?, hospsitepro=? ,hospsitecity=?, deppartment=?, hospsite=?, docinfo=?, workexp=?'
    let data = [info.uname, info.sex, info.year, info.month, info.tl,info.predictdate,info.hospitalte,info.age, info.hospsitepro, info.hospsitecity, info.deppartment, info.hospsite, info.docinfo, info.workexp ]
    db.base(sql,data,(result)=>{

        console.log(data);
        res.send(result)
        
    })
})

module.exports = router;
