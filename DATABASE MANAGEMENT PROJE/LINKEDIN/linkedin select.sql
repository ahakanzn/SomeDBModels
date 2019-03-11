use linkedin;
###########sorgu-1
select *
	from l_user
	where user_type="premium";
###########sorgu-2
select *
	from l_organization
	where employee_count>100;
############sorgu-3
select *
	from l_group
	where group_name like "%python%";
############sorgu-4
select max(kisi_sayisi),a.country_name
	from   (select count(*) as kisi_sayisi,country_name
			from l_user join location
				on l_user.location_id=location.location_id
			group by country_name) as a;
############sorgu-5
select fname,mname,lname,title
	from honor_and_award join l_user
		on l_user.user_id=honor_and_award.user_id
	where l_user.user_type="premium";
############sorgu-6
select fname,mname,lname,role_position
	from l_user join organization_role
		on l_user.user_id=organization_role.user_id
	where l_user.gender="F";
    
############sorgu-7
select avg(a.sayi)
	from (select count(*) as sayi
		from author join l_user
			on l_user.user_id=author.user_id
		where extract(year from l_user.birth_date) <2000
		group by author.user_id) as a;
        
############sorgu-8
select son.phone
	from course join take
		on course.course_id=take.course_id
	join l_user as son
		on son.user_id=take.user_id
	where course.organization_id=
		(select organization_id
			from works_on join l_user
				on works_on.user_id=l_user.user_id
			where works_on.end_date=null and fname="Ali" and mname="Metin" and lname="Korkmaz");

############sorgu-9
 select course_name
 from course
 where course.organization_id=
	 (select a.id from           
		(select max(studies.start_date),studies.organization_id as id
			from studies join l_user
				on studies.user_id=l_user.user_id
			where fname="Ali" and mname="Metin" and lname="Korkmaz") as a);
################sorgu-10
select fname,mname,lname,course_name
	from l_user join take
		on take.user_id=l_user.user_id
	join course
		on take.course_id=course.course_id
	where gender="M";
