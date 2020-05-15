insert into employeesSchema.departments (dept_no, dept_name) values
	('0000', 'Production and Operations'),
	('0001', 'Research and Development'),
	('0002', 'Purchasing'),
	('0003', 'Marketing'),
	('0004', 'Human Resources'),
	('0005', 'Accounting and Finance');

insert into employeesSchema.employees (emp_no, birth_date, first_name, last_name, gender, hire_date) values
	(94918494, '1983-10-13', 'Tim', 'Kenneford', 'M', '2017-09-24'),
	(81182092, '1966-01-19', 'Leeland', 'Pitchford', 'M', '2017-07-18'),
	(37048544, '1962-02-26', 'Fredelia', 'Dunnett', 'F', '2006-06-26'),
	(77849013, '1963-10-28', 'Jacky', 'Gisby', 'M', '2016-06-12'),
	(40781230, '1972-11-01', 'Roslyn', 'Parramore', 'F', '2003-01-23'),
	(88752158, '1990-02-16', 'Tim', 'Hans', 'F', '2008-03-31'),
	(63178566, '1960-01-12', 'Erich', 'Deshorts', 'M', '2002-05-15'),
	(31813270, '1977-05-13', 'Benetta', 'Trayford', 'F', '2017-08-04'),
	(43093583, '1978-10-05', 'Jaquelyn', 'Handyside', 'F', '2001-02-24'),
	(69760491, '1984-02-22', 'Winifred', 'O''Murtagh', 'F', '2004-01-14'),
	(13185855, '1972-09-18', 'Erich', 'Itzcak', 'M', '2017-08-13'),
	(35123415, '1994-09-03', 'Bria', 'Lattimore', 'F', '2012-07-24'),
	(48038806, '1966-04-29', 'Griz', 'Fladgate', 'M', '2009-10-04'),
	(35310144, '1993-01-26', 'Peirce', 'Guillart', 'M', '2010-03-21'),
	(14031073, '1965-02-22', 'Orren', 'Dahlback', 'M', '2017-02-07');

insert into employeesSchema.dept_emp (dept_emp_no, emp_no, dept_no, from_date, to_date) values 
	(64545496, 14031073, '0005', '2018-10-10', '2120-04-07'),
	(37577909, 35310144, '0002', '2018-12-23', '2120-11-13'),
	(63129316, 48038806, '0004', '2018-08-20', '2120-01-12'),
	(81731035, 35123415, '0003', '2018-08-31', '2120-11-18'),
	(61675179, 13185855, '0000', '2018-12-14', '2120-06-20'),
	(57474228, 69760491, '0003', '2018-04-04', '2120-02-19'),
	(29366333, 43093583, '0005', '2018-06-03', '2120-05-08'),
	(18916581, 31813270, '0000', '2018-06-17', '2120-12-07'),
	(10442577, 63178566, '0001', '2018-03-18', '2120-03-15'),
	(92838962, 88752158, '0002', '2018-03-09', '2120-07-23'),
	(37753317, 40781230, '0002', '2018-12-26', '2120-12-29'),
	(15388296, 77849013, '0001', '2018-03-11', '2120-08-26'),
	(76623325, 37048544, '0004', '2018-12-04', '2120-12-03'),
	(77909910, 81182092, '0003', '2018-11-28', '2120-09-28'),
	(38148776, 94918494, '0004', '2018-04-30', '2120-10-24');

insert into employeesSchema.dept_manager (dept_manager_no, dept_no, emp_no, from_date, to_date) values
	(54334425, '0005', 14031073, '2019-01-01', '2120-11-15'),
	(82868729, '0002', 35310144, '2019-03-01', '2120-12-02'),
	(61135007, '0004', 48038806, '2019-02-22', '2120-11-26'),
	(53100482, '0003', 69760491, '2019-02-26', '2120-12-28'),
	(36854830, '0000', 31813270, '2019-05-09', '2120-12-15'),
	(37337476, '0001', 63178566, '2019-04-20', '2120-12-02');

