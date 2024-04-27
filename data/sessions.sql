create table sessions
(
    id               varchar(255)                        not null
        primary key,
    customerId       varchar(36)                         not null,
    agentId          varchar(36)                         null,
    createdTime      timestamp default CURRENT_TIMESTAMP not null,
    updatedTime      timestamp default CURRENT_TIMESTAMP null,
    customerSocketId varchar(256)                        null,
    agentSocketId    varchar(256)                        null,
    constraint fk_sessions_agent
        foreign key (agentId) references user (id)
            on delete set null,
    constraint fk_sessions_customer
        foreign key (customerId) references student (id)
            on delete cascade
)
    charset = utf8mb3;

INSERT INTO water.sessions (id, customerId, agentId, createdTime, updatedTime, customerSocketId, agentSocketId) VALUES ('2b967e80-f6c0-4cfe-a9c1-1db90a4cb4c8', 'babb398f-017c-4f9a-9652-e160f866a1b7', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2024-04-21 13:26:19', '2024-04-21 13:26:19', 'LiCuqlaLtTswPiWaAAAN', 'uhLHon6TEmfQagZDAAAL');
INSERT INTO water.sessions (id, customerId, agentId, createdTime, updatedTime, customerSocketId, agentSocketId) VALUES ('6710fa26-2602-442a-b8af-5930430f46d5', 'babb398f-017c-4f9a-9652-e160f866a1b7', '5e57615b-0a02-4a4f-b1b0-085c6eebb5f8', '2024-04-21 07:40:14', '2024-04-21 07:40:14', '6NH6bxdjt3MkyRJ_AAA5', '4aDEQp4Tjyb7KbJhAAAZ');
