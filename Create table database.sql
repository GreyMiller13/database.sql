Создание БД

create table Phone_book
(
    id  integer not null constraint Phone_book_pk primary key autoincrement,
    name           text    not null,
    surname        text    not null,
    patronymic     text    not null,
	address        int	   not null
    phones         int     not null,
    group_contacts int     not null,
    is_active      int default 1 not null,
);

create table Address
(
    id_address integer not null constraint Address_pk primary key autoincrement,
    city       text    not null,
    street     text,
    house      text
);

create table Group_contacts
(
    id_group   integer not null constraint Group_contacts_pk primary key autoincrement,
    group_name text default 'other' not null
);

create table Phones_list
(
    id_phone  integer not null constraint Phones_list_pk primary key autoincrement,
    phone_1   text    not null,
    phone_2   text,
    phone_3   text
);