insert into employeesSchema.salaries (salary_no, emp_no, salary, from_date, to_date, active) values
	(98782822, 14031073, 89153.07, '2017-06-10', '2018-03-30', false),
	(63492187, 35310144, 93853.32, '2017-06-07', '2018-03-17', false),
	(98225714, 48038806, 93378.26, '2017-07-08', '2018-05-18', false),
	(93781830, 35123415, 73116.56, '2017-12-04', '2018-05-24', false),
	(41404701, 13185855, 73486.75, '2017-06-19', '2018-06-09', false),
	(78807549, 69760491, 92887.32, '2017-11-17', '2018-01-27', false),
	(60986347, 43093583, 62292.86, '2017-11-23', '2018-01-13', false),
	(83184797, 31813270, 89746.32, '2017-12-28', '2018-02-08', false),
	(93969264, 63178566, 91666.12, '2017-10-21', '2018-02-01', false),
	(37962838, 88752158, 72361.69, '2017-02-26', '2018-03-06', false),
	(81155007, 40781230, 51496.38, '2017-10-02', '2018-04-12', false),
	(12931971, 77849013, 52350.53, '2017-03-12', '2018-10-22', false),
	(64252433, 37048544, 72422.45, '2017-12-09', '2018-02-19', false),
	(44308853, 81182092, 61291.82, '2017-12-06', '2018-02-16', false),
	(75504889, 94918494, 73993.01, '2017-10-16', '2018-01-26', false),
	(48637346, 14031073, 79153.07, '2018-03-30', '2120-09-04', true),
	(41351145, 35310144, 103853.32, '2018-03-17', '2120-10-17', true),
	(35079817, 48038806, 83378.26, '2018-05-18', '2120-11-23', true),
	(38627413, 35123415, 63116.56, '2018-05-24', '2120-12-31', true),
	(48274237, 13185855, 83486.75, '2018-06-09', '2120-10-09', true),
	(55532598, 69760491, 102887.32, '2018-01-27', '2120-11-12', true),
	(17501923, 43093583, 72292.86, '2018-01-13', '2120-12-15', true),
	(32316018, 31813270, 79746.32, '2018-02-08', '2120-09-24', true),
	(97731750, 63178566, 81666.12, '2018-02-01', '2120-12-01', true),
	(66129905, 88752158, 82361.69, '2018-03-06', '2120-12-05', true),
	(32420224, 40781230, 61496.38, '2018-04-12', '2120-12-16', true),
	(99962195, 77849013, 42350.53, '2018-10-22', '2120-10-27', true),
	(24889070, 37048544, 82422.45, '2018-02-19', '2120-10-28', true),
	(54522767, 81182092, 71291.82, '2018-02-16', '2120-11-02', true),
	(13169366, 94918494, 53993.01, '2018-01-26', '2120-11-28', true);

insert into employeesSchema.titles (title_no, emp_no, title, from_date, to_date) values
	(50260139, 81182092, 'EMPLOYEE', '2018-12-13', '2120-12-01'),
	(60137277, 94918494, 'EMPLOYEE', '2018-12-05', '2120-11-07'),
	(22666075, 37048544, 'EMPLOYEE', '2018-12-23', '2120-11-26'),
	(97500527, 77849013, 'JANITOR', '2018-12-04', null),
	(59670566, 40781230, 'EMPLOYEE', '2018-12-09', '2120-11-17'),
	(94780473, 88752158, 'EMPLOYEE', '2018-12-01', '2120-11-28'),
	(97826999, 63178566, 'MANAGER', '2018-12-07', '2120-12-17'),
	(38118340, 31813270, 'MANAGER', '2018-12-29', '2120-11-11'),
	(57927183, 43093583, 'EMPLOYEE', '2018-12-28', '2120-12-04'),
	(57834701, 69760491, 'MANAGER', '2018-12-19', null),
	(35074129, 13185855, 'EMPLOYEE', '2018-12-03', null),
	(21040817, 35123415, 'EMPLOYEE', '2018-12-19', '2120-12-11'),
	(34159086, 48038806, 'MANAGER', '2018-12-03', '2120-11-09'),
	(86046306, 35310144, 'MANAGER', '2018-12-13', '2120-11-12'),
	(84385705, 14031073, 'MANAGER', '2018-12-13', '2120-12-19');
