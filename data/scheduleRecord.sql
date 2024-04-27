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

INSERT INTO water.scheduleRecord (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, orgId, studentId, cardRecordId, scheduleId, courseId, subscribeTime, status) VALUES ('0915f54c-7182-42c6-8fd2-c64309d9e125', '2023-06-17 15:21:49', null, '2023-06-17 15:21:49', 'babb398f-017c-4f9a-9652-e160f866a1b7', null, null, '2b967e80-f6c0-4cfe-a9c1-1db90a4cb4c8', 'babb398f-017c-4f9a-9652-e160f866a1b7', '0443e9fc-a59c-48ad-bd17-0b29e7a10015', 'ba09a17e-c0f3-4998-80aa-c300bc2b09d7', 'fa73f3f5-da6a-4ef4-9aa5-b9e8b81d96c4', '2023-06-15 16:15:21', 'CANCEL');
INSERT INTO water.scheduleRecord (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, orgId, studentId, cardRecordId, scheduleId, courseId, subscribeTime, status) VALUES ('10a5cc0e-a06c-4835-9ca7-0d0596c63593', '2023-06-14 16:48:20', null, '2023-06-14 16:48:20', 'babb398f-017c-4f9a-9652-e160f866a1b7', null, null, '6710fa26-2602-442a-b8af-5930430f46d5', 'babb398f-017c-4f9a-9652-e160f866a1b7', '130b9c3c-1661-41b0-a034-2250dc170d0f', '7d806f66-9b59-447b-81d7-5623d126430f', '35e642aa-e4f7-4016-8785-b7e8175a198c', null, null);
INSERT INTO water.scheduleRecord (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, orgId, studentId, cardRecordId, scheduleId, courseId, subscribeTime, status) VALUES ('225bc94a-62d8-43af-8fa1-dbd3ee12bac1', '2023-06-17 15:29:11', null, '2023-06-17 15:29:11', 'babb398f-017c-4f9a-9652-e160f866a1b7', null, null, '2b967e80-f6c0-4cfe-a9c1-1db90a4cb4c8', 'babb398f-017c-4f9a-9652-e160f866a1b7', '0443e9fc-a59c-48ad-bd17-0b29e7a10015', '0923beca-9f72-4bc3-8bf6-75f81d9eb855', 'fa73f3f5-da6a-4ef4-9aa5-b9e8b81d96c4', '2023-06-17 15:27:08', 'CANCEL');
INSERT INTO water.scheduleRecord (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, orgId, studentId, cardRecordId, scheduleId, courseId, subscribeTime, status) VALUES ('2dfba425-27e5-4b3b-ad40-6a18598744b1', '2023-06-14 16:48:09', null, '2023-06-14 16:47:19', 'babb398f-017c-4f9a-9652-e160f866a1b7', null, null, '6710fa26-2602-442a-b8af-5930430f46d5', 'babb398f-017c-4f9a-9652-e160f866a1b7', '04937291-0405-4f72-a2ee-f3db3efa087c', '7d806f66-9b59-447b-81d7-5623d126430f', '35e642aa-e4f7-4016-8785-b7e8175a198c', null, null);
INSERT INTO water.scheduleRecord (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, orgId, studentId, cardRecordId, scheduleId, courseId, subscribeTime, status) VALUES ('3c422cd4-1cc9-48f5-a79d-aba37c3fa547', '2023-06-14 16:48:34', null, '2023-06-14 16:48:34', null, null, null, '6710fa26-2602-442a-b8af-5930430f46d5', 'babb398f-017c-4f9a-9652-e160f866a1b7', '9786c2e6-a834-4abb-960c-6816c917eaa8', '4afec62b-c28c-4c16-886a-3d8ae0ac1544', 'befc60be-8292-4a82-ac31-d3e54c1b8c68', null, null);
INSERT INTO water.scheduleRecord (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, orgId, studentId, cardRecordId, scheduleId, courseId, subscribeTime, status) VALUES ('433f94b5-2b0e-43ab-a346-666d218a041c', '2023-06-17 15:23:38', null, '2023-06-17 15:23:38', 'babb398f-017c-4f9a-9652-e160f866a1b7', null, null, '2b967e80-f6c0-4cfe-a9c1-1db90a4cb4c8', 'babb398f-017c-4f9a-9652-e160f866a1b7', '0443e9fc-a59c-48ad-bd17-0b29e7a10015', '5959716f-aff2-4a8a-9202-1790e0662c2e', 'fa73f3f5-da6a-4ef4-9aa5-b9e8b81d96c4', '2023-06-17 15:23:06', 'CANCEL');
INSERT INTO water.scheduleRecord (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, orgId, studentId, cardRecordId, scheduleId, courseId, subscribeTime, status) VALUES ('64980edc-d8df-4d5f-b38c-893249e2310e', '2023-06-17 15:53:42', null, '2023-06-17 15:53:42', null, null, null, '6710fa26-2602-442a-b8af-5930430f46d5', 'babb398f-017c-4f9a-9652-e160f866a1b7', '04937291-0405-4f72-a2ee-f3db3efa087c', 'e47ed8d7-f7fa-42ae-a7e7-500fefa2ba4c', '35e642aa-e4f7-4016-8785-b7e8175a198c', '2023-06-17 15:53:42', null);
INSERT INTO water.scheduleRecord (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, orgId, studentId, cardRecordId, scheduleId, courseId, subscribeTime, status) VALUES ('6a71ce28-947c-463f-a7f9-ff21fb06215d', '2023-06-14 16:48:09', null, '2023-06-14 16:46:51', 'babb398f-017c-4f9a-9652-e160f866a1b7', null, null, '6710fa26-2602-442a-b8af-5930430f46d5', 'babb398f-017c-4f9a-9652-e160f866a1b7', '49d9aa6c-a7e9-44bf-9aa0-7fae59388c84', 'cd689bde-fdb5-43ee-9247-5cee527aa6a3', '35e642aa-e4f7-4016-8785-b7e8175a198c', null, null);
