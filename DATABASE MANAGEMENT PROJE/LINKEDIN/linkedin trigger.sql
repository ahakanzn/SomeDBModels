DROP TRIGGER IF EXISTS ins_like;
DELIMITER |
CREATE TRIGGER ins_like AFTER INSERT ON l_like
FOR EACH ROW BEGIN 
	update l_status set like_count=like_count+1 where likeable_object_id=NEW.likeable_object_id; 
	update l_comment set like_count=like_count+1 where likeable_object_id=NEW.likeable_object_id; 
END|
DELIMITER ;

DROP TRIGGER IF EXISTS del_like;
DELIMITER |
CREATE TRIGGER del_like AFTER DELETE ON l_like
FOR EACH ROW BEGIN 
	update l_status set like_count=like_count-1 where likeable_object_id=OLD.likeable_object_id; 
	update l_comment set like_count=like_count-1 where likeable_object_id=OLD.likeable_object_id; 
END|
DELIMITER ;

DROP TRIGGER IF EXISTS ins_connect;
DELIMITER |
CREATE TRIGGER ins_friend AFTER INSERT ON l_connect
FOR EACH ROW BEGIN 
	update l_user set friend_count=friend_count+1 where l_user.user_id=new.user_id;
	update l_user set friend_count=friend_count+1 where l_user.user_id=new.connect_with_user_id;
END|
DELIMITER ;

DROP TRIGGER IF EXISTS del_connect;
DELIMITER |
CREATE TRIGGER del_connect AFTER DELETE ON l_connect
FOR EACH ROW BEGIN 
	update f_user set friend_count=friend_count-1 where f_user.user_id=OLD.user_id;
	update f_user set friend_count=friend_count-1 where f_user.user_id=OLD.connect_with_user_id;
END|
DELIMITER ;


DROP TRIGGER IF EXISTS auto_likeable_status;
DELIMITER |
CREATE TRIGGER auto_likeable_status BEFORE INSERT ON l_status
FOR EACH ROW BEGIN 
	if new.likeable_object_id is null
    then
		set @auto_id := (SELECT AUTO_INCREMENT FROM INFORMATION_SCHEMA.TABLES
				 WHERE TABLE_NAME='likeable_object' AND TABLE_SCHEMA=DATABASE() ); 
		insert into likeable_object values(null);
    	set NEW.likeable_object_id=@auto_id;
	end if;
    
END|
DELIMITER ;

DROP TRIGGER IF EXISTS auto_likeable_comment;
DELIMITER |
CREATE TRIGGER auto_likeable_comment BEFORE INSERT ON l_comment
FOR EACH ROW BEGIN 
	if new.likeable_object_id is null
    then
		set @auto_id := (SELECT AUTO_INCREMENT FROM INFORMATION_SCHEMA.TABLES
				 WHERE TABLE_NAME='likeable_object' AND TABLE_SCHEMA=DATABASE() ); 
		insert into likeable_object values(null);
    	set NEW.likeable_object_id=@auto_id;
	end if;
    
END|
DELIMITER ;


DROP TRIGGER IF EXISTS auto_community_organization;
DELIMITER |
CREATE TRIGGER auto_community_page BEFORE INSERT ON l_organization
FOR EACH ROW BEGIN 
	if new.community_id is null
    then
		set @auto_id := (SELECT AUTO_INCREMENT FROM INFORMATION_SCHEMA.TABLES
				 WHERE TABLE_NAME='community' AND TABLE_SCHEMA=DATABASE() ); 
		insert into community values(null);
    	set NEW.community_id=@auto_id;
	end if;
END|
DELIMITER ;

DROP TRIGGER IF EXISTS auto_community_group;
DELIMITER |
CREATE TRIGGER auto_community_group BEFORE INSERT ON l_group
FOR EACH ROW BEGIN 
	if new.community_id is null
    then
		set @auto_id := (SELECT AUTO_INCREMENT FROM INFORMATION_SCHEMA.TABLES
				 WHERE TABLE_NAME='community' AND TABLE_SCHEMA=DATABASE() ); 
		insert into community values(null);
    	set NEW.community_id=@auto_id;
	end if;
END|
DELIMITER ;

DROP TRIGGER IF EXISTS auto_profile_organization;
DELIMITER |
CREATE TRIGGER auto_profile_organization BEFORE INSERT ON l_organization
FOR EACH ROW BEGIN 
	if new.profile_id is null
    then
		set @auto_id := (SELECT AUTO_INCREMENT FROM INFORMATION_SCHEMA.TABLES
				 WHERE TABLE_NAME='l_profile' AND TABLE_SCHEMA=DATABASE() ); 
		insert into l_profile values(null);
    	set NEW.profile_id=@auto_id;
	end if;
END|
DELIMITER ;

DROP TRIGGER IF EXISTS auto_profile_user;
DELIMITER |
CREATE TRIGGER auto_profile_user BEFORE INSERT ON l_user
FOR EACH ROW BEGIN 
	if new.profile_id is null
    then
		set @auto_id := (SELECT AUTO_INCREMENT FROM INFORMATION_SCHEMA.TABLES
				 WHERE TABLE_NAME='l_profile' AND TABLE_SCHEMA=DATABASE() ); 
		insert into l_profile values(null);
    	set NEW.profile_id=@auto_id;
	end if;
END|
DELIMITER ;

DROP TRIGGER IF EXISTS ins_employee;
DELIMITER |
CREATE TRIGGER ins_employee AFTER INSERT ON works_on
FOR EACH ROW BEGIN 
	update l_organization set employee_count=employee_count+1 where organization_id=NEW.organization_id; 
END|
DELIMITER ;

DROP TRIGGER IF EXISTS del_employee;
DELIMITER |
CREATE TRIGGER del_employee AFTER DELETE ON works_on
FOR EACH ROW BEGIN 
	update l_organization set employee_count=employee_count-1 where organization_id=OLD.organization_id; 
END|
DELIMITER ;


