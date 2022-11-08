select * from MEMBER_TABLE;

insert into member_table values('ta1', 'ta1', 'ta1', 1 , 'm', 'test', 'test');

select * from member_table where member_id = 'ta1' and member_pw = 'ta1';

update member_table set member_pw = 'aaaa' where member_id = 'qqqq@naver.com';

insert into UPLOAD_VIDEO_TABLE values(
        UPLOAD_VIDEO_TABLE_SEQ.nextval
    ,   'qqqq'
    ,   'test'
    ,   1
    ,   'dsecription'
    ,   sysdate
    ,   'm'
    ,   'C:\Users\smhrd\Desktop\web\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\rnd-romance-project\file'

)
select * from upload_video_table;

