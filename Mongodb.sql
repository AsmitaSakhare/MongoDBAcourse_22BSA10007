show databases;

create database VIT;

drop database VIT;
use Vit;
create table CSE(
s_id int,
s_name varchar(30),
s_mark int 
);

show tables from vit;

select *from cse;
insert into cse values(1001, 'Ram Charan', 99);

use vit;
create table CSECloud(
s_id int,
s_class varchar(30),
s_attendance int
);

insert into CSECloud values(100, 'data management', 78);
insert into CSECloud values(101, 'security' , 56);
insert into CSECloud values(102, 'microservices', 98);
insert into CSECloud values(103, 'AWS', 100);
insert into CSECloud values(104, 'HPC', 97);

show tables from vit;
ALTER TABLE CSE ADD(
    address VARCHAR(200)
);

show tables from vit;
select * from cse;
desc cse;
alter table cse add(
s_country varchar(30) default 'india'
);

ALTER TABLE cse RENAME column 
    s_country TO s_state;
    
    desc cse;
    desc csecloud;
    select* from csecloud;
    
    insert into csecloud values (105, 'maths', 87),(106, 'english', 65);
    
    use vit;
    delete from CSECloud where s_id = 101;
    
    update csecloud set s_attendance = 87 where s_id = 104;
    
    update csecloud set s_attendance = s_attendance+1;

    
    select s_id, s_attendance from csecloud;
	select s_id, s_attendance from csecloud where s_id = 104;