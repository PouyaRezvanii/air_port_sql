insert into "Air port" (aname, city, state)
values ('nowshahr-airport', 'nowshahr', 'mazandaran');

insert into "Air line" (aid, name)
values (1, 'iran-air');
insert into "Air line" (aid, name)
values (1, 'iran-aseman');
insert into "Air line" (aid, name)
values (1, 'zagros');
insert into "Air line" (aid, name)
values (1, 'kish-air');

insert into "Employee" (aid, name, gender, bdate, salary, job)
values (1, 'ali', 'male', '1990-08-23', 1000, 'a');
insert into "Employee" (aid, name, gender, bdate, salary, job)
values (1, 'navid', 'male', '1995-02-28', 1000, 'a');
insert into "Employee" (aid, name, gender, bdate, salary, job)
values (1, 'reza', 'male', '1980-11-11', 1500, 'b');
insert into "Employee" (aid, name, gender, bdate, salary, job)
values (1, 'fateme', 'female', '1996-10-15', 1200, 'b');
insert into "Employee" (aid, name, gender, bdate, salary, job)
values (1, 'sara', 'female', '1985-09-12', 1300, 'c');

insert into "Phone" (eid, phone)
values (1,'09364006688');
insert into "Phone" (eid, phone)
values (1,'09364006689');
insert into "Phone" (eid, phone)
values (2,'09364006677');
insert into "Phone" (eid, phone)
values (3,'09114006666');
insert into "Phone" (eid, phone)
values (4,'09125008888');
insert into "Phone" (eid, phone)
values (5,'09335551111');

insert into "Flight" (fnumber, alid, src, dst, fdate, dpt_time, arv_time)
values (85966, 1, 'nowshar', 'kish', '2022-04-20', '22:30','00:30');
insert into "Flight" (fnumber, alid, src, dst, fdate, dpt_time, arv_time)
values (75421, 2, 'nowshar', 'tehran', '2022-02-11', '21:30','22:00');
insert into "Flight" (fnumber, alid, src, dst, fdate, dpt_time, arv_time)
values (65987, 3, 'nowshar', 'isfahan', '2022-03-09', '18:30','19:30');
insert into "Flight" (fnumber, alid, src, dst, fdate, dpt_time, arv_time)
values (65988, 3, 'nowshar', 'bandar-abbas', '2022-03-09', '16:00','18:30');
insert into "Flight" (fnumber, alid, src, dst, fdate, dpt_time, arv_time)
values (55423, 4, 'nowshar', 'tabriz', '2022-01-20', '15:00','17:00');
insert into "Flight" (fnumber, alid, src, dst, fdate, dpt_time, arv_time)
values (45325, 4, 'nowshar', 'ahvaz', '2022-04-20', '14:30','17:00');

insert into "On sale ticket" (fnumber, src, dst, tdate, dpt_time, arv_time, price, number_of_seats, class)
values (85966, 'nowshar', 'kish', '2022-04-20', '22:30','00:30', 500, 80, 'B');
insert into "On sale ticket" (fnumber, src, dst, tdate, dpt_time, arv_time, price, number_of_seats, class)
values (75421, 'nowshar', 'tehran', '2022-02-11', '21:30','22:00', 900, 60, 'A');
insert into "On sale ticket" (fnumber, src, dst, tdate, dpt_time, arv_time, price, number_of_seats, class)
values (65987, 'nowshar', 'isfahan', '2022-03-09', '18:30','19:30', 1000, 60, 'A');
insert into "On sale ticket" (fnumber, src, dst, tdate, dpt_time, arv_time, price, number_of_seats, class)
values (65988, 'nowshar', 'bandar-abbas', '2022-03-09', '16:00','18:30', 600, 90, 'C');
insert into "On sale ticket" (fnumber, src, dst, tdate, dpt_time, arv_time, price, number_of_seats, class)
values (55423, 'nowshar', 'tabriz', '2022-01-20', '15:00','17:00', 1100, 70, 'A');
insert into "On sale ticket" (fnumber, src, dst, tdate, dpt_time, arv_time, price, number_of_seats, class)
values (45325, 'nowshar', 'ahvaz', '2022-04-20', '14:30','17:00', 800, 100, 'C');

