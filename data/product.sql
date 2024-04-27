create table product
(
    id                varchar(36)                            not null
        primary key,
    createdAt         timestamp    default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '创建时间',
    createdBy         varchar(255)                           null comment '创建者',
    updatedAt         timestamp                              null comment '修改时间',
    updatedBy         varchar(255)                           null comment '修改者',
    deletedAt         datetime(6)                            null,
    deletedBy         varchar(255)                           null comment '删除者',
    name              varchar(255)                           not null comment '名称',
    `desc`            varchar(255)                           null comment '描述',
    type              varchar(255)                           null comment '分类',
    status            varchar(255) default 'UN_LIST'         not null comment '商品状态：上架，下架',
    stock             int          default 0                 not null comment '库存总数',
    curStock          int          default 0                 not null comment '当前库存',
    buyNumber         int          default 0                 not null comment '卖出去多少',
    limitBuyNumber    int          default -1                not null comment '每人限购数量',
    coverUrl          varchar(255)                           not null comment '封面图',
    bannerUrl         varchar(255)                           not null comment '头部banner图',
    originalPrice     float                                  not null comment '原价',
    preferentialPrice float                                  not null comment '优惠价',
    orgId             varchar(36)                            null,
    constraint FK_4001796e6dec57fa1424e6ffe22
        foreign key (orgId) references organization (id)
)
    charset = utf8mb3;

INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('0db13035-0c0c-4d80-b328-6eb2223b8cae', '2024-04-18 14:54:23', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2024-04-18 22:54:24', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', null, null, '数学体验课 322 节', '数学体验课 3 节', null, 'LIST', 10, 0, 1, 1, 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 200, 99, '6710fa26-2602-442a-b8af-5930430f46d5');
INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('0f3e05a4-e326-450d-923b-7b9895c9ab56', '2023-06-08 16:32:37', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-04-13 16:44:05', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-04-15 17:27:08.000000', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '数学体验课 322 节', '数学体验课 3 节', null, 'LIST', 10, 1, 0, 1, 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 200, 99, '6710fa26-2602-442a-b8af-5930430f46d5');
INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('2271c9ed-ad85-46f8-9e77-3ca352cf5802', '2023-06-08 16:32:37', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-04-02 15:45:27', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-04-04 01:13:13.000000', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '数学体验课 322 节', '数学体验课 3 节', null, 'UN_LIST', 10, 1, 0, 1, '', '', 200, 99, '6710fa26-2602-442a-b8af-5930430f46d5');
INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('2b12b6df-ed64-410e-932c-185ed076419a', '2023-06-13 16:06:16', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-06-13 16:06:17', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', null, null, '英语寒假冲刺班', '两周上 10 节课，学习阅读理解和写作。', 'foreign', 'LIST', 10, 1, 0, 3, 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1683269678725-17.jpeg', 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1683269678725-19.jpeg', 200, 99, '6710fa26-2602-442a-b8af-5930430f46d5');
INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('3606cf39-11a7-480a-a4fa-2d57017332ed', '2023-06-13 16:06:21', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-06-13 16:06:22', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', null, null, '数学体验课 322 节', '数学体验课 3 节', 'music', 'LIST', 10, 0, 1, 4, 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1683308535890-27.jpg', 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 200, 99, '6710fa26-2602-442a-b8af-5930430f46d5');
INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('42196fa3-1067-4444-9ed2-a3bb353e7b6e', '2023-06-08 16:32:37', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-04-03 16:51:59', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-04-04 01:08:18.000000', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '七天英文课1', '七天英文课，每天一节，七天过期。', null, 'UN_LIST', 100, 1, 0, 1, '', '', 100, 49, '6710fa26-2602-442a-b8af-5930430f46d5');
INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('47fc2403-610c-4aa3-a4ce-6503da8d09d2', '2023-06-26 15:40:08', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-06-26 15:40:08', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', null, null, '中国画', '中国画', 'art', 'LIST', 1, 1, 0, 1, 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1687793866963-5.jpg', 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1687793866963-7.jpeg', 1, 1, '2b967e80-f6c0-4cfe-a9c1-1db90a4cb4c8');
INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('4b2cfa34-0414-4245-b23f-40aebadd31c0', '2023-06-26 16:30:30', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-06-26 16:30:30', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', null, null, '数学体验课 3 节', '数学体验课 3 节', null, 'LIST', 10, 1, 0, 1, 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1681043776956-11.png', 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1681043776956-9.png', 200, 99, '6710fa26-2602-442a-b8af-5930430f46d5');
INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('5068512c-804e-4ead-919b-3a2c82f5f533', '2023-06-08 16:32:37', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-04-09 12:42:52', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', null, null, '数学体验课 3 节', '数学体验课 3 节', null, 'UN_LIST', 10, 1, 0, 1, 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1681043776956-15.jpeg', 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1681043776956-17.png', 200, 99, '6710fa26-2602-442a-b8af-5930430f46d5');
INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('514cb0aa-1db3-4246-ad15-595e4c241d05', '2023-06-08 16:32:37', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-04-09 17:21:22', null, null, null, '数学体验课 322 节', '数学体验课 3 节', null, 'UN_LIST', 10, 1, 0, 1, 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 200, 99, '6710fa26-2602-442a-b8af-5930430f46d5');
INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('57bf5392-2adf-4015-b350-679521e5ef79', '2023-06-08 16:32:37', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-05-05 19:45:49', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', null, null, '英语新概念作文课', '英语新概念作文课', 'foreign', 'LIST', 10, 1, 0, 5, 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1683308535890-5.jpg', 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 200, 99, '6710fa26-2602-442a-b8af-5930430f46d5');
INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('6478a718-8a6d-4ca5-8a7a-a4db164bb637', '2023-06-26 15:41:03', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-06-26 15:41:04', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', null, null, '水墨画', '水墨画', 'art', 'LIST', 2, 2, 0, 121, 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1687793866963-11.webp', 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1687793866963-13.png', 11, 21, '2b967e80-f6c0-4cfe-a9c1-1db90a4cb4c8');
INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('6aadd227-b21e-4494-aec5-74062a2915e2', '2023-06-26 16:30:28', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-06-26 16:30:28', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', null, null, '数学体验课 322 节', '数学体验课 3 节', null, 'LIST', 10, 1, 0, 1, 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 200, 99, '6710fa26-2602-442a-b8af-5930430f46d5');
INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('706472b6-95e4-4cfd-8460-93eed7a85878', '2023-06-13 16:04:47', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-06-13 16:04:47', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', null, null, '水彩画初学者课程体验课', '本课程是专为初学者设计的水彩画课程，包括基础色彩理论、画笔、画纸、调色、画画技巧等内容。学员将学习如何表现不同的光影效果和质感，掌握水彩画的基本技巧，完成一幅优美的水彩画作品。', 'art', 'LIST', 6, 1, 2, 4, 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1686332618410-37.jpg', 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1686332618410-39.jpg', 2, 2, '2b967e80-f6c0-4cfe-a9c1-1db90a4cb4c8');
INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('710f35e6-28c8-4566-8994-5cb15534885f', '2023-06-26 16:30:28', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-06-26 16:30:29', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', null, null, '数学体验课 322 节', '数学体验课 3 节', null, 'LIST', 10, 1, 0, 1, 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 200, 99, '6710fa26-2602-442a-b8af-5930430f46d5');
INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('74f1b104-32be-406b-b272-43ba7e872a01', '2023-06-08 16:32:37', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-04-13 17:06:53', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-04-15 17:27:10.000000', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '数学体验课 322 节', '数学体验课 3 节', 'music', 'LIST', 10, 1, 0, 1, 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 200, 99, '6710fa26-2602-442a-b8af-5930430f46d5');
INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('75fcdc09-dc66-4853-be78-8b3b37611b4b', '2023-06-08 16:32:37', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-04-09 17:21:22', null, null, null, '数学体验课 322 节', '数学体验课 3 节', null, 'UN_LIST', 10, 1, 0, 1, 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 200, 99, '6710fa26-2602-442a-b8af-5930430f46d5');
INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('7725319c-6543-4a3f-8c82-b0091a51979b', '2023-06-08 16:32:37', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-04-09 17:21:21', null, null, null, '数学体验课 322 节', '数学体验课 3 节', null, 'UN_LIST', 10, 1, 0, 1, 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 200, 99, '6710fa26-2602-442a-b8af-5930430f46d5');
INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('8a189963-ab90-47ec-ace8-7331d0909ae9', '2023-06-08 16:32:37', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-04-13 16:44:07', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-04-15 17:27:07.000000', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '数学体验课 322 节', '数学体验课 3 节', null, 'LIST', 10, 1, 0, 1, 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 200, 99, '6710fa26-2602-442a-b8af-5930430f46d5');
INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('92a4984d-0a31-440e-beca-1177ca517a88', '2023-06-08 16:36:32', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-06-08 16:36:33', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', null, null, '数学体验课 322 节', '数学体验课 3 节', 'foreign', 'LIST', 10, 0, 1, 1, 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1683308535890-9.jpeg', 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 200, 99, '6710fa26-2602-442a-b8af-5930430f46d5');
INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('9917a76b-f132-464b-b7cc-2dff882aac41', '2023-06-08 16:32:37', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-04-09 17:21:22', null, null, null, '数学体验课 322 节', '数学体验课 3 节', null, 'UN_LIST', 10, 1, 0, 1, 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 200, 99, '6710fa26-2602-442a-b8af-5930430f46d5');
INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('a18a6ce9-4c92-4891-91de-ef1ed02af993', '2023-06-08 16:32:37', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-04-09 17:21:22', null, null, null, '数学体验课 322 节', '数学体验课 3 节', null, 'UN_LIST', 10, 1, 0, 1, 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 200, 99, '6710fa26-2602-442a-b8af-5930430f46d5');
INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('a9dff9a0-001e-4b82-bb29-ca01fcfcaa48', '2023-06-08 16:32:37', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-04-13 16:44:08', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-04-15 17:27:05.000000', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '数学体验课 322 节', '数学体验课 3 节', null, 'LIST', 10, 1, 0, 1, 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 200, 99, '6710fa26-2602-442a-b8af-5930430f46d5');
INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('b4710a06-a949-408f-9788-4a9fa7217863', '2023-06-08 16:32:37', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-04-09 12:43:12', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', null, null, '数学体验课 3 节', '数学体验课 3 节', null, 'UN_LIST', 10, 1, 0, 1, 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1681043776956-21.webp', 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1681043776956-23.jpeg', 200, 99, '6710fa26-2602-442a-b8af-5930430f46d5');
INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('bdf85085-2c9e-4e15-a400-faeae861bf38', '2023-06-08 16:32:37', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-04-09 12:43:27', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', null, null, '数学体验课 3 节', '数学体验课 3 节', null, 'UN_LIST', 10, 1, 0, 1, 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1681043776956-27.webp', 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1681043776956-29.jpg', 200, 99, '6710fa26-2602-442a-b8af-5930430f46d5');
INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('c8205889-d084-4a5c-b71c-83570f6de9cb', '2023-06-08 16:32:37', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-04-09 17:21:22', null, null, null, '数学体验课 322 节', '数学体验课 3 节', null, 'UN_LIST', 10, 1, 0, 1, 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 200, 99, '6710fa26-2602-442a-b8af-5930430f46d5');
INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('d65b313b-6e22-4261-b35d-f95ae5b53081', '2023-06-08 16:32:37', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-04-03 16:50:00', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-04-04 01:08:36.000000', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '数学体验课 333 节', '数学体验课 3 节', null, 'UN_LIST', 10, 1, 0, 1, '', '', 200, 99, '6710fa26-2602-442a-b8af-5930430f46d5');
INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('d71e9b94-8d1b-4bca-a0ee-3eb822c60670', '2023-06-08 16:32:37', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-04-03 16:49:43', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-04-04 01:13:08.000000', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '数学体验课 3 节', '数学体验课 3 节', null, 'UN_LIST', 10, 1, 0, 1, '', '', 200, 99, '6710fa26-2602-442a-b8af-5930430f46d5');
INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('e33ac5ae-573f-4cff-af5c-5f8a26b4ceee', '2023-06-08 16:32:37', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-04-09 12:42:24', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', null, null, '数学体验课 3 节', '数学体验课 3 节', null, 'UN_LIST', 10, 1, 0, 1, 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1681043776956-3.png', 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1681043776956-5.png', 200, 99, '6710fa26-2602-442a-b8af-5930430f46d5');
INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('e47c4f3b-c8fc-44cc-bdbf-e96fb91652a2', '2023-06-08 16:32:37', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-04-13 16:48:43', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-04-15 17:27:04.000000', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '数学体验课 322 节', '数学体验课 3 节', null, 'LIST', 10, 1, 0, 1, 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 200, 99, '6710fa26-2602-442a-b8af-5930430f46d5');
INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('e5d4b339-8cf2-4f88-bb13-ffb070bc30f8', '2023-06-08 16:32:37', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-05-05 19:41:00', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', null, null, '数学体验课 322 节', '数学体验课 3 节', 'music', 'LIST', 10, 1, 0, 1, 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1683308535890-13.jpg', 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 200, 99, '6710fa26-2602-442a-b8af-5930430f46d5');
INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('e9aee9c8-46d9-4436-92cf-8ca8835d6ada', '2023-06-08 16:32:37', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-05-05 19:40:26', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', null, null, '数学体验课 322 节', '数学体验课 3 节', null, 'LIST', 10, 1, 0, 1, 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 200, 99, '6710fa26-2602-442a-b8af-5930430f46d5');
INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('ecbc2b4b-e19a-4478-8066-2b7b329d5824', '2023-06-08 16:32:37', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-05-05 19:41:40', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', null, null, '数学体验课 322 节', '数学体验课 3 节', 'music', 'LIST', 10, 1, 0, 1, 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1683308535890-21.jpg', 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 200, 99, '6710fa26-2602-442a-b8af-5930430f46d5');
INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('fc7e0701-8829-42b5-ae97-b4b319415d6d', '2023-06-08 16:32:37', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-04-09 17:21:23', null, null, null, '数学体验课 322 节', '数学体验课 3 节', null, 'UN_LIST', 10, 1, 0, 1, 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 'https://mooc-drop.oss-cn-beijing.aliyuncs.com/03f6cff6-6f28-4006-8c96-ed9435107513.jpg', 200, 99, '6710fa26-2602-442a-b8af-5930430f46d5');
INSERT INTO water.product (id, createdAt, createdBy, updatedAt, updatedBy, deletedAt, deletedBy, name, `desc`, type, status, stock, curStock, buyNumber, limitBuyNumber, coverUrl, bannerUrl, originalPrice, preferentialPrice, orgId) VALUES ('fe5634ec-df6c-4e48-a79c-f1af89608abc', '2023-06-26 16:30:21', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2023-06-26 16:30:22', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', null, null, '油画', '油画', 'art', 'LIST', 2, 2, 0, 2, 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1687796842879-5.jpeg', 'https://water-drop-assets.oss-cn-hangzhou.aliyuncs.com/images/rc-upload-1687796842879-7.jpeg', 3, 3, '2b967e80-f6c0-4cfe-a9c1-1db90a4cb4c8');
