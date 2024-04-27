create table product_card
(
    productId varchar(36) not null,
    cardId    varchar(36) not null,
    primary key (productId, cardId),
    constraint FK_82f80b472ac8665b1235da4bacc
        foreign key (cardId) references card (id)
            on update cascade on delete cascade,
    constraint FK_ca2e039254a7910e13e7a4fdc04
        foreign key (productId) references product (id)
            on update cascade on delete cascade
)
    charset = utf8mb3;

create index IDX_82f80b472ac8665b1235da4bac
    on product_card (cardId);

create index IDX_ca2e039254a7910e13e7a4fdc0
    on product_card (productId);

INSERT INTO water.product_card (productId, cardId) VALUES ('706472b6-95e4-4cfd-8460-93eed7a85878', '5e77eff4-21c3-48a7-b61a-dee662490e8c');
