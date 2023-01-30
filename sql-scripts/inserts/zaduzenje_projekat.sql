--zaduzenje
INSERT INTO ZADUZENJE (idz,nazivz,OPISZ) values (1,'frontend developer','UI design and react knowledge');
INSERT INTO ZADUZENJE (idz,nazivz,OPISZ) values (2,'back developer','database and ASP.NET knowledge');
INSERT INTO ZADUZENJE (idz,nazivz,OPISZ) values (3,'back developer','database and Spring boot knowledge');
--projekat_zaduzenje
insert into PROJEKAT_ZADUZENJE (IDP, IDZ) values  (1,1);
insert into PROJEKAT_ZADUZENJE (IDP, IDZ) values  (1,2);
insert into PROJEKAT_ZADUZENJE (IDP, IDZ) values  (2,1);
insert into PROJEKAT_ZADUZENJE (IDP, IDZ) values  (3,1);
insert into PROJEKAT_ZADUZENJE (IDP, IDZ) values  (4,1);
insert into PROJEKAT_ZADUZENJE (IDP, IDZ) values  (5,1);
insert into PROJEKAT_ZADUZENJE (IDP, IDZ) values  (6,1);
insert into PROJEKAT_ZADUZENJE (IDP, IDZ) values  (7,1);
insert into PROJEKAT_ZADUZENJE (IDP, IDZ) values  (8,1);
insert into PROJEKAT_ZADUZENJE (IDP, IDZ) values  (9,1);
insert into PROJEKAT_ZADUZENJE (IDP, IDZ) values  (10,1);
insert into PROJEKAT_ZADUZENJE (IDP, IDZ) values  (11,1);
insert into PROJEKAT_ZADUZENJE (IDP, IDZ) values  (12,1);
insert into PROJEKAT_ZADUZENJE (IDP, IDZ) values  (13,1);
insert into PROJEKAT_ZADUZENJE (IDP, IDZ) values  (14,1);
insert into PROJEKAT_ZADUZENJE (IDP, IDZ) values  (15,1);
--inzenjer_projekat
insert into INZINJER_PROJEKAT (IDR, IDP, BRSATI) VALUES (1,1,8);
insert into INZINJER_PROJEKAT (IDR, IDP, BRSATI) VALUES (1,2,8);
insert into INZINJER_PROJEKAT (IDR, IDP, BRSATI) VALUES (1,3,8);
insert into INZINJER_PROJEKAT (IDR, IDP, BRSATI) VALUES (1,4,8);
insert into INZINJER_PROJEKAT (IDR, IDP, BRSATI) VALUES (1,5,8);
insert into INZINJER_PROJEKAT (IDR, IDP, BRSATI) VALUES (1,6,8);
insert into INZINJER_PROJEKAT (IDR, IDP, BRSATI) VALUES (2,7,8);
insert into INZINJER_PROJEKAT (IDR, IDP, BRSATI) VALUES (2,1,8);
insert into INZINJER_PROJEKAT (IDR, IDP, BRSATI) VALUES (3,1,8);
insert into INZINJER_PROJEKAT (IDR, IDP, BRSATI) VALUES (3,7,8);
insert into INZINJER_PROJEKAT (IDR, IDP, BRSATI) VALUES (4,7,8);
insert into INZINJER_PROJEKAT (IDR, IDP, BRSATI) VALUES (5,7,8);
insert into INZINJER_PROJEKAT (IDR, IDP, BRSATI) VALUES (6,1,8);
--inzinjer obavlja zaduzenje
insert into INZENJER_OBAVLJA_ZADUZENJE Z (projekatzaduzenje_idp,projekatzaduzenje_idz,inzinjerprojekat_idp,inzinjerprojekat_idr) values (1,1,1,1);
insert into INZENJER_OBAVLJA_ZADUZENJE Z (projekatzaduzenje_idp,projekatzaduzenje_idz,inzinjerprojekat_idp,inzinjerprojekat_idr) values (2,1,2,1);
insert into INZENJER_OBAVLJA_ZADUZENJE Z (projekatzaduzenje_idp,projekatzaduzenje_idz,inzinjerprojekat_idp,inzinjerprojekat_idr) values (3,1,3,1);
insert into INZENJER_OBAVLJA_ZADUZENJE Z (projekatzaduzenje_idp,projekatzaduzenje_idz,inzinjerprojekat_idp,inzinjerprojekat_idr) values (4,1,4,1);
insert into INZENJER_OBAVLJA_ZADUZENJE Z (projekatzaduzenje_idp,projekatzaduzenje_idz,inzinjerprojekat_idp,inzinjerprojekat_idr) values (1,1,1,2);
insert into INZENJER_OBAVLJA_ZADUZENJE Z (projekatzaduzenje_idp,projekatzaduzenje_idz,inzinjerprojekat_idp,inzinjerprojekat_idr) values (1,1,1,3);