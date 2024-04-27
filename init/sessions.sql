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

