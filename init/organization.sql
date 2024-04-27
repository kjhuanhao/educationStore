create table organization
(
    id                   varchar(36)                            not null
        primary key,
    createdAt            timestamp    default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '创建时间',
    createdBy            varchar(255)                           null comment '创建者',
    updatedAt            timestamp                              null comment '修改时间',
    updatedBy            varchar(255)                           null comment '修改者',
    deletedAt            datetime(6)                            null,
    deletedBy            varchar(255)                           null comment '删除者',
    businessLicense      varchar(255)                           not null comment '营业执照',
    identityCardFrontImg varchar(255)                           not null comment '法人身份证正面',
    identityCardBackImg  varchar(255)                           not null comment '法人身份证反面',
    tags                 text                                   null comment '标签 以，隔开',
    description          text                                   null comment '简介',
    name                 varchar(255) default ''                null comment '机构名',
    logo                 varchar(255)                           null comment 'logo',
    address              varchar(255)                           null comment '地址',
    longitude            varchar(255)                           null comment '经度',
    latitude             varchar(255)                           null comment '纬度',
    tel                  varchar(255)                           null comment '电话'
)
    charset = utf8mb3;

