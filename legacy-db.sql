create database employees;

create table departments
(
    dept_no   char(4)     not null,
    dept_name varchar(40) not null unique,
    primary key (dept_no)
);

create table employees
(
    emp_no     serial      not null primary key,
    birth_date date        not null,
    first_name varchar(14) not null ,
    last_name  varchar(16) not null,
    gender     varchar(1)  not null,
    hire_date  date        not null
);

create index on employees (first_name);
create index on employees (birth_date);
create index on employees (first_name, birth_date);

create table dept_emp
(
    emp_no    int     not null references employees (emp_no) on delete cascade,
    dept_no   char(4) not null references departments (dept_no) on delete cascade,
    from_date date    not null,
    to_date   date    not null,
    primary key (emp_no, dept_no)
);

create index on dept_emp(dept_no);
create index on dept_emp(to_date);

create table dept_manager
(
    emp_no    int     not null references employees (emp_no) on delete cascade,
    dept_no   char(4) not null references departments (dept_no) on delete cascade,
    from_date date    not null,
    to_date   date    not null,
    primary key (emp_no, dept_no)
);

create index on dept_manager (dept_no);

create table salaries
(
    emp_no    int  not null references employees (emp_no) on delete cascade,
    salary    int  not null,
    from_date date not null,
    to_date   date not null,
    primary key (emp_no, from_date)
);

create index on salaries (salary);

create table salaries_text
(
    emp_no    int         not null references employees (emp_no) on delete cascade,
    salary    varchar(11) not null,
    from_date date        not null,
    to_date   date        not null,
    primary key (emp_no, from_date)
);

create index on salaries_text (salary);

create table titles
(
    emp_no    int         not null references employees (emp_no) on delete cascade,
    title     varchar(50) not null,
    from_date date        not null,
    to_date   date default null,
    primary key (emp_no, title, from_date)
);