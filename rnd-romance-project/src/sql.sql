select * from MEMBER_TABLE;

insert into member_table values('ta1', 'ta1', 'ta1', 1 , 'm', 'test', 'test');

select * from member_table where member_id = 'ta1' and member_pw = 'ta1';

update member_table set member_pw = 'aaaa' where member_id = 'qqqq@naver.com';