create table users
(
    id          bigint auto_increment
        primary key,
    first_name  text       null,
    last_name   text       null,
    address     text       null,
    city        text       null,
    zip_code    int        null,
    mail        text       null,
    mobile_phone int null,
    profil_picture     text       null,
    birthdate   text       null
);

create table experiences
(
    id  int auto_increment
        primary key,
    job_title       text       null,
    company         text       null,
    contract_type   text       null,
    job_description text       null,
    beg_year        int        null,
    end_year        int        null,
    ended          tinyint(1) null,
    user_id bigint,
    constraint experiences_user_fk foreign key(user_id) references users(id)

);

create table formations
(
    id   int auto_increment
        primary key,
    formation_name text       null,
    description    text       null,
    level          text null comment 'Mettre une liste BAC +1,2,3...',
    city           text       null,
    beg_year       date       null,
    end_year       date       null,
    ended          tinyint(1) null,
    user_id bigint,
    constraint formations_user_fk foreign key(user_id) references users(id)
);




