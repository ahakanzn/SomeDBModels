use LINKEDIN;


insert into MEDIA values(1001,"https://picsum.photos/SaatKulesi");
insert into MEDIA values(1002,"https://picsum.photos/WembleyStadium");
insert into MEDIA values(1003,"https://picsum.photos/PizzaPizza");
insert into MEDIA values(1004,"https://picsum.photos/ElToro");
insert into MEDIA values(1005,"https://picsum.photos/Students");
insert into MEDIA values(1006,"https://picsum.photos/burger");
insert into MEDIA values(1007,"https://picsum.photos/cats");
insert into MEDIA values(1008,"https://picsum.photos/banananana");
insert into MEDIA values(1009,"https://picsum.photos/snow");
insert into MEDIA values(1010,"https://picsum.photos/egeuni");
insert into MEDIA values(1011,"https://picsum.photos/python");
insert into MEDIA values(1012,"https://picsum.photos/yapayzeka");
insert into MEDIA values(1013,"https://picsum.photos/yoyoplay");
insert into MEDIA values(1014,"https://picsum.photos/dbadmin");
insert into MEDIA values(1015,"https://picsum.photos/wands");

insert into L_PROFILE values(2001,1001,1001);
insert into L_PROFILE values(2002,1002,1002);
insert into L_PROFILE values(2003,1003,1003);
insert into L_PROFILE values(2004,1004,1004);
insert into L_PROFILE values(2005,1005,1005);
insert into L_PROFILE values(2006,1006,1006);
insert into L_PROFILE values(2007,1007,1007);
insert into L_PROFILE values(2008,1008,1008);
insert into L_PROFILE values(2009,1009,1009);
insert into L_PROFILE values(2010,1010,1010);
insert into L_PROFILE values(2011,1011,1011);
insert into L_PROFILE values(2012,1012,1012);
insert into L_PROFILE values(2013,1013,1013);
insert into L_PROFILE values(2014,1014,1014);
insert into L_PROFILE values(2015,1015,1015);

insert into COUNTRY Values("Turkey");
insert into COUNTRY Values("England");
insert into COUNTRY Values("Italy");
insert into COUNTRY Values("Spain");
insert into COUNTRY Values("Poland");
insert into COUNTRY Values("Ukraine");
insert into COUNTRY Values("Finland");
insert into COUNTRY Values("Japan");
insert into COUNTRY Values("Korea");
insert into COUNTRY Values("Russia");
insert into COUNTRY Values("Hungary");

insert into CITY Values("Turkey","İzmir");
insert into CITY Values("Turkey","İstanbul");
insert into CITY Values("England","Liverpool");
insert into CITY Values("Italy","Rome");
insert into CITY Values("Spain","Madrid");
insert into CITY Values("Poland","Krakow");
insert into CITY Values("Ukraine","Kiev");
insert into CITY Values("Japan","Tokio");
insert into CITY Values("Finland","Helsinki");
insert into CITY Values("Russia","Moscow");
insert into CITY Values("Korea","Seul");
insert into CITY Values("Hungary","Budapest");

insert into LOCATION Values(3001,35100,"Kazım Dirik Neighboorhoog","372. street",9,"Öğrenci köyü","Turkey","İzmir");
insert into LOCATION Values(3002,90000,"Abraham Lake","122. street",11,"Next to Stadium","England","Liverpool");
insert into LOCATION Values(3003,80000,"Papa John's","45. street",13,"Across the Museum","Italy","Rome");
insert into LOCATION Values(3004,40000,"Marco de Sol","372. street",9,"By the Arena","Spain","Madrid");
insert into LOCATION Values(3005,75500,"St. Lucas","85. street",34,"Behind of The Church","Poland","Krakow");
insert into LOCATION Values(3006,34000,"Cihangir","34. street",42,"Cami Karşısı","Turkey","İstanbul");
insert into LOCATION Values(3007,35100,"Pelican Valley","Alpha Avenue",15,null,"Finland","Helsinki");
insert into LOCATION Values(3008,36521,"Naruto Orochimaru","23. street",43,null,"Japan","Tokio");
insert into LOCATION Values(3009,75757,"Peachy Neighboorhood","32. street",23,null,"Korea","Seul");
insert into LOCATION Values(3010,32145,"Motherland Neighboorhood","25. street",93,null,"Ukraine","Kiev");


