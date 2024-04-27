create table `order`
(
    id         varchar(36)                            not null
        primary key,
    createdAt  timestamp    default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '创建时间',
    createdBy  varchar(255)                           null comment '创建者',
    updatedAt  timestamp                              null comment '修改时间',
    updatedBy  varchar(255)                           null comment '修改者',
    deletedAt  datetime(6)                            null,
    deletedBy  varchar(255)                           null comment '删除者',
    tel        varchar(255)                           null comment '手机号',
    quantity   int                                    null comment '数量',
    outTradeNo varchar(255) default ''                not null comment '订单号',
    amount     int                                    null comment '总金额',
    studentId  varchar(36)                            null,
    productId  varchar(36)                            null,
    status     varchar(255)                           null comment '支付状态',
    orgId      varchar(36)                            null,
    constraint FK_662b6c543bee7c235257622ef4c
        foreign key (orgId) references organization (id),
    constraint FK_88991860e839c6153a7ec878d39
        foreign key (productId) references product (id),
    constraint FK_b7a4e35eafdfef47c14e5ac5079
        foreign key (studentId) references student (id)
)
    charset = utf8mb3;

