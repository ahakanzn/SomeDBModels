use facebook;
SET SQL_SAFE_UPDATES = 0;
update f_user set activeness=false where user_id=4001;
update application set application_name="facebook" where application_name="fcebook";
update f_page set username="monica42" where username="monica";

delete from f_like where profile_id=3001;
delete from likeable_object where likeable_object_id=6006;
delete from other_accounts where profile_id=3001;