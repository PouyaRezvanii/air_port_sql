CREATE TABLE "Air port"
(
  aid  serial,
  aname CHARACTER VARYING(20),
  city CHARACTER VARYING(20),
  state CHARACTER VARYING(20),
  PRIMARY KEY (aid )
);

CREATE TABLE "Employee"
(
  eid  serial,
  aid  integer,
  name CHARACTER VARYING(20),
  gender CHARACTER VARYING(10),
  bdate date,
  salary integer,
  job CHARACTER VARYING(20),
  CONSTRAINT fk_Airport
   FOREIGN KEY(aid) 
      REFERENCES "Air port"(aid),
  PRIMARY KEY (eid )
);

CREATE TABLE "Phone"
(
  eid integer,
  phone CHARACTER VARYING(15),
  CONSTRAINT fk_employee
   FOREIGN KEY(eid) 
      REFERENCES "Employee"(eid),
  PRIMARY KEY (eid, phone )
);

CREATE TABLE "Air line"
(
  alid  serial,
  aid  integer,
  name CHARACTER VARYING(20),
  CONSTRAINT fk_Airport
   FOREIGN KEY(aid) 
      REFERENCES "Air port"(aid),
  PRIMARY KEY (alid )
);

CREATE TABLE "Flight"
(
  fnumber  integer,
  alid  integer,
  src CHARACTER VARYING(20),
  dst CHARACTER VARYING(10),
  fdate date,
  dpt_time time,
  arv_time time,
  CONSTRAINT fk_Airline
   FOREIGN KEY(alid) 
      REFERENCES "Air line"(alid),
  PRIMARY KEY (fnumber )
);

CREATE TABLE "Passenger"
(
  nationalCode  CHARACTER VARYING(10),
  fnumber  integer,
  pname CHARACTER VARYING(20),
  phone CHARACTER VARYING(15),
  gender CHARACTER VARYING(10),
  age integer,
  CONSTRAINT fk_flight
   FOREIGN KEY(fnumber) 
      REFERENCES "Flight"(fnumber),
  PRIMARY KEY (nationalCode )
);

CREATE TABLE "On sale ticket"
(
  tnumber  serial,
  fnumber  integer,
  src CHARACTER VARYING(20),
  dst CHARACTER VARYING(10),
  tdate date,
  dpt_time time,
  arv_time time,
  price integer,
  number_of_seats integer,
  class char(1),
  CONSTRAINT fk_flight
   FOREIGN KEY(fnumber) 
      REFERENCES "Flight"(fnumber),
  PRIMARY KEY (tnumber )
);

CREATE TABLE "Ticket"
(
  tid  serial,
  nationalCode  CHARACTER VARYING(10),
  tnumber  integer,
  seat_number integer,
  date_of_book date,
  date_of_cancel date,
  date_of_travel date,
  isUsed boolean,
  CONSTRAINT fk_onSaleTicket
   FOREIGN KEY(tnumber) 
      REFERENCES "On sale ticket"(tnumber),
  CONSTRAINT fk_passenger
   FOREIGN KEY(nationalCode) 
      REFERENCES "Passenger"(nationalCode),
  PRIMARY KEY (tid )
);

CREATE TABLE "Passenger-Employee"
(
  serv_id serial,
  nationalCode  CHARACTER VARYING(10),
  eid  integer,
  serv_date date,
  CONSTRAINT fk_employee
   FOREIGN KEY(eid) 
      REFERENCES "Employee"(eid),
 CONSTRAINT fk_passenger
   FOREIGN KEY(nationalCode) 
      REFERENCES "Passenger"(nationalCode),
  PRIMARY KEY (serv_id )
);



