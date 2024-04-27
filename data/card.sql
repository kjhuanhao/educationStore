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

INSERT INTO water.card (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, type, time, validityDay, courseId, orgId) VALUES ('2eef5697-be81-4ecd-a9d8-8322524578ca', '2023-05-28 06:30:21', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-05-28 06:30:21', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', null, null, '2 周写作冲刺班', 'time', 10, 1, 'befc60be-8292-4a82-ac31-d3e54c1b8c68', '6710fa26-2602-442a-b8af-5930430f46d5');
INSERT INTO water.card (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, type, time, validityDay, courseId, orgId) VALUES ('5e77eff4-21c3-48a7-b61a-dee662490e8c', '2023-06-09 17:55:22', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-06-09 17:55:22', null, null, null, '2次体验卡', 'time', 2, 100, 'fa73f3f5-da6a-4ef4-9aa5-b9e8b81d96c4', '2b967e80-f6c0-4cfe-a9c1-1db90a4cb4c8');
INSERT INTO water.card (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, type, time, validityDay, courseId, orgId) VALUES ('e2ae3b9d-6e44-466d-bf6b-4d27e2a19a35', '2023-05-04 19:03:10', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-05-04 19:03:10', null, null, null, '一节体验课', 'time', 1, 30, '35e642aa-e4f7-4016-8785-b7e8175a198c', '6710fa26-2602-442a-b8af-5930430f46d5');
INSERT INTO water.card (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, type, time, validityDay, courseId, orgId) VALUES ('ed778458-b830-4235-8586-513b58766bd1', '2023-05-28 08:31:26', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-05-05 00:23:12', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', null, null, '2 周阅读理解冲刺班', 'duration', 0, 14, 'befc60be-8292-4a82-ac31-d3e54c1b8c68', '6710fa26-2602-442a-b8af-5930430f46d5');
