drop table users;
drop table experiences;
drop table formations;

create table experiences
(
    experience_id  int auto_increment
        primary key,
    job_title       text       null,
    company        text       null,
    contract_type   text       null,
    job_description text       null,
    beg_year        int        null,
    end_year        int        null,
    ended          tinyint(1) null comment 'Si vrai terminé, si faux en cours
'
);

create table formations
(
    formation_id   int auto_increment
        primary key,
    formation_name text       null,
    description   text       null,
    level         text null comment 'Mettre une liste BAC +1,2,3...',
    city           text       null,
    beg_year       date       null,
    end_year       date       null,
    ended          tinyint(1) null comment 'Si Vrai formation finie sinon en cours
la date de fin correspond a la date supposée d''obtention du diplome
'
);

create table users
(
    id          bigint auto_increment
        primary key,
    first_name  text       not null,
    last_name   text       not null,
    address     text       null,
    city        text       null,
    zip_code    int        null,
    mail        text       null,
    mobile_phone int null,
    profil_picture     text       null,
    birthdate   text       null
);


