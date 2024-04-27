create table course_teacher
(
    courseId  varchar(36) not null,
    teacherId varchar(36) not null,
    primary key (courseId, teacherId),
    constraint FK_61d480c5992261dc61922d373fe
        foreign key (teacherId) references teacher (id)
            on update cascade on delete cascade,
    constraint FK_fdbf6887a6a7a59f2922ccb5858
        foreign key (courseId) references course (id)
            on update cascade on delete cascade
)
    charset = utf8mb3;

create index IDX_61d480c5992261dc61922d373f
    on course_teacher (teacherId);

create index IDX_fdbf6887a6a7a59f2922ccb585
    on course_teacher (courseId);

