create table experiences
(
    experience_id  int auto_increment
        primary key,
    new_column     int        null,
    jobTitle       text       null,
    company        text       null,
    contractType   text       null,
    jobDescription text       null,
    begYear        int        null,
    endYear        int        null,
    Ended          tinyint(1) null comment 'Si vrai terminé, si faux en cours
'
);

create table formations
(
    formation_id   int auto_increment
        primary key,
    formation_name text       null,
    despcription   text       null,
    level          linestring null comment 'Mettre une liste BAC +1,2,3...',
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
    mobilePhone linestring null,
    picture     text       null,
    birthDate   date       null
);


