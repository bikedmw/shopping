const express = require('express');
const cors = require('cors');
const session = require('express-session');
const bodyParser = require('body-parser')
const pool = require('./pool.js')
var app = express();
app.listen(4000);
//配置静态资源目录
app.use(express.static('public'));
//配置跨域模块
app.use(cors({
    origin: ["http://127.0.0.1:5000", "http://localhost:5000"],
    credentials: true //每次请求需要验证
}))
app.use(session({
    secret: "128位字符串",//安全字符
    resave: true,//请求时更新数据
    saveUninitialized: true //保存初始数据
}))
//配置bodyParser
app.use(bodyParser.urlencoded({
    extended: true
}))
app.post('/login', (req, res) => {
    var obj = req.body;
    var sql = "select * from users where uname=? and upwd=?";
    pool.query(sql, [obj.uname, obj.upwd], (err, result) => {
        if (err) throw err;
        if (result.length == 0) {
            res.send({ code: 0, msg: "用户名或者密码错误", data: result })
        } else {
            res.send({ code: 1, msg: "登陆成功", data: result })
        }
    })
})
app.get('/list', (req, res) => {
    var pno = req.query.pno;
    var ps = req.query.pageSize;
    //3:设置默认值 pno=1 pageSize=4
    if (!pno) { pno = 1 }
    if (!ps) { ps = 4 }
    //4:计算第一问号值
    var off = (pno - 1) * ps;
    //5:对pageSize转int
    ps = parseInt(ps);
    var sql = "select * from lists limit ?,?";
    pool.query(sql,[off,ps], (err, result) => {
        if (err) throw err;
        if (result.length > 0) {
            res.send({ code: 1, msg: "查询成功", data: result })
        } else {
            res.send({ code: 0, msg: "查询失败" })
        }
    })
//请求商品详情页
app.get('/product',(req,res)=>{
    var sql="select * from products";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send({code:200,msg:"查询成功",data:result})
        }else{
            res.send({code:401,msg:"查询失败"})
        }
    })
})
})