create table card_record
(
    id          varchar(36)                         not null
        primary key,
    createdAt   timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '创建时间',
    createdBy   varchar(255)                        null comment '创建者',
    updatedAt   timestamp                           null comment '修改时间',
    updatedBy   varchar(255)                        null comment '修改者',
    deletedAt   datetime(6)                         null,
    deletedBy   varchar(255)                        null comment '删除者',
    startTime   timestamp                           null comment '开始时间',
    endTime     timestamp                           null comment '结束时间',
    buyTime     timestamp                           null comment '购买时间',
    residueTime int                                 null comment '剩余次数',
    cardId      varchar(36)                         null,
    studentId   varchar(36)                         null,
    courseId    varchar(36)                         null,
    orgId       varchar(36)                         null,
    constraint FK_4763adf564cf22f20c6088653bc
        foreign key (studentId) references student (id),
    constraint FK_5f3e9aa536fe1975a19cb5557a3
        foreign key (cardId) references card (id),
    constraint FK_f7d436017c454dff6f00c2a1470
        foreign key (courseId) references course (id),
    constraint FK_f937d57d3dbd4ff100136cf97eb
        foreign key (orgId) references organization (id)
)
    charset = utf8mb3;

