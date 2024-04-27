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

INSERT INTO water.course_teacher (courseId, teacherId) VALUES ('35e642aa-e4f7-4016-8785-b7e8175a198c', '69f08d4a-fbf3-4ece-8089-4d6a66c65299');
INSERT INTO water.course_teacher (courseId, teacherId) VALUES ('35e642aa-e4f7-4016-8785-b7e8175a198c', 'bc761445-a3ae-4ee6-b0de-c13928020245');
INSERT INTO water.course_teacher (courseId, teacherId) VALUES ('befc60be-8292-4a82-ac31-d3e54c1b8c68', '69f08d4a-fbf3-4ece-8089-4d6a66c65299');
INSERT INTO water.course_teacher (courseId, teacherId) VALUES ('befc60be-8292-4a82-ac31-d3e54c1b8c68', '9595b297-3387-4ac1-a746-34b9ba0289ef');
INSERT INTO water.course_teacher (courseId, teacherId) VALUES ('befc60be-8292-4a82-ac31-d3e54c1b8c68', 'bc761445-a3ae-4ee6-b0de-c13928020245');
INSERT INTO water.course_teacher (courseId, teacherId) VALUES ('fa73f3f5-da6a-4ef4-9aa5-b9e8b81d96c4', 'b1fdb169-2d3c-4bbf-b035-663ddc4d67a1');
