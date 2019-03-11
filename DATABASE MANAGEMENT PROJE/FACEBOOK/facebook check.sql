DELIMITER |
CREATE TRIGGER fri_count BEFORE INSERT ON `friends_with`
FOR EACH ROW
BEGIN
    IF (select friend_count from f_user where f_user.user_id=new.user_id)>1000 or
	   (select friend_count from f_user where f_user.user_id=new.friends_user_id)>1000
	THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Arkadaş sayısı 1000\'den fazla olamaz';
	END IF;
END|  
DELIMITER ;

DELIMITER |
CREATE TRIGGER fri_exist BEFORE INSERT ON `friends_with`
FOR EACH ROW
BEGIN
    IF EXISTS (select * from friends_with where friends_with.user_id=new.friends_user_id and friends_with.friends_user_id=new.user_id)
	THEN
		SIGNAL SQLSTATE '45001' SET MESSAGE_TEXT = 'Arkadaşlık zaten mevcut';
	END IF;
END|   
DELIMITER ;  

DELIMITER |
CREATE TRIGGER manager_in_group BEFORE INSERT ON `manages`
FOR EACH ROW
BEGIN
    IF EXISTS(
		select *
		from member_of
		where 
			new.profile_id=member_of.profile_id and
			new.community_id=(
				select community_id 
				from f_group 
				where member_of.group_id=f_group.group_id
			)
	)THEN
		SIGNAL SQLSTATE '45002' SET MESSAGE_TEXT = 'Grupta olmayan kişi yöneticilik yapamaz';
	END IF;
END|   
DELIMITER ;

DELIMITER |
CREATE TRIGGER recursive_message BEFORE INSERT ON `message`
FOR EACH ROW
BEGIN
    IF new.sender_profile_id=new.receiver_profile_id
	THEN
		SIGNAL SQLSTATE '45001' SET MESSAGE_TEXT = 'Kullanıcı kendisine mesaj yollayamaz';
	END IF;
END|   
DELIMITER ;

DELIMITER |
CREATE TRIGGER group_count BEFORE INSERT ON `member_of`
FOR EACH ROW
BEGIN
    IF (
		select count(*)
		from member_of
        where new.group_id=member_of.group_id
		group by member_of.profile_id
        )>300
	THEN
		SIGNAL SQLSTATE '45001' SET MESSAGE_TEXT = 'Kullanıcı 300 den fazla gruba katılamaz';
	END IF;
END|   
DELIMITER ;   
