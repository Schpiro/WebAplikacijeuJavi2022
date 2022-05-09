create table if not exists hardware (
    id identity,
    name varchar(10) not null,
    code number not null,
    price number not null,
    type_of_hardware varchar(5) not null,
    available_stock number not null
);

create table if not exists review (
    id identity,
    title varchar(10) not null,
    text nvarchar not null,
    grade number not null,
    hardwareCode number not null,
    constraint fk_hardware foreign key (hardwareCode) references hardware(code)
);