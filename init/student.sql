create table student
(
    id        varchar(36)                            not null
        primary key,
    createdAt timestamp    default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '创建时间',
    createdBy varchar(255)                           null comment '创建者',
    updatedAt timestamp                              null comment '修改时间',
    updatedBy varchar(255)                           null comment '修改者',
    deletedAt datetime(6)                            null,
    deletedBy varchar(255)                           null comment '删除者',
    name      varchar(255) default ''                not null comment '昵称',
    tel       varchar(255)                           null comment '手机号',
    avatar    varchar(255)                           null comment '头像',
    password  varchar(255)                           not null comment '密码',
    account   varchar(255)                           not null comment '账户',
    openid    varchar(255)                           null comment 'openid'
)
    charset = utf8mb3;

