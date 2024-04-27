create table org_image
(
    id              varchar(36)  not null
        primary key,
    url             text         not null comment '地址',
    remark          varchar(255) null comment 'remark',
    orgIdForFrontId varchar(36)  null,
    orgIdForRoomId  varchar(36)  null,
    orgIdForOtherId varchar(36)  null,
    constraint FK_21c6620c4a108142b673c70697a
        foreign key (orgIdForOtherId) references organization (id),
    constraint FK_63d62c57996b1fc20a02e80c508
        foreign key (orgIdForFrontId) references organization (id),
    constraint FK_8bae051d6ee0069e520df974433
        foreign key (orgIdForRoomId) references organization (id)
)
    charset = utf8mb3;

INSERT INTO water.org_image (id, url, remark, orgIdForFrontId, orgIdForRoomId, orgIdForOtherId) VALUES ('136d27e0-7c2c-4cf4-8461-1a65e5bdae2c', 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1685950480847-16.jpg', null, 'e03a6e83-bfde-4ce7-b995-4f3ea7d122cf', null, null);
INSERT INTO water.org_image (id, url, remark, orgIdForFrontId, orgIdForRoomId, orgIdForOtherId) VALUES ('2c24b2e4-b0f2-472d-a0c3-a0d8218b9988', 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1683304657157-14.jpg', null, '6710fa26-2602-442a-b8af-5930430f46d5', null, null);
INSERT INTO water.org_image (id, url, remark, orgIdForFrontId, orgIdForRoomId, orgIdForOtherId) VALUES ('367dd299-7634-4ed8-94c4-d56f4364122d', 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1686332618410-14.jpeg', null, null, null, '2b967e80-f6c0-4cfe-a9c1-1db90a4cb4c8');
INSERT INTO water.org_image (id, url, remark, orgIdForFrontId, orgIdForRoomId, orgIdForOtherId) VALUES ('4f30d10b-4255-4e44-ade3-86b889b1ffca', 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1683304657157-22.jpeg', null, null, null, '6710fa26-2602-442a-b8af-5930430f46d5');
INSERT INTO water.org_image (id, url, remark, orgIdForFrontId, orgIdForRoomId, orgIdForOtherId) VALUES ('7f289b41-c852-4d77-b137-9094cae52fd1', 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1686332618410-10.jpg', null, '2b967e80-f6c0-4cfe-a9c1-1db90a4cb4c8', null, null);
INSERT INTO water.org_image (id, url, remark, orgIdForFrontId, orgIdForRoomId, orgIdForOtherId) VALUES ('92e23052-5d46-4dc3-a42d-89dd770f5870', 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1683304657157-16.jpg', null, '6710fa26-2602-442a-b8af-5930430f46d5', null, null);
INSERT INTO water.org_image (id, url, remark, orgIdForFrontId, orgIdForRoomId, orgIdForOtherId) VALUES ('9d8a1cdd-5844-4985-987a-1f840abac52f', 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1686332618410-12.jpg', null, null, '2b967e80-f6c0-4cfe-a9c1-1db90a4cb4c8', null);
INSERT INTO water.org_image (id, url, remark, orgIdForFrontId, orgIdForRoomId, orgIdForOtherId) VALUES ('c06c56bf-8ec0-499b-afce-3363b7dccb7a', 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1685950480847-18.jpg', null, null, 'e03a6e83-bfde-4ce7-b995-4f3ea7d122cf', null);
INSERT INTO water.org_image (id, url, remark, orgIdForFrontId, orgIdForRoomId, orgIdForOtherId) VALUES ('f971ee2d-a656-4c12-8946-c800329625a3', 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1683304657157-18.jpg', null, null, '6710fa26-2602-442a-b8af-5930430f46d5', null);
INSERT INTO water.org_image (id, url, remark, orgIdForFrontId, orgIdForRoomId, orgIdForOtherId) VALUES ('feb9d3b2-6a46-4fd4-8637-d35ad904e104', 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1685950480847-20.jpg', null, null, null, 'e03a6e83-bfde-4ce7-b995-4f3ea7d122cf');
