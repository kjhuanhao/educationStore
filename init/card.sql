create table card
(
    id          varchar(36)                            not null
        primary key,
    createdAt   timestamp    default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '创建时间',
    createdBy   varchar(255)                           null comment '创建者',
    updatedAt   timestamp                              null comment '修改时间',
    updatedBy   varchar(255)                           null comment '修改者',
    deletedAt   datetime(6)                            null,
    deletedBy   varchar(255)                           null comment '删除者',
    name        varchar(255) default ''                not null comment '名称',
    type        varchar(255) default 'time'            not null comment '卡类型',
    time        int          default 0                 not null comment '上课次数',
    validityDay int          default 0                 not null comment '有效期',
    courseId    varchar(36)                            null,
    orgId       varchar(36)                            null,
    constraint FK_0b739c2e3573cc62ea799ba3e1d
        foreign key (courseId) references course (id),
    constraint FK_2ddfcd5175843e1beae28b7e5df
        foreign key (orgId) references organization (id)
)
    charset = utf8mb3;

