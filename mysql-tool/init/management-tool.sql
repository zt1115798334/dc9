# drop schema if exists management_tool;
# create schema management_tool;
use management_tool;

drop table if exists Yx_SMS;
create table Yx_SMS
(
    id         bigint auto_increment
        primary key,
    RECEIVENO  varchar(255)                       not null comment '手机号',
    CONTEXT    varchar(255)                       not null comment '内容',
    CREATEDATE datetime default CURRENT_TIMESTAMP not null comment '创建时间'
)
    comment '短信表' collate = utf8_unicode_ci;
