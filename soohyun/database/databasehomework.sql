create table theater(
                        ID INT primary key,
                        NAME VARCHAR(20) not null,
                        ADDRESS VARCHAR(20) not null
);
create table customer(
                         ID INT primary key,
                         USERNAME VARCHAR(40) not null,
                         PHONENUMBER VARCHAR(20) not null
);
create table RESERVATION(
                            ID INT primary key,
                            theaterId INT,
                            customerId INT,
                            reservationTime DATE not null,
                            seat varchar(20) not null,
                            foreign key(theaterId) references theater(id) on update cascade,
                            foreign key(customerId) references customer(id) on update cascade
);

INSERT INTO theater (ID, NAME, ADDRESS) VALUES (1, 'Theater A', '123 Main St');
INSERT INTO theater (ID, NAME, ADDRESS) VALUES (2, 'Theater B', '456 Side Rd');
INSERT INTO theater (ID, NAME, ADDRESS) VALUES (3, 'Theater C', '789 Circle Ave');

INSERT INTO customer (ID, USERNAME, PHONENUMBER) VALUES (1, 'sichi dongjae', '010-1234-5678');
INSERT INTO customer (ID, USERNAME, PHONENUMBER) VALUES (2, 'sichi sinhee', '010-2345-6789');
INSERT INTO customer (ID, USERNAME, PHONENUMBER) VALUES (3, 'sichi joonyoung', '010-3456-7890');

INSERT INTO RESERVATION (ID, theaterId, customerId, reservationTime, seat) VALUES (1, 1, 1, '2023-10-01', 'A1');
INSERT INTO RESERVATION (ID, theaterId, customerId, reservationTime, seat) VALUES (2, 2, 2, '2023-10-02', 'B2');
INSERT INTO RESERVATION (ID, theaterId, customerId, reservationTime, seat) VALUES (3, 3, 3, '2023-10-03', 'C3');

SELECT *
FROM reservation
         right JOIN customer ON reservation.customerId = customer.ID
         right JOIN theater ON reservation.theaterId = theater.ID;