insert into PRIVACY values(1,'only me');
insert into PRIVACY values(2,'friends');
insert into PRIVACY values(3,'public');

insert into LANGUAGE values (1,'Romana');
insert into LANGUAGE values (2,'Engleza');
insert into LANGUAGE values (3,'Franceza');
insert into LANGUAGE values (4,'Germana');

insert into APP_USER 
select 1,1,'Teo Dora','teodora','Teodora','Cernea','teodora.cernea@yahoo.com', sysdate 
from dual

insert into APP_USER 
select 2,2,'Bogdan Timofte','bogdan','Bogdan','Timofte','bogdan.timofte@hotmail.com', sysdate 
from dual

insert into COUNTRY values(1,3,'Romania');
insert into COUNTRY values(2,3,'SUA');
insert into COUNTRY values(3,3,'Franta');
insert into COUNTRY values(4,3,'Germania');

insert into COUNTY values (1,1,3,'Bucuresti');
insert into COUNTY values (2,1,3,'Brasov');
insert into COUNTY values (3,1,3,'Neamt');
insert into COUNTY values (4,1,3,'Vaslui');
insert into COUNTY values (5,2,3,'New York');
insert into COUNTY values (6,2,3,'California');
insert into COUNTY values (7,2,3,'Washington');

insert into CITY values (1,1,3,'Bucuresti');
insert into CITY values (2,2,3,'Brasov');
insert into CITY values (3,2,3,'Fagaras');
insert into CITY values (4,3,3,'Piatra-Neamt');
insert into CITY values (5,4,3,'Barlad');
insert into CITY values (6,5,3,'New York');
insert into CITY values (7,6,3,'San Francisco');
insert into CITY values (8,7,3,'Washington');

insert into USER_PROFILE values (1,1,2,1,to_date('19930812','yyyymmdd'),'Frumoasa, ambitioasa. Zodia leu','Master - Baze de date si tehnologii web','dans, pictura, desen','Interstellar','Rihanna, Adele', 'Orice e scris de Marc Levy', 'Aleea PC');
insert into USER_PROFILE values (2,2,1,4,to_date('19930614','yyyymmdd'),'Geek','Master - Baze de date si tehnologii web','linux','Pulp fiction','Richard Clayderman','1984','Strada G');

insert into STATUS 
select 1,1,1,'Sunt in sesiune',sysdate,sysdate
from dual

insert into ALBUM
values(1,1,2,'Album 1','Moments',sysdate,sysdate)
insert into ALBUM
values(2,2,3,'Album 2','Diverse',sysdate,sysdate)

insert into PICTURE
values(1,1,2,'Descriere 1',sysdate,sysdate,1,0,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8PeV0XKLSuhNS5JnLWaFJeT_aPQpapBenwCazsWv--WhiNL5CCqxTV2R4');
insert into PICTURE values(2,1,3,'Descriere 2',sysdate,sysdate,0,1,'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcT85kv4jURd_5JGzAGwREl9bXz840BThph6ug097KEof6XFMhIkDQ');
insert into PICTURE values(3,2,3,'Descriere 3',sysdate,sysdate,1,1,'https://pixabay.com/static/uploads/photo/2013/07/13/11/44/penguin-158551_640.png');
