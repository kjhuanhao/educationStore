create table teacher
(
    id          varchar(36)                         not null
        primary key,
    createdAt   timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '创建时间',
    createdBy   varchar(255)                        null comment '创建者',
    updatedAt   timestamp                           null comment '修改时间',
    updatedBy   varchar(255)                        null comment '修改者',
    deletedAt   datetime(6)                         null,
    deletedBy   varchar(255)                        null comment '删除者',
    name        varchar(255)                        not null comment '名称',
    photoUrl    varchar(255)                        null comment '照片',
    teacherTime int                                 null comment '教龄',
    education   varchar(255)                        null comment '学历',
    seniority   varchar(255)                        null comment '资历',
    experience  varchar(255)                        null comment '职业经验',
    carryPrize  varchar(255)                        null comment '获奖经历',
    tags        varchar(255)                        null comment '风格标签，以，隔开',
    orgId       varchar(36)                         null,
    constraint FK_9d664dabc5b79a281bc92f9b106
        foreign key (orgId) references organization (id)
)
    charset = utf8mb3;

