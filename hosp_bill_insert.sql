\c hospital_bill_system;

INSERT  into Administrator values('1001','Tom Hanks');
INSERT  into Administrator values('1002','Aruther Parker');
INSERT  into Administrator values('1003','Tim Jobs');
INSERT  into Administrator values('1004','Daniel Smith');
INSERT  into Administrator values('1005','Sam Cook');
INSERT  into Administrator values('1006','Jessica Lee');
INSERT  into Administrator values('1007','Gunther Levitt');
INSERT  into Administrator values('1008','Tony Woods');


INSERT into Staff values('2001','20000','Brandon Hill');
INSERT into Staff values('2002','22000','Winoa Grey');
INSERT into Staff values('2003','18000','Henry Paul');
INSERT into Staff values('2004','20000','Nadia Gates');
INSERT into Staff values('2005','18000','Mick Nord');
INSERT into Staff values('2006','15000','Stephanie Cross');
INSERT into Staff values('2007','25000','Olivia Ralls');
INSERT into Staff values('2008','21000','Hugh Smith');


INSERT into Doctor values('3001','Sachin Srinivas','Cardiologist');
INSERT into Doctor values('3002','Wayne Miller','Urologish');
INSERT into Doctor values('3003','Maanya Girish','Neorologist');
INSERT into Doctor values('3004','Michaek Ross','Dermatologist');
INSERT into Doctor values('3005','Divya Pradeep','Oncologist');
INSERT into Doctor values('3006','Maya Kamath','Radiologist');
INSERT into Doctor values('3007','Karan Anand','Pediatrician');
INSERT into Doctor values('3008','Devi Prasad','Endocrinologist');


INSERT into Manages values('1001','2001','3007');
INSERT into Manages values('1002','2002','3006');
INSERT into Manages values('1002','2006','3004');
INSERT into Manages values('1005','2004','3002');
INSERT into Manages values('1003','2007','3003');
INSERT into Manages values('1005','2008','3001');
INSERT into Manages values('1007','2001','3008');
INSERT into Manages values('1002','2003','3005');


INSERT into Lab_Reports values('50001','2020-01-04','Low Blood Sugar Level');
INSERT into Lab_Reports values('50002','2020-01-07','Hypothyroidism');
INSERT into Lab_Reports values('50003','2020-02-10','Kidney Stones');
INSERT into Lab_Reports values('50004','2020-03-01','Normal Blood Pressure Level');
INSERT into Lab_Reports values('50005','2020-03-05','Normal Blood Sugar');
INSERT into Lab_Reports values('50006','2020-07-31','Cancer');
INSERT into Lab_Reports values('50007','2020-08-24','Viral Fever');
INSERT into Lab_Reports values('50008','2020-11-26','Atheltes Foot');


INSERT into Checks values('3001','50008');
INSERT into Checks values('3003','50005');
INSERT into Checks values('3004','50006');
INSERT into Checks values('3005','50001');
INSERT into Checks values('3003','50002');
INSERT into Checks values('3007','50004');
INSERT into Checks values('3008','50007');
INSERT into Checks values('3002','50003');


INSERT into Room values('101','Occupied');
INSERT into Room values('102','Occupied');
INSERT into Room values('103','Vacant');
INSERT into Room values('201','Occupied');
INSERT into Room values('203','Vacant');
INSERT into Room values('202','Occupied');
INSERT into Room values('301','Occupied');
INSERT into Room values('302','Vacant');


INSERT into OutPatient values('4001','2020-08-24');
INSERT into OutPatient values('4002','2021-01-26');
INSERT into OutPatient values('4004','2020-03-05');
INSERT into OutPatient values('4003','2021-07-16');
INSERT into OutPatient values('4005','2020-03-01');
INSERT into OutPatient values('4007','2020-05-06');
INSERT into OutPatient values('4008','2020-01-31');
INSERT into OutPatient values('4006','2020-11-26');


INSERT into inpatient values(5001, 'Meredith Grey', 'Female', 9988765230, 'Kidney Stones', '2021-01-25', 101);
INSERT into inpatient values(5002, 'Alex Karev', 'Male', 8182345230, 'Hypothyroidism', '2020-10-05', 201);
INSERT into inpatient values(5003, 'Derek Shepherd', 'Male', 7699340123, 'Cancer', '2021-08-31', 102);
INSERT into inpatient values(5004, 'Christina Yang', 'Female', 9804234172, 'Viral Fever', '2021-12-13', 201);
INSERT into inpatient values(5005, 'Izabel Stevens', 'Female', 7849531324, 'Atheletes Foot', '2021-04-09', 201);
INSERT into inpatient values(5006, 'Richard Webber', 'Male', 9604356723, 'Asthma', '2021-07-16', 202);
INSERT into inpatient values(5007, 'Miranda Bailey', 'Female', 7490312785, 'Sepsis', '2020-12-21', 202);
INSERT into inpatient values(5008, 'Preston Burke', 'Male', 9741350768, 'Hip Fractue', '2021-02-20', 301);


INSERT into treats values(3001, 5008, 4001);
INSERT into treats values(3002, 5001);
INSERT into treats values(3003, 5002, 4002);
INSERT into treats values(3003, null, 4003);
INSERT into treats values(3004, 5003, 4004);
INSERT into treats values(3004, null, 4005);
INSERT into treats values(3005, 5005, 4006);
INSERT into treats values(3006, 5006, 4007);
INSERT into treats values(3007, 5007);
INSERT into treats values(3008, 5004, 4008);


INSERT into decides values(50001, null, 4002);
INSERT into decides values(50002, 5002);
INSERT into decides values(50003, 5001);
INSERT into decides values(50004, null, 4003);
INSERT into decides values(50005, null, 4006);
INSERT into decides values(50006, 5003);
INSERT into decides values(50007, 5004);
INSERT into decides values(50008, 5005);


INSERT into bill values(9001, '2020-08-24', 500, null, null, null, null, 1500);
INSERT into bill values(9002, '2021-01-26', 300, null, null, null, null, 750, 500);
INSERT into bill values(9003, '2020-03-05', 450, null, null, null, null, 1200);
INSERT into bill values(9004, '2021-07-16', 600, null, null, null, null, 1800, 300);
INSERT into bill values(9005, '2020-03-01', 350, null, null, null, null, 900);
INSERT into bill values(9006, '2020-05-06', 850, null, null, null, null, 500);
INSERT into bill values(9007, '2020-01-31', 700, null, null, null, null, 450);
INSERT into bill values(9008, '2020-11-26', 650, null, null, null, null, 600, 400);
INSERT into bill values(9009, '2021-01-30', 7000, 3500, 25000, 500, 5, 18000, 2500);
INSERT into bill values(9010, '2021-12-15', 3000, 1500, null, 250, 2, 5000, 1500);
INSERT into bill values(9011, '2021-04-29', 10000, 2500, 50000, 500, 68, 20000, 4000);


INSERT into issued_to values('Out Patient', null, 4001, 9001);
INSERT into issued_to values('Out Patient', null, 4002, 9002);
INSERT into issued_to values('Out Patient', null, 4003, 9004);
INSERT into issued_to values('Out Patient', null, 4004, 9003);
INSERT into issued_to values('Out Patient', null, 4005, 9005);
INSERT into issued_to values('Out Patient', null, 4006, 9008);
INSERT into issued_to values('Out Patient', null, 4007, 9006);
INSERT into issued_to values('Out Patient', null, 4008, 9007);
INSERT into issued_to values('In Patient', 5001, null, 9009);
INSERT into issued_to values('In Patient', 5004, null, 9010);
INSERT into issued_to values('In Patient', 5008, null, 9011);
