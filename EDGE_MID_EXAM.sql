-- Q1
create table hotel_inv(
number_of_room int,
room_number int,
facilities varchar(20),
location varchar(20)
);
insert into hotel_inv(number_of_room,room_number,facilities,location)
values(10,101,"AC","Rangpur"),(11,102,"Projector","Dinajpur"),(12,103,"PC","Dhaka"),(13,104,"Mouse","Bogura"),(14,105,"Table","Khulna"),
(15,106,"AC","Dhaka"),(16,107,"DVD","Rangpur"),(17,108,"PC","Dhaka"),(18,109,"Kitchen","Rangpur"),(19,251,"AC","Rangpur"),(20,255,"Khulna","Gazipur");
insert into hotel_inv(number_of_room,room_number,facilities,location)
values(10,101,"Kitchen","Rangpur");
insert into hotel_inv(number_of_room,room_number,facilities,location)
values(10,101,"Kitchen","Rangpur"),(21,156,"Kitchen","Rangpur"),(22,221,"Kitchen","Dhaka"),(23,331,"AC","Joypurhat");
select * from hotel_inv;

-- Q2
select * from hotel_inv
where location="Rangpur";

-- Q3
select room_number from hotel_inv
where facilities="kitchen" or facilities="AC";

-- Q4
select room_number from hotel_inv
order by room_number desc;

-- Q5
select sum(number_of_room) as TOTAL_NUMBER_OF_ROOM from hotel_inv
group by room_number;

-- Q6
select * from hotel_inv
where room_number like "_5%";