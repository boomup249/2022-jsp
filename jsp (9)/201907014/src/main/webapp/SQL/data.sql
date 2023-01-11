USE mysns;

INSERT INTO user VALUES("kim@abc.com", "111", "김시민", now());
INSERT INTO user VALUES("lee@abc.com", "111", "이순신", now());
INSERT INTO user VALUES("kwon@abc.com", "111", "권율", now());

INSERT INTO feed(id, content, images) VALUES("kim@abc.com", "Hello", "noimg.png");
INSERT INTO feed(id, content, images) VALUES("kwon@abc.com", "Aloha", "noimg.png");