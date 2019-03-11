DROP TRIGGER IF EXISTS ins_like;
DELIMITER |
CREATE TRIGGER ins_like AFTER INSERT ON s_like
FOR EACH ROW BEGIN 
	update s_status set like_count=like_count+1 where likeable_object_id=NEW.likeable_object_id; 
	update s_page set like_count=like_count+1 where likeable_object_id=NEW.likeable_object_id;
	update s_comment set like_count=like_count+1 where likeable_object_id=NEW.likeable_object_id; 
END|
DELIMITER ;

DROP TRIGGER IF EXISTS del_like;
DELIMITER |
CREATE TRIGGER del_like AFTER DELETE ON s_like
FOR EACH ROW BEGIN 
	update s_status set like_count=like_count-1 where likeable_object_id=OLD.likeable_object_id; 
	update s_page set like_count=like_count-1 where likeable_object_id=OLD.likeable_object_id;
	update s_comment set like_count=like_count-1 where likeable_object_id=OLD.likeable_object_id; 
END|
DELIMITER ;

DROP TRIGGER IF EXISTS ins_friend;
DELIMITER |
CREATE TRIGGER ins_friend AFTER INSERT ON friends_with
FOR EACH ROW BEGIN 
	update s_user set friend_count=friend_count+1 where f_user.user_id=new.user_id;
	update s_user set friend_count=friend_count+1 where f_user.user_id=new.friends_user_id;
END|
DELIMITER ;

DROP TRIGGER IF EXISTS del_friend;
DELIMITER |
CREATE TRIGGER del_friend AFTER DELETE ON friends_with
FOR EACH ROW BEGIN 
	update s_user set friend_count=friend_count-1 where s_user.user_id=old.user_id;
	update s_user set friend_count=friend_count-1 where s_user.user_id=old.friends_user_id;
END|
DELIMITER ;


DROP TRIGGER IF EXISTS auto_likeable_status;
DELIMITER |
CREATE TRIGGER auto_likeable_status BEFORE INSERT ON s_status
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

DROP TRIGGER IF EXISTS auto_likeable_page;
DELIMITER |
CREATE TRIGGER auto_likeable_page BEFORE INSERT ON s_page
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
CREATE TRIGGER auto_likeable_comment BEFORE INSERT ON s_comment
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


DROP TRIGGER IF EXISTS auto_community_page;
DELIMITER |
CREATE TRIGGER auto_community_page BEFORE INSERT ON s_page
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
CREATE TRIGGER auto_community_group BEFORE INSERT ON s_group
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


DROP TRIGGER IF EXISTS auto_community_event;
DELIMITER |
CREATE TRIGGER auto_community_event BEFORE INSERT ON s_event
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

DROP TRIGGER IF EXISTS auto_profile_page;
DELIMITER |
CREATE TRIGGER auto_profile_page BEFORE INSERT ON s_page
FOR EACH ROW BEGIN 
	if new.profile_id is null
    then
		set @auto_id := (SELECT AUTO_INCREMENT FROM INFORMATION_SCHEMA.TABLES
				 WHERE TABLE_NAME='s_profile' AND TABLE_SCHEMA=DATABASE() ); 
		insert into s_profile values(null);
    	set NEW.profile_id=@auto_id;
	end if;
END|
DELIMITER ;

DROP TRIGGER IF EXISTS auto_profile_user;
DELIMITER |
CREATE TRIGGER auto_profile_user BEFORE INSERT ON s_user
FOR EACH ROW BEGIN 
	if new.profile_id is null
    then
		set @auto_id := (SELECT AUTO_INCREMENT FROM INFORMATION_SCHEMA.TABLES
				 WHERE TABLE_NAME='s_profile' AND TABLE_SCHEMA=DATABASE() ); 
		insert into s_profile values(null);
    	set NEW.profile_id=@auto_id;
	end if;
END|
DELIMITER ;


