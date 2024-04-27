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

INSERT INTO water.student (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, tel, avatar, password, account, openid) VALUES ('1eb8479c-2c2b-46c0-bf19-909d065d1597', '2023-07-07 23:14:42', null, '2023-07-07 23:14:42', null, null, null, '', null, null, 'ff91204834e08c7b4cf0fd5399cc659e', 'yk77477', null);
INSERT INTO water.student (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, tel, avatar, password, account, openid) VALUES ('6585822a-436d-44ce-9452-163738bf6cd7', '2023-06-12 07:10:34', null, '2023-06-12 07:10:34', null, null, null, '', null, null, '9e5bf319ab629ae76e5227a1bf35aeb9', 'hello12345', null);
INSERT INTO water.student (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, tel, avatar, password, account, openid) VALUES ('a3ab730a-e253-4b37-b599-a2c6731bc922', '2023-06-05 03:41:53', null, '2023-06-05 03:41:53', null, null, null, '', null, null, '7c0acc4c6b75605cf12d2e1fc8f4fb42', '2222w2222', null);
INSERT INTO water.student (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, tel, avatar, password, account, openid) VALUES ('babb398f-017c-4f9a-9652-e160f866a1b7', '2023-06-02 19:38:33', null, '2023-04-17 15:21:20', null, null, null, '黑石', '19828738899', 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/1685730917398.jpg', '494cdf1722f768a87a7b324dad0ebb1e', 'black123', 'oDs6gwVdlvZhV2N3RIJKereAktKY');
INSERT INTO water.student (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, tel, avatar, password, account, openid) VALUES ('c0eabf36-533d-463b-8a3a-3bbf12a526f9', '2023-07-09 05:15:54', null, '2023-07-08 21:15:11', null, null, null, 'szy', '18526689936', 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/1688879752847.jpg', 'aa11d0059521e44b256fd3290e1cb675', 'szy123', null);
INSERT INTO water.student (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, tel, avatar, password, account, openid) VALUES ('dcd24692-23b8-423d-afb3-5ff2719b7cde', '2023-07-04 15:26:20', null, '2023-06-05 07:17:26', null, null, null, '苏彧', '15179628743', 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/1688484379545.jpeg', '6db6776fac6a6a3f92bf4e4e8b46a287', 'yh971109', 'oDs6gwQYeNz9eelGOV7nb6lH3qsM');
