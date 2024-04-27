create table scheduleRecord
(
    id            varchar(36)                         not null
        primary key,
    createdAt     timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '创建时间',
    createdBy     varchar(255)                        null comment '创建者',
    updatedAt     timestamp                           null comment '修改时间',
    updatedBy     varchar(255)                        null comment '修改者',
    deletedAt     datetime(6)                         null,
    deletedBy     varchar(255)                        null comment '删除者',
    orgId         varchar(36)                         null,
    studentId     varchar(36)                         null,
    cardRecordId  varchar(36)                         null,
    scheduleId    varchar(36)                         null,
    courseId      varchar(36)                         null,
    subscribeTime timestamp                           null comment '预约时间',
    status        varchar(255)                        null comment '状态',
    constraint FK_041b8d2ad5110d1dc56caace5cd
        foreign key (cardRecordId) references card_record (id),
    constraint FK_0970ae770a2c6250bac8d8150f3
        foreign key (courseId) references course (id),
    constraint FK_2b28a392e6b1b5e9077a6c32b7a
        foreign key (studentId) references student (id),
    constraint FK_3fab35448f46e728fb093330d3a
        foreign key (scheduleId) references schedule (id),
    constraint FK_9f44ac712e3b4d892e00b97d14e
        foreign key (orgId) references organization (id)
)
    charset = utf8mb3;