insert into "Passenger" (nationalcode, fnumber, pname, phone, gender, age)
values ('1000000000', 85966, 'alireza', '09116665577', 'male', 24);
insert into "Passenger" (nationalcode, fnumber, pname, phone, gender, age)
values ('1000000001', 85966, 'ahmad', '09116665566', 'male', 35);
insert into "Passenger" (nationalcode, fnumber, pname, phone, gender, age)
values ('1000000002', 75421, 'mojtaba', '09116665575', 'male', 22);
insert into "Passenger" (nationalcode, fnumber, pname, phone, gender, age)
values ('1000000003', 75421, 'yusef', '09116665565', 'male', 20);
insert into "Passenger" (nationalcode, fnumber, pname, phone, gender, age)
values ('1000000004', 65987, 'pouya', '09116665588', 'male', 22);
insert into "Passenger" (nationalcode, fnumber, pname, phone, gender, age)
values ('1000000005', 65987, 'payam', '09116665544', 'male', 18);
insert into "Passenger" (nationalcode, fnumber, pname, phone, gender, age)
values ('1000000006', 65988, 'fateme', '09116665531', 'female', 32);
insert into "Passenger" (nationalcode, fnumber, pname, phone, gender, age)
values ('1000000007', 65988, 'bita', '09116665533', 'female', 34);
insert into "Passenger" (nationalcode, fnumber, pname, phone, gender, age)
values ('1000000008', 55423, 'elnaz', '09116665598', 'female', 28);
insert into "Passenger" (nationalcode, fnumber, pname, phone, gender, age)
values ('1000000009', 55423, 'yasin', '09116665594', 'male', 27);
insert into "Passenger" (nationalcode, fnumber, pname, phone, gender, age)
values ('1000000010', 45325, 'omid', '09116665500', 'male', 45);
insert into "Passenger" (nationalcode, fnumber, pname, phone, gender, age)
values ('1000000011', 45325, 'nasim', '09116665501', 'female', 41);

insert into "Passenger-Employee" (nationalcode, eid)
values ('1000000000', 1);
insert into "Passenger-Employee" (nationalcode, eid)
values ('1000000000', 3);
insert into "Passenger-Employee" (nationalcode, eid)
values ('1000000001', 1);
insert into "Passenger-Employee" (nationalcode, eid)
values ('1000000002', 2);
insert into "Passenger-Employee" (nationalcode, eid)
values ('1000000003', 4);
insert into "Passenger-Employee" (nationalcode, eid)
values ('1000000004', 5);
insert into "Passenger-Employee" (nationalcode, eid)
values ('1000000005', 2);
insert into "Passenger-Employee" (nationalcode, eid)
values ('1000000006', 3);
insert into "Passenger-Employee" (nationalcode, eid)
values ('1000000007', 5);
insert into "Passenger-Employee" (nationalcode, eid)
values ('1000000008', 2);
insert into "Passenger-Employee" (nationalcode, eid)
values ('1000000009', 3);
insert into "Passenger-Employee" (nationalcode, eid)
values ('1000000010', 1);
insert into "Passenger-Employee" (nationalcode, eid)
values ('1000000011', 5);

insert into "Ticket" (nationalcode, tnumber, date_of_book,date_of_cancel, isUsed, seat_number)
values ('1000000000', 1, '2022-04-17', null, true, 45);
insert into "Ticket" (nationalcode, tnumber, date_of_book,date_of_cancel, isUsed, seat_number)
values ('1000000001', 1, '2022-04-15', null, true, 32);
insert into "Ticket" (nationalcode, tnumber, date_of_book,date_of_cancel, isUsed, seat_number)
values ('1000000002', 2, '2022-02-09', null, true, 11);
insert into "Ticket" (nationalcode, tnumber, date_of_book,date_of_cancel, isUsed, seat_number)
values ('1000000003', 2, '2022-02-10', null, false, 19);
insert into "Ticket" (nationalcode, tnumber, date_of_book,date_of_cancel, isUsed, seat_number)
values ('1000000004', 3, '2022-03-05', null, true, 22);
insert into "Ticket" (nationalcode, tnumber, date_of_book,date_of_cancel, isUsed, seat_number)
values ('1000000005', 3, '2022-03-02', null, true, 31);
insert into "Ticket" (nationalcode, tnumber, date_of_book,date_of_cancel, isUsed, seat_number)
values ('1000000006', 7, '2022-03-03', null, true, 7);
insert into "Ticket" (nationalcode, tnumber, date_of_book,date_of_cancel, isUsed, seat_number)
values ('1000000007', 7, '2022-03-03', null, false, 8);
insert into "Ticket" (nationalcode, tnumber, date_of_book,date_of_cancel, isUsed, seat_number)
values ('1000000008', 6, '2022-01-12', '2022-01-18', false, 17);
insert into "Ticket" (nationalcode, tnumber, date_of_book,date_of_cancel, isUsed, seat_number)
values ('1000000009', 6, '2022-01-14', null, true, 25);
insert into "Ticket" (nationalcode, tnumber, date_of_book,date_of_cancel, isUsed, seat_number)
values ('1000000010', 4, '2022-04-13', null, true, 15);
insert into "Ticket" (nationalcode, tnumber, date_of_book,date_of_cancel, isUsed, seat_number)
values ('1000000011', 4, '2022-04-13', null, true, 16);

