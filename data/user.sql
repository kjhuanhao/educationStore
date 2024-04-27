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

INSERT INTO water.user (id, name, `desc`, tel, avatar, code, codeCreateTimeAt) VALUES ('5cfcbcf4-9914-4476-8ded-5e7bd49b3dd7', '龙傲天', '明天艺术培训中心', '18612055774', 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1685950480847-28.jpg', null, null);
INSERT INTO water.user (id, name, `desc`, tel, avatar, code, codeCreateTimeAt) VALUES ('5dc9e240-78bf-4ea8-8ae8-1c8498c9f70e', '', '', '18318266985', null, null, null);
INSERT INTO water.user (id, name, `desc`, tel, avatar, code, codeCreateTimeAt) VALUES ('5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '', '', '13418786371', 'http://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1685179460528-2.jpeg', '1011', '2023-07-09 16:29:19');
INSERT INTO water.user (id, name, `desc`, tel, avatar, code, codeCreateTimeAt) VALUES ('5fe23f65-396b-43ea-b3b3-d921a35b001b', '', '', '15179628743', null, null, null);
INSERT INTO water.user (id, name, `desc`, tel, avatar, code, codeCreateTimeAt) VALUES ('ae9c26ce-8190-4360-8a03-5df3aa9d1b38', '', '', '18312738232', null, null, null);
INSERT INTO water.user (id, name, `desc`, tel, avatar, code, codeCreateTimeAt) VALUES ('b5c3987b-a806-42bc-a97f-e672c8c2b0b3', '', '', '13677589641', null, null, null);
INSERT INTO water.user (id, name, `desc`, tel, avatar, code, codeCreateTimeAt) VALUES ('df5394b9-2665-4341-9356-ece89d60b352', '', '', '18128367372', null, null, null);
INSERT INTO water.user (id, name, `desc`, tel, avatar, code, codeCreateTimeAt) VALUES ('edd03585-dec4-4f36-b2ef-32b4fe2e5f2c', '', '', '18526689936', null, null, null);
