-- ##### 먼저 Oracle Docker Container 시작해야 함
-- $ docker volume create oracle-volume
-- $ docker run -d --name myoracle -p 1521:1521 -e ORACLE_PASSWORD=1234 -v oracle-volume:/u01/app/oracle/oradata gvenzl/oracle-xe:11


-- SYS 계정으로 접속 후 실행하는 쿼리문
DROP USER min CASCADE;
CREATE USER min IDENTIFIED BY min;
GRANT CONNECT, RESOURCE TO min;

-- min 계정으로 접속 후 실행하는 쿼리문
DROP SEQUENCE post_seq;
CREATE SEQUENCE post_seq;
DROP TABLE post;
CREATE TABLE post (
  id NUMBER NOT NULL PRIMARY KEY,
  name VARCHAR2(40),
  write_date VARCHAR2(100),
  content VARCHAR2(400),
  attached_file VARCHAR2(250)
);

-- min 계정으로 접속 후 실행하는 쿼리
INSERT INTO post (id, name, write_date, content) VALUES (post_seq.NEXTVAL, '홍길동', '2020-01-01 00:00:00', '결혼을 축하합니다.');
COMMIT;