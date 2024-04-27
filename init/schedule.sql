create table schedule
(
    id          varchar(36)                         not null
        primary key,
    createdAt   timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '创建时间',
    createdBy   varchar(255)                        null comment '创建者',
    updatedAt   timestamp                           null comment '修改时间',
    updatedBy   varchar(255)                        null comment '修改者',
    deletedAt   datetime(6)                         null,
    deletedBy   varchar(255)                        null comment '删除者',
    schoolDay   timestamp                           null comment '上课日期',
    startTime   varchar(255)                        null comment '开始时间',
    endTime     varchar(255)                        null comment '结束时间',
    limitNumber int                                 null comment '人数限制',
    orgId       varchar(36)                         null,
    courseId    varchar(36)                         null,
    teacherId   varchar(36)                         null,
    constraint FK_7c4e49233bde738d80d6eae6805
        foreign key (teacherId) references teacher (id),
    constraint FK_be84bbdf75cfb618d393a7f1194
        foreign key (courseId) references course (id),
    constraint FK_fa7e493b5b034ac3951f1e1cd54
        foreign key (orgId) references organization (id)
)
    charset = utf8mb3;

