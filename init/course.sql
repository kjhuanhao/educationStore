create table course
(
    id            varchar(36)                         not null
        primary key,
    createdAt     timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '创建时间',
    createdBy     varchar(255)                        null comment '创建者',
    updatedAt     timestamp                           null comment '修改时间',
    updatedBy     varchar(255)                        null comment '修改者',
    deletedAt     datetime(6)                         null,
    deletedBy     varchar(255)                        null comment '删除者',
    name          varchar(255)                        not null comment '课程名称',
    `desc`        text                                null comment '课程描述',
    `group`       varchar(255)                        not null comment '适龄人群',
    baseAbility   varchar(255)                        not null comment '适合基础',
    limitNumber   int                                 not null comment '限制上课人数',
    duration      int                                 not null comment '持续时间',
    reserveInfo   varchar(255)                        null comment '预约信息',
    refundInfo    varchar(255)                        null comment '退款信息',
    otherInfo     varchar(255)                        null comment '其他说明信息',
    reducibleTime text                                null comment '可约时间',
    orgId         varchar(36)                         null,
    coverUrl      varchar(255)                        null comment '封面图',
    constraint FK_e29a2256e16530deb4cc8c78ec3
        foreign key (orgId) references organization (id)
)
    charset = utf8mb3;