insert into L_USER values(4001,"busifre","Ali","Metin","Korkmaz","M","905001220121","ali@gmail.com",default,"premium",0,"1995-02-22",3001,2001);
insert into L_USER values(4002,"password","Harry","James","Potter","M","632150021425","harrypotter@gmail.com",default,"free",0,"1990-06-16",3002,2002);
insert into L_USER values(4003,"pizzaword","Bellima","Selina","Attenzione","F","85362152654","msattenzione@gmail.com",default,"premium",0,"1975-05-05",3003,2003);
insert into L_USER values(4004,"bullpasword","Sergio","Gonzales","Ramos","M","3654182542","sergioramos@gmail.com",default,"free",0,"1998-02-12",3004,2004);
insert into L_USER values(4005,"plkrakow","Nicole","Maria","Warsawian","M","3654182542","marianic@gmail.com",default,"premium",0,"1999-10-05",3005,2005);
insert into L_USER Values(4006,"alfaomega1","Melisa","Ayşe","Korkmaz","F","541865475","melisa@gmail.com",default,"free",0,"1982-12-14",3006,2006);
insert into L_USER Values(4007,"54jane54","Mary","Jane","Finnishson","F","25484652","mjfinnish@gmail.com",default,"free",0,"1987-05-05",3007,2007);
insert into L_USER Values(4008,"anime3","Sasuke","Itachi","Uchiha","M","2525451563","sasuke@gmail.com",default,"free",0,"1990-06-05",3008,2008);
insert into L_USER Values(4009,"school","Mehmet","Akif","Ersoy","M","5241532654","mehmetakif@gmail.com",default,"premium",0,"1975-01-05",3006,2013);

insert into MESSAGE values(4001,4002,5001,"hi, can i get some info about job?", default);
insert into MESSAGE values(4002,4001,5002,"yes it's about coding databases", default);
insert into MESSAGE values(4001,4002,5003,"Sounds interesting.", default);
insert into MESSAGE values(4003,4004,5004,"Hey are you coming tomorrow?", default);
insert into MESSAGE values(4003,4004,5005,"For the training", default);
insert into MESSAGE values(4004,4003,5006,"Yess i'm excited", default);

insert into COMMUNITY values(5001,4001);
insert into COMMUNITY values(5002,4001);
insert into COMMUNITY values(5003,4002);
insert into COMMUNITY values(5004,4003);
insert into COMMUNITY values(5005,4005);
insert into COMMUNITY values(5006,4006);
insert into COMMUNITY values(5007,4008);
insert into COMMUNITY values(5008,4009);

insert into L_ORGANIZATION values(6001,"LOGO Yazılım",1,"Yazılım Şirketi","İstanbul","www.logo.com","Software","2002-12-03","Software development","Company",5001,2009);
insert into L_ORGANIZATION values(6002,"Magic is Real",1,"Company that sells Harry Potter things","London","www.harrypotter.com","Commerce","2004-06-10","Trade","Company",5002,2010);
insert into L_ORGANIZATION values(6003,"PizzaPizza",1,"Best Pizza You'll Ever Eat","Rome","www.pizzapizza.com","Food","1996-11-08","Restaurant","Company",5003,2011);
insert into L_ORGANIZATION values(6004,"Arena Madrid",1,"Great Arena in the center of Madrid","Madrid","www.arenamadrid.com","Entertainment","1985-08-07","Stadium","Company",5004,2012);
insert into L_ORGANIZATION values(6005,"Şahin Üniversitesi",1,"Teaches the Future","İstanbul","www.sahinuni.org","Education","1995-01-01","Education","School",5008,2014);

insert into LIKEABLE_OBJECT values(7001);
insert into LIKEABLE_OBJECT values(7002);
insert into LIKEABLE_OBJECT values(7003);
insert into LIKEABLE_OBJECT values(7004);
insert into LIKEABLE_OBJECT values(7005);
insert into LIKEABLE_OBJECT values(7006);
insert into LIKEABLE_OBJECT values(7007);
insert into LIKEABLE_OBJECT values(7008);
insert into LIKEABLE_OBJECT values(7009);
insert into LIKEABLE_OBJECT values(7010);
insert into LIKEABLE_OBJECT values(7011);
insert into LIKEABLE_OBJECT values(7012);
insert into LIKEABLE_OBJECT values(7013);

