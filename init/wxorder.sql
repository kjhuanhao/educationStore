create table wxorder
(
    id               varchar(36)                         not null
        primary key,
    createdAt        timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '创建时间',
    createdBy        varchar(255)                        null comment '创建者',
    updatedAt        timestamp                           null comment '修改时间',
    updatedBy        varchar(255)                        null comment '修改者',
    deletedAt        datetime(6)                         null,
    deletedBy        varchar(255)                        null comment '删除者',
    appid            varchar(255)                        not null comment '微信公众号ID',
    mchid            varchar(255)                        not null comment '商户号',
    openid           varchar(255)                        null comment 'openid',
    trade_type       varchar(255)                        null comment '交易类型',
    trade_state      varchar(255)                        null comment '交易状态',
    bank_type        varchar(255)                        null comment '银行',
    transaction_id   varchar(255)                        null comment '微信支付订单号',
    out_trade_no     varchar(255)                        null comment '商户订单号',
    attach           varchar(255)                        null comment '附加数据',
    trade_state_desc varchar(255)                        null comment '交易状态描述',
    success_time     varchar(255)                        null comment '支付完成时间',
    total            int                                 null comment '订单总金额，单位为分',
    payer_total      int                                 null comment '用户支付金额，单位为分',
    currency         varchar(255)                        null comment 'CNY：人民币，境内商户号仅支持人民币',
    payer_currency   varchar(255)                        null comment '用户支付币种，示例值：CNY',
    orgId            varchar(36)                         null,
    constraint FK_5deaae84799f029033a64e4a7c5
        foreign key (orgId) references organization (id)
)
    charset = utf8mb3;

