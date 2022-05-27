--1.لیست مسافرانی که با کیش ایر به سفر رفتند
select * from "Passenger" P right outer join "Flight" F
on P.fnumber=F.fnumber
where alid in (select alid from "Air line" natural join "Flight"
			   where name='kish-air');
			   
--2.لیست مسافران کمتر از 20 سال که به اصفهان رفته اند و مسافران بالای 40 سال که به اهواز رفته اند			   
select pname, age from "Passenger" natural join "Flight" F
where F.dst in (select dst from "Ticket" natural join "On sale ticket"
			    where dst='isfahan') and age < 20
union 
select pname, age from "Passenger" natural join "Flight" F
where F.dst in (select dst from "Ticket" natural join "On sale ticket"
			    where dst='ahvaz') and age > 40
				
--3.لیست کارمندان با حقوق های دریافتی بیشتر از میانگین
select name, salary from "Employee" 
where salary > (select avg(salary) from "Employee");

--4.لیست کارمندانی که بیشتر از یک شماره تلفن دارند
select eid, name, job from "Employee"
where eid in(select eid from "Phone"
			group by eid
			having count(*) > 1)

--5.بیشترین و کمترین قیمت بلیت در سامانه پرواز 
select dst, price from  "On sale ticket" where price = (select max(price) from  "On sale ticket")
union
select dst, price from  "On sale ticket" where price = (select min(price) from  "On sale ticket")

--6.لیست پروازهایی که بیشتر از 2 ساعت زمان میبرند به جز مقصد بندرعباس
(select fnumber, dst, dpt_time, arv_time, arv_time - dpt_time as dif from "Flight"
where arv_time - dpt_time > '02:00:00')
except
(select fnumber, dst, dpt_time, arv_time, arv_time - dpt_time as dif from "Flight"
where dst='bandar-abbas')

--7.مجموع حقوق دریافتی کارمندان مرد
select sum(salary) as tot_salary from "Employee"
where gender='male';

--8.مسافرانی که بلیت تهیه کردند ولی به پرواز نرسیدند
select pname from "Passenger" P left outer join "Ticket" T
on P.nationalcode = T.nationalcode
where isUsed=false 

--9. لیست مسافرانی که کارمند شماره یک به انها خدمت رسانی کرده و به کیش سفر کردند 
select pname from "Passenger" natural join "Passenger-Employee" 
where eid=1
intersect
select pname from "Passenger" natural join "Flight"
where dst='kish'

--10.لیست همه مسافرانی که بلیت گرفته اند و از همه افراد پرواز شماره 55423 کوچکتر هستند
select pname, age from "Passenger"
where age < all(
	select age from "Passenger" P natural join "Flight"
	where fnumber=55423 
) order by age desc

--11.لیست همه مسافرانی که از یکی از افرادی که بلیت گرفتند ولی در پرواز شرکت نکردند بزرگتر هستند
select pname, age from "Passenger" 
where age > any (
		select age from "Passenger" P natural join "Ticket"
		where isUsed = false
) order by age asc

--12.لیست افرادی که در همه ایرلاین ها پرواز داشته اند
select  pname from "Passenger" natural join "Flight" as A1 
where not exists (
	(
	select A.alid from "Air line" A
	)
	except
	(
	select A2.alid from "Passenger" natural join "Flight" as A2
		where A1.alid = A2.alid
	)
)

--13.تعداد مسافرانی که بین تاریخ 2022-03-09 و 2022-05-02 پرواز داشتند
select count(nationalcode) as total_passengers from "Passenger" natural join "Ticket"
where isUsed=true;

--14.ایرلاین هایی که بیش از یک پرواز داشته اند
select name from "Air line" natural join "Flight"
group by alid
having count(*)> 1;

--15.پرواز هایی که برای تهران هستند و هنوز پرنشده اند
select * from "On sale ticket" 
where dst='tehran' and number_of_seats > 0


-- دستور index
create index indx_on_nationalcode
on "Passenger"(nationalcode); 

create index indx_on_fnumber
on "Flight"("fnumber");


--update delete
insert into "Flight" (fnumber, alid, src, dst, fdate, dpt_time, arv_time)
values (11111, 3, 'nowshar', 'alaki', '2022-06-20', '20:30','21:30');
--1
delete from "Flight" where fnumber=11111;
--2
update "Flight" set fdate = '2022-06-21' where fnumber=11111;
--3
update "Flight" set dst='alaki-2' where fnumber=11111;

insert into "Phone" (eid, phone)
values (5,'09335553333');
--4
delete from "Phone" where eid=5 and phone='09335553333';
--5
update "Phone" set phone='09335553332'  where eid=5 and phone='09335553333';
