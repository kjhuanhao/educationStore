create table messages
(
    id          varchar(256)                        not null
        primary key,
    sessionId   varchar(255)                        not null,
    message     text                                not null,
    createdTime timestamp default CURRENT_TIMESTAMP not null,
    type        varchar(10)                         null,
    data        longtext                            null,
    senderId    varchar(256)                        not null,
    role        varchar(10)                         not null,
    constraint session_fk
        foreign key (sessionId) references sessions (id)
)
    charset = utf8mb3;

