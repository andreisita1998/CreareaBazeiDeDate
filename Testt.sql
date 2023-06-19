create database testt;

create table utilizatori
(id int primary key auto_increment,
 prenume varchar(255),
 nume varchar(255),
 datanasterii date,
 loculnasterii varchar(255),
 email varchar(255),
 numeutilizator varchar(255),
 CV text,
 photo blob 
 );
 
 create table postari
 (id int primary key auto_increment,
  iduser int,
  titlu varchar(255),
  continut text,
  data date,
  foreign key (iduser) references utilizatori(id)
  );
  
 
  
  insert into utilizatori values(null, 'Sita', 'Andrei', '1998-09-15', 'Constanta', 'sita.andrei@yahoo.com', 'andsit1998', 'Am absolvit universitatea Ovidius', 'Capture.PNG');
  insert into utilizatori values(null, 'Bogdan', 'Maria', '1997-10-14', 'Bucuresti', 'bogdan.maria@yahoo.com', 'bogdanmaria1234', 'Am absolvit UNIBUC', 'Capture3.PNG');
  
  insert into postari values(null, 1, 'Cum am petrecut sfarsitul anului', 'La bunici cu petrecere', '2021-01-02');
  insert into postari values(null, 1, 'Cum a fost la meci', 'Foarte bine, chiar daca echipa a pierdut', '2023-02-28');
  
  insert into postari values(null, 2, 'Ce s-a intamplat aseara ?', 'A plouat torential', '2022-08-16');
  insert into postari values(null, 2, 'Cum a fost la film', 'Exceptional, ca niciodata in atatia ani', '2018-11-17');
  
   select* from utilizatori;
  select* from postari;
  
  insert into utilizatori values(null, 'Popa', 'Bogddan', '1999-04-16', 'Iasi', 'popabogdan@gmail.com', 'popabogdan2000', 'Am finalizat studiile Politehnicii', 'Capture4.PNG');
  
  create table prietenii
  (id int primary key auto_increment,
   user_1_id int,
   user_2_id int,
   prietenie enum('waiting', 'accepted', 'rejected'), 
   dataprieteniei date,
   foreign key (user_1_id) references utilizatori(id),
   foreign key (user_2_id) references utilizatori(id)
   );
   
   select* from prietenii;
   
   insert into prietenii values(null, 1,3,'accepted', '2023-01-01');
   insert into prietenii values(null, 1,2,'accepted', '2022-12-31');