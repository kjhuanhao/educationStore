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