insert into L_GROUP values(8001,"Standart","Polish Python Team","uczyć się python","No rude people, We are here to learn",null,5005);
insert into L_GROUP values(8002,"Standart","C Severler","C öğreniyoruz","Kaba ve öğrenmek istemeyen insanlar için değildir", null,5006);
insert into L_GROUP values(8003,"Unlisted","Anime and More","Perfect group for anime and manga followers","Everyone is welcome",null,5007);

insert into MANAGES values(4008,5007);

insert into MEMBER_OF values(4008,8003);
insert into MEMBER_OF values(4001,8003);
insert into MEMBER_OF values(4002,8003);
insert into MEMBER_OF values(4003,8003);
insert into MEMBER_OF values(4004,8003);

insert into L_STATUS values(9001,"Logo yazılımdan bir yenilik daha!",0,null,null,2001,7001);
insert into L_STATUS values(9002,"Logo çığır açıyor!",0,null,null,2001,7002);
insert into L_STATUS values(9003,"Have you seen the new wands?",0,1015,null,2002,7003);
insert into L_STATUS values(9004,"How to cook the best pizza?",0,null,null,2003,7001);
insert into L_STATUS values(9005,"You wont believe what happened!",0,null,null,2004,7001);

insert into WORKS_ON values(4001,6001,"Fulltime","2000-06-01",null,"Java Developer","Software","Java kodu yazma ve geliştirme");
insert into WORKS_ON values(4002,6002,"Parttime","2005-07-01",null,"Manager","Commerce","Managment of the Store");
insert into WORKS_ON values(4003,6003,"Fulltime","2012-11-05",null,"Head Chef","Food","Cooking Pizza");
insert into WORKS_ON values(4004,6004,"Parttime","196-03-01",null,"Matador","Entertainment","Seyircilere şov sunmak");

insert into L_COMMENT values(2001,9001,10001,"Heyecanla bekliyoruz!",0,7009);
insert into L_COMMENT values(2002,9001,10002,"İnanılmaz umarım yakında kullanabiliriz",0,7010);
insert into L_COMMENT values(2003,9004,10003,"Seems delicious!",default,7011);
insert into L_COMMENT values(2005,9005,10004,"Wow amazing",default,7012);

insert into HONOR_AND_AWARD values(11001,"En iyi Girişimci Ödülü-2018","LOGO Yazılım","2018-11-02","Üstün girişimcilik başarılarından dolayı takdim eidlmiştir.",4001,6001);
insert into HONOR_AND_AWARD values(11002,"Best Sellerman Of UK","Magic is Real","2016-02-05","Made the best sells of 2015-2016",4002,6002);
insert into HONOR_AND_AWARD values(11003,"Best Pizza Chef", "PizzaPizza","2017-05-06","Cooked the best pizzas of 2017",4003,6003);

insert into ORGANIZATION_ROLE values(12001,"TUGVA","Gönüllü","2016-01-01",null,"gençlere kod eğitimi verilmesinde gönüllü görev aldı.",4001,null);
insert into ORGANIZATION_ROLE values(12002,"Kızılay","Kan Bağışçısı","2002-01-01",null,"Düzenli kan bağışçısı",4006,null);
insert into ORGANIZATION_ROLE values(12003,"PizzaPizza","Feeding the homeless","2018-02-04","2018-02-11","Feeding homeless with pizza",4003,6003);

insert into PUBLICATION values(13001,"Akif'in Hayatı","www.makale.org/akif","2017-06-05","Mehmet Akif Ersoy'un biyografisi",6005);
insert into AUTHOR values(4009,13001);

insert into COURSE values(14001,"Python 101",6005);
insert into COURSE values(14002,"Diksiyon 101",6005);
insert into COURSE values(14003,"Etkin Kodlama",6005);
insert into COURSE values(14004,"OOP Programming",6001);

insert into TAKE values(4001,14004);
insert into TAKE values(4001,14002);
insert into TAKE values(4001,14003);
insert into TAKE values(4006,14001);
insert into TAKE values(4006,14002);
insert into TAKE values(4006,14003);
insert into TAKE values(4009,14002);
