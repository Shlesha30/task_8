create table course_data(
	Course_ID int,
	Course_Name varchar,
	Category varchar,
	Duration  int,
	Enrolled_Students varchar,
	Completion_Rate float,
	Platform varchar,
	Price  float,
	Rating  float

)

copy course_data from 'C:\Program Files\PostgreSQL\16\Backup\course_data.csv' DELIMITER ',' CSV Header;


select * from course_data

--------
select * from course_data
	
select course_name, category, completion_rate from course_data  where category ~ 'Office Tools' and course_name ~'19'

select * from course_data where duration:: varchar ~ '^[0-9](2|6)$';

select course_id, course_name, completion_rate:: varchar from course_data  where completion_rate:: varchar ~ '^[0-9][2-3].[0-9]{4}$'

select platform,price:: varchar from course_data where platform ~*'Le' or price:: varchar ~ '^[0-9][2-3][0-3].(2|3|7)$'

select category,duration,enrolled_students:: varchar from course_data where category ~*'ing' and enrolled_students:: varchar ~'^[0-9]{4}$'

select  course_id ,duration:: varchar, completion_rate:: varchar, platform from course_data where duration:: varchar ~ '^[2-5][0-8]$' or 
	completion_rate:: varchar ~'^[0-9](2|1).[3-7](4|3|5){2}$'

select course_name,completion_rate:: varchar from course_data where completion_rate:: varchar ~'^[0-9][0-9].[0-7](2|4|3|5)$';

select platform,rating:: varchar from course_data where platform ~*'ed' or rating:: varchar ~'^[0-9].[0-9](5|2|4){4}$'

select category, duration::varchar,enrolled_students,completion_rate,platform,price from course_data where category ~*'SC' and duration::varchar ~'^[0-9][2-8]$'
 or enrolled_students::varchar ~'^[0-8](2|1|6)$' or  platform ~*'sera'

select completion_rate::varchar,price::varchar from course_data where completion_rate::varchar ~'^[1-8][0-5].[4-9](5|6|8){4}' or price::varchar ~ '^[0-5][2-4].[4-9](5|4|3|7|8)[0-6]{2}'
 

