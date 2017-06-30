SET GLOBAL auto_increment_increment = 4;
SET GLOBAL auto_increment_offset = 2;



USE hw;

DROP TABLE IF EXISTS writing;
CREATE TABLE writing(
	id INT(11) NOT NULL AUTO_INCREMENT COMMENT '글 번호'
    , priority INT(11) NOT NULL COMMENT '글 우선순위'
    , depth INT(11) NOT NULL DEFAULT '0' COMMENT '답글 깊이'
    , title VARCHAR(50) NOT NULL COMMENT '글 제목'
    , content TEXT NOT NULL COMMENT '글 내용'
    , PRIMARY KEY (id)
)ENGINE=INNODB CHARSET=utf8 COMMENT='계층형게시판'
;

INSERT INTO writing (id, priority, depth, title, content) VALUES (1, 100 , 0 , 'aa' , '2013-01-01');
INSERT INTO writing (priority, depth, title, content) VALUES (200 , 0 , 'bb' , '2013-01-01');
INSERT INTO writing (priority, depth, title, content) VALUES (300 , 0 , 'cc' , '2013-01-01');