#完成任务用户登陆
#创建用户表xz_login
CREATE TABLE xz_login(
    id INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(25),
    upwd VARCHAR(32)
);
INSERT INTO xz_login
VALUES(null,'tom',md5('123'));

select id,uname,upwd from xz_login;
INSERT into xz_login values(null,'kk',md5('123'));
update xz_login set upwd=md5('456') where id=2;
delete from xz_login where id=2;

#创建新闻表
#xz_news
#   id INT
#   img_url VARCHAR(255)
#   title   VARCHAR(225)
#   ctime  DATETIME
#   point   INT
#   content VARCHAR(20000)
CREATE TABLE xz_news(
  id INT PRIMARY KEY AUTO_INCREMENT,
  img_url VARCHAR(255),
  title VARCHAR(255),
  ctime DATETIME,
  point INT,
  content VARCHAR(2000)
);
INSERT INTO xz_news VALUES(null,
'http://127.0.0.1:3000/img/1.png',
'111',now(),0,'111');
INSERT INTO xz_news VALUES(null,
'http://127.0.0.1:3000/img/1.png',
'112',now(),0,'111');
INSERT INTO xz_news VALUES(null,
'http://127.0.0.1:3000/img/1.png',
'113',now(),0,'111');
INSERT INTO xz_news VALUES(null,
'http://127.0.0.1:3000/img/1.png',
'114',now(),0,'111');
INSERT INTO xz_news VALUES(null,
'http://127.0.0.1:3000/img/1.png',
'115',now(),0,'111');
INSERT INTO xz_news VALUES(null,
'http://127.0.0.1:3000/img/1.png',
'116',now(),0,'111');
INSERT INTO xz_news VALUES(null,
'http://127.0.0.1:3000/img/1.png',
'117',now(),0,'111');
INSERT INTO xz_news VALUES(null,
'http://127.0.0.1:3000/img/1.png',
'118',now(),0,'111');
INSERT INTO xz_news VALUES(null,
'http://127.0.0.1:3000/img/1.png',
'119',now(),0,'111');
INSERT INTO xz_news VALUES(null,
'http://127.0.0.1:3000/img/1.png',
'1110',now(),0,'111');
INSERT INTO xz_news VALUES(null,
'http://127.0.0.1:3000/img/1.png',
'1111',now(),0,'111');
INSERT INTO xz_news VALUES(null,
'http://127.0.0.1:3000/img/1.png',
'1112',now(),0,'111');
INSERT INTO xz_news VALUES(null,
'http://127.0.0.1:3000/img/1.png',
'1113',now(),0,'111');
INSERT INTO xz_news VALUES(null,
'http://127.0.0.1:3000/img/1.png',
'1114',now(),0,'111');
INSERT INTO xz_news VALUES(null,
'http://127.0.0.1:3000/img/1.png',
'1115',now(),0,'111');
INSERT INTO xz_news VALUES(null,
'http://127.0.0.1:3000/img/1.png',
'1116',now(),0,'111');
INSERT INTO xz_news VALUES(null,
'http://127.0.0.1:3000/img/1.png',
'1117',now(),0,'111');
INSERT INTO xz_news VALUES(null,
'http://127.0.0.1:3000/img/1.png',
'1118',now(),0,'111');
INSERT INTO xz_news VALUES(null,
'http://127.0.0.1:3000/img/1.png',
'1119',now(),0,'111');
INSERT INTO xz_news VALUES(null,
'http://127.0.0.1:3000/img/1.png',
'11120',now(),0,'111');
INSERT INTO xz_news VALUES(null,
'http://127.0.0.1:3000/img/1.png',
'11121',now(),0,'111');

#创建新闻评论表
CREATE TABLE xz_comment(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nid INT,
    content VARCHAR(120),
    ctime DATETIME
)

#创建购物车表
#货币误差 小数1-0.99=0.100000000001
CREATE TABLE xz_cart(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uid INT,
  pid INT,
  price DECIMAL(10,2),
  pname VARCHAR(255)
);
INSERT INTO xz_cart VALUES(null,1,1,100,'茶');
INSERT INTO xz_cart VALUES(null,1,2,200,'烟');
INSERT INTO xz_cart VALUES(null,1,3,300,'酒');
INSERT INTO xz_cart VALUES(null,1,4,100,'茶');
INSERT INTO xz_cart VALUES(null,1,5,200,'烟');
INSERT INTO xz_cart VALUES(null,1,6,300,'酒');
INSERT INTO xz_cart VALUES(null,1,7,100,'茶');
INSERT INTO xz_cart VALUES(null,1,8,200,'烟');
INSERT INTO xz_cart VALUES(null,1,9,300,'酒');
INSERT INTO xz_cart VALUES(null,1,10,100,'茶');
INSERT INTO xz_cart VALUES(null,1,11,200,'烟');
INSERT INTO xz_cart VALUES(null,1,12,300,'酒');
INSERT INTO xz_cart VALUES(null,1,13,100,'茶');
INSERT INTO xz_cart VALUES(null,1,14,200,'烟');
INSERT INTO xz_cart VALUES(null,1,15,300,'酒');
INSERT INTO xz_cart VALUES(null,1,16,100,'茶');
INSERT INTO xz_cart VALUES(null,1,17,200,'烟');
INSERT INTO xz_cart VALUES(null,1,18,300,'酒');
INSERT INTO xz_cart VALUES(null,1,19,100,'茶');
INSERT INTO xz_cart VALUES(null,1,20,200,'烟');
INSERT INTO xz_cart VALUES(null,1,21,300,'酒');
INSERT INTO xz_cart VALUES(null,1,22,100,'茶');
INSERT INTO xz_cart VALUES(null,1,23,200,'烟');
INSERT INTO xz_cart VALUES(null,1,24,300,'酒');