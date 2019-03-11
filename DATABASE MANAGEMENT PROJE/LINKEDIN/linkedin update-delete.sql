use linkedin;
SET SQL_SAFE_UPDATES = 0;
update l_user set user_type="free" where fname="Ali";
update l_status set status_text="değişmiş text" where status_id=9001;
update manages set user_id=4002 where user_id=4001;

delete from l_profile where profile_id=3002;
delete from l_like where profile_id=3002;
delete from city where city_name="Moscow";