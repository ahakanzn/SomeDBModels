use social;
SET SQL_SAFE_UPDATES = 0;
update s_page set page_name="Pizza Pizza" where page_name="PizzaPizza";
update s_user set user_password="metinali123" where fname="Ali";
update patent set patent_status="on demand" where patent_id=17001;

delete from location where zipcode=35100;
delete from media where media_id=2001;
delete from city where city_name="Moscow";