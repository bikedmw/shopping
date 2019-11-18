SET NAMES UTF8;
DROP DATABASE IF EXISTS  mt;
CREATE DATABASE mt CHARSET=UTF8;
USE mt;
CREATE TABLE users(
    uid INT  PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR
(32),
    upwd VARCHAR
(32) 
);
INSERT INTO users
VALUES(NULL, 'dingding', '123456');
CREATE TABLE lists(
    lid INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR (50),
    img VARCHAR (108)
);
INSERT INTO lists(lid,title,img) VALUES
    (NULL, "美食", 'http://127.0.0.1:4000/imgs/timg.jpg'),
    (NULL, "甜点饮品", 'http://127.0.0.1:4000/imgs/timg.jpg'),
    (NULL, "超市便利", 'http://127.0.0.1:4000/imgs/timg.jpg'),
    (NULL, "蔬菜水果", 'http://127.0.0.1:4000/imgs/timg.jpg'),
    (NULL, "送药上门", 'http://127.0.0.1:4000/imgs/timg.jpg'),
    (NULL, "下午茶", 'http://127.0.0.1:4000/imgs/timg.jpg'),
    (NULL, "快食简餐", 'http://127.0.0.1:4000/imgs/timg.jpg'),
    (NULL, "面包蛋糕", 'http://127.0.0.1:4000/imgs/timg.jpg'),
    (NULL, "品牌连锁", 'http://127.0.0.1:4000/imgs/timg.jpg'),
    (NULL, "津贴联盟", 'http://127.0.0.1:4000/imgs/timg.jpg'),
    (NULL, "减免配送费", 'http://127.0.0.1:4000/imgs/timg.jpg'),
    (NULL, "到店自取", 'http://127.0.0.1:4000/imgs/timg.jpg'),
    (NULL, "跑腿代购", 'http://127.0.0.1:4000/imgs/timg.jpg'),
    (NULL, "专送", 'http://127.0.0.1:4000/imgs/timg.jpg'),
    (NULL, "全部分类", 'http://127.0.0.1:4000/imgs/timg.jpg');

CREATE TABLE products(
    pid INT  PRIMARY KEY AUTO_INCREMENT,
    names VARCHAR (32),
    price INT,
    img VARCHAR(108),
    times VARCHAR(40),
    shipping_fee_tip VARCHAR(60),
    min_price_tip VARCHAR(60),
    average_price_tip VARCHAR(70), 
    distance VARCHAR(30)
);
INSERT INTO products(pid,names,price,img,times,shipping_fee_tip,min_price_tip,average_price_tip,distance) VALUES
(NULL,"黄焖鸡米饭",50,'http://127.0.0.1:4000/imgs/timg.jpg','50分钟','起送$20','配送$1','人均$1','看上去特别美味'),
(NULL,"黄焖鸡米饭",50,'http://127.0.0.1:4000/imgs/timg.jpg','50分钟','起送$20','配送$1','人均$1','看上去特别美味'),
(NULL,"黄焖鸡米饭",50,'http://127.0.0.1:4000/imgs/timg.jpg','50分钟','起送$20','配送$1','人均$1','看上去特别美味'),
(NULL,"黄焖鸡米饭",50,'http://127.0.0.1:4000/imgs/timg.jpg','50分钟','起送$20','配送$1','人均$1','看上去特别美味'),
(NULL,"黄焖鸡米饭",50,'http://127.0.0.1:4000/imgs/timg.jpg','50分钟','起送$20','配送$1','人均$1','看上去特别美味'),
(NULL,"黄焖鸡米饭",50,'http://127.0.0.1:4000/imgs/timg.jpg','50分钟','起送$20','配送$1','人均$1','看上去特别美味'),
(NULL,"黄焖鸡米饭",50,'http://127.0.0.1:4000/imgs/timg.jpg','50分钟','起送$20','配送$1','人均$1','看上去特别美味'),
(NULL,"黄焖鸡米饭",50,'http://127.0.0.1:4000/imgs/timg.jpg','50分钟','起送$20','配送$1','人均$1','看上去特别美味'),
(NULL,"黄焖鸡米饭",50,'http://127.0.0.1:4000/imgs/timg.jpg','50分钟','起送$20','配送$1','人均$1','看上去特别美味'),
(NULL,"黄焖鸡米饭",50,'http://127.0.0.1:4000/imgs/timg.jpg','50分钟','起送$20','配送$1','人均$1','看上去特别美味'),
(NULL,"黄焖鸡米饭",50,'http://127.0.0.1:4000/imgs/timg.jpg','50分钟','起送$20','配送$1','人均$1','看上去特别美味'),
(NULL,"黄焖鸡米饭",50,'http://127.0.0.1:4000/imgs/timg.jpg','50分钟','起送$20','配送$1','人均$1','看上去特别美味'),
(NULL,"黄焖鸡米饭",50,'http://127.0.0.1:4000/imgs/timg.jpg','50分钟','起送$20','配送$1','人均$1','看上去特别美味');



