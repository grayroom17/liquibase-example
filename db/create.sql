create table if not exists breeds
(
    bre_id   serial primary key,
    bre_name varchar(100) not null
);

insert into breeds (bre_name)
values ('Golden Retriever'),
       ('American Staffordshire Terrier'),
       ('German Shepherd Doger');

create table if not exists profiles
(
    pro_id          serial primary key,
    pro_name        varchar(100) not null,
    pro_bre_id      int references breeds (bre_id),
    pro_height      int,
    pro_weight      int,
    pro_description varchar(4000),
    pro_image_url   varchar(100)
);

create index if not exists idx_pro_bre_id on profiles (pro_bre_id);