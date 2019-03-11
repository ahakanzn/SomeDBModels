use facebook;
#################sorgu-1
select fname,mname,lname,extract(year from CURRENT_TIMESTAMP)-extract(year from birth_date)
	from f_user
	where extract(year from CURRENT_TIMESTAMP)-extract(year from birth_date)>20;
    
#################sorgu-2
select pname, company_date
	from f_page 
	where extract(year from company_date) between 2000 and 2005;
    
#################sorgu-3
select group_name
	from f_group
	where group_name like "%python%";
    
#################sorgu-4
select user_id, status_id, comment_id, comment_text
from f_comment join f_user
	on f_comment.profile_id=f_user.profile_id
where user_id=4001;

#################sorgu-5
select a.application_name,max(a.ct)
	from
	(select application_name,count(*) as ct
	from uses_application join application
		on uses_application.application_id=application.application_id
	group by application.application_id) as a;
#################sorgu-6
select a.profil,album_sayisi
from
	(select f_page.profile_id as profil, count(*) as album_sayisi
	from album join f_page
		on album.profile_id=f_page.profile_id
	group by f_page.profile_id) as a
where album_sayisi>1;
#################sorgu-7
select gonderici.fname,gonderici.lname,message.message,alici.fname,alici.lname
from message
	join f_user as gonderici
		on message.sender_profile_id=gonderici.profile_id
    join f_user as alici
		on message.receiver_profile_id=alici.profile_id;

#################sorgu-8

select a.page_id
from
	(select page_id,manages.community_id as com_id
	from manages join f_page
		on f_page.profile_id=manages.profile_id) as a
	join attends
    on (select event_id from f_event where community_id=a.com_id)=attends.event_id
where attends.user_id=4001;


#################sorgu-9
select a.isim name,max(kisi)
	from
	(select f_event.event_name as isim,count(*) as kisi 
	from f_user,attends,f_event 
	where f_user.user_id=attends.user_id and attends.event_id=f_event.event_id and 
		extract(year from CURRENT_TIMESTAMP)-extract(year from birth_date) between 18 and 30 
	group by f_event.event_name) as a;

#################sorgu-10
select sokak,max(event_sayisi)
from
	(select location.street as sokak,count(*) as event_sayisi
	from attends join f_event
		on attends.event_id=f_event.event_id
	join location
		on f_event.location_id=location.location_id
	group by location.street) as a

