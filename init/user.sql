create table user
(
    id               varchar(36)             not null
        primary key,
    name             varchar(255) default '' not null comment '昵称',
    `desc`           varchar(255) default '' not null comment '描述',
    tel              varchar(255)            null comment '手机号',
    avatar           varchar(255)            null comment '头像',
    code             varchar(255)            null comment '验证码',
    codeCreateTimeAt datetime                null comment '验证码生成时间'
)
    charset = utf8mb3;

