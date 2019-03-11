DELIMITER |
CREATE TRIGGER fri_count BEFORE INSERT ON `l_connect`
FOR EACH ROW
BEGIN
	IF (select friend_count from l_user where f_user.user_id=new.user_id)>1000 or
	   (select friend_count from l_user where f_user.user_id=new.connect_with_user_id)>1000
	THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Arkadaş sayısı 1000\'den fazla olamaz';
	END IF;
END|  
DELIMITER ;

DELIMITER |
CREATE TRIGGER connect_exist BEFORE INSERT ON `l_connect`
FOR EACH ROW
BEGIN
    IF EXISTS (select * from l_connect where l_connect.user_id=new.connect_with_user_id and l_connect.connect_with_user_id=new.user_id)
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
			new.user_id=member_of.user_id and
			new.community_id=(
				select community_id 
				from l_group 
				where member_of.group_id=l_group.group_id
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
    IF new.sender_user_id=new.receiver_user_id
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
		from l_group
        where l_group.group_id=new.group_id
		group by l_group.group_id
        )>300
	THEN
		SIGNAL SQLSTATE '45001' SET MESSAGE_TEXT = 'Kullanıcı 300 den fazla gruba katılamaz';
	END IF;
END|   
DELIMITER ;    
