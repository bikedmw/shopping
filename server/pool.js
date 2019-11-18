const mysql=require('mysql');
var pool=mysql.createPool({
    host:'127.0.0.1',
    user:"root",
    password:"",
    port:3306,
    database:"mt",
    //连接池大小
    connectionLimit:15
})
module.exports=pool;