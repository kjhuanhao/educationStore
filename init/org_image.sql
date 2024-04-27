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

