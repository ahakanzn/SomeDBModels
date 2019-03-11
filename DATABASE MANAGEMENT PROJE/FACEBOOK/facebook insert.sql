use facebook;

insert into COUNTRY Values("Turkey");
insert into COUNTRY Values("England");
insert into COUNTRY Values("Italy");
insert into COUNTRY Values("Spain");
insert into COUNTRY Values("Poland");
insert into COUNTRY Values("Ukraine");
insert into COUNTRY Values ("Finland");
insert into COUNTRY Values ("Japan");


insert into CITY Values("Turkey","İzmir");
insert into CITY Values("Turkey","İstanbul");
insert into CITY Values("England","Liverpool");
insert into CITY Values("Italy","Rome");
insert into CITY Values("Spain","Madrid");
insert into CITY Values("Poland","Krakow");
insert into CITY Values("Ukraine","Kiev");
insert into CITY Values("Japan","Tokio");

insert into LOCATION Values(1001,35100,"Kazım Dirik Neighboorhoog","372. street",9,"Öğrenci köyü","Turkey","İzmir");
insert into LOCATION Values(1002,90000,"Abraham Lake","122. street",11,"Next to Stadium","England","Liverpool");
insert into LOCATION Values(1003,80000,"Papa John's","45. street",13,"Across the Museum","Italy","Rome");
insert into LOCATION Values(1004,40000,"Marco de Sol","372. street",9,"By the Arena","Spain","Madrid");
insert into LOCATION Values(1005,75500,"St. Lucas","85. street",34,"Behind of The Church","Poland","Krakow");
insert into LOCATION Values(1006,34000,"Cihangir","34. street",42,"Cami Karşısı","Turkey","İstanbul");


insert into MEDIA values(2001,"https://picsum.photos/SaatKulesi");
insert into MEDIA values(2002,"https://picsum.photos/WembleyStadium");
insert into MEDIA values(2003,"https://picsum.photos/PizzaPizza");
insert into MEDIA values(2004,"https://picsum.photos/ElToro");
insert into MEDIA values(2005,"https://picsum.photos/Students");
insert into MEDIA values(2006,"https://picsum.photos/burger");
insert into MEDIA values(2007,"https://picsum.photos/chemistry");

insert into F_PROFILE values(3001,2001,2001);
insert into F_PROFILE values(3002,2002,2002);
insert into F_PROFILE values(3003,2003,2003);
insert into F_PROFILE values(3004,2004,2004);
insert into F_PROFILE values(3005,2005,2005);
insert into F_PROFILE values(3006,2006,2006);
insert into F_PROFILE values(3007,2007,2007);
insert into F_PROFILE values(3008,null,null);

insert into F_USER values(4001,"busifre","Ali","Metin","Korkmaz","M","905001220121","ali@gmail.com",default,"1995-12-06",default,default,1001,"Turkey","İzmir",3001);
insert into F_USER values(4002,"password","Harry","James","Potter","M","632150021425","harrypotter@gmail.com",default,"1997-06-12",default,default,1002,"England","Liverpool",3002);
insert into F_USER values(4003,"pizzaword","Bellima","Selina","Attenzione","F","85362152654","msattenzione@gmail.com",default,"2000-07-07",default,default,1003,"Italy","Rome",3003);
insert into F_USER values(4004,"bullpasword","Sergio","Gonzales","Ramos","M","3654182542","sergioramos@gmail.com",default,"1985-02-02",default,default,1004,"Spain","Madrid",3004);
insert into F_USER values(4005,"plkrakow","Nicole","Maria","Warsawian","M","3654182542","marianic@gmail.com",default,"1999-01-11",default,default,1005,"Poland","Krakow",3005);

insert into PAGE_CATEGORY values("Food");
insert into PAGE_CATEGORY values("Famous Person");
insert into PAGE_CATEGORY values("School");

insert into COMMUNITY values(5001);
insert into COMMUNITY values(5002);
insert into COMMUNITY values(5003);
insert into COMMUNITY values(5004);
insert into COMMUNITY values(5005);
insert into COMMUNITY values(5006);
insert into LIKEABLE_OBJECT values(6001);
insert into LIKEABLE_OBJECT values(6002);
insert into LIKEABLE_OBJECT values(6003);
insert into LIKEABLE_OBJECT values(6004);
insert into LIKEABLE_OBJECT values(6005);
insert into LIKEABLE_OBJECT values(6006);
insert into LIKEABLE_OBJECT values(6007);
insert into LIKEABLE_OBJECT values(6008);
insert into LIKEABLE_OBJECT values(6009);
insert into LIKEABLE_OBJECT values(60010);
insert into LIKEABLE_OBJECT values(60011);
insert into LIKEABLE_OBJECT values(60012);

insert into F_PAGE values(7001,0,"Madrid Burger","madridburgerZ",default,"2015-05-12","www.eatmadrid.com","feed the world","Burgers","5072145214","info@madridburger.com","impressium madrid","everything about burgers",null,1004,"Food",3006,5001,6001);
insert into F_PAGE values(7002,0,"Marie Cury","madamcurypoland",default,"2007-09-11","www.madamcury.org","don't forget madam curry","Chemistry","444 0 365","info@mariecurry.com","impressium poland","everything about madam cury",1005,null,"Food",3007,5002,6002);
insert into F_PAGE values(7003,0,"St. Monica Highschool","monica",default,"2000-01-01","www.sthighschool.org",null,"highschool","05412503645","info@sthighschool.com",null,null,null,1002,"School",3008,5006,6009);

insert into APPLICATION values(8001,"hackerrank");
insert into APPLICATION values(8002,"github");
insert into APPLICATION values(8003,"rosalinda");
insert into APPLICATION values(8004,"app4");
insert into APPLICATION values(8005,"app5");
insert into APPLICATION values(8006,"fcebook");

insert into OTHER_ACCOUNTS values("alimetin","instagram",3001);
insert into OTHER_ACCOUNTS values("harrywrites","twitter",3002);
insert into OTHER_ACCOUNTS values("bellima","twitter",3003);
insert into OTHER_ACCOUNTS values("sergio13","instagram",3004);
insert into OTHER_ACCOUNTS values("marianicole4","twitter",3005);

insert into F_GROUP values(9001,"Java Lovers",default,"private",5003);
insert into F_GROUP values(9002,"Python Rocks!",default,"private",5004);

insert into F_EVENT values(10001,"C++ Sevenler Toplanıyor",default,"2018-11-01 22:00:00","toplanıp kodlama yapıyoruz",1001,5005);

insert into ALBUM values(11001,3001);
insert into ALBUM values(11002,3002);
insert into ALBUM values(11003,3003);
insert into ALBUM values(11004,3004);
insert into ALBUM values(11005,3006);
insert into ALBUM values(11006,3006);
insert into ALBUM values(11007,3007);
insert into ALBUM values(11008,3008);

insert into F_STATUS values(12001,"media",null,0,"birlikte mutlu",null,null,null,2001,null,6002,3001);
insert into F_STATUS values(12002,"text","sad",2,"i just lost my wand :(",null,null,null,null,null,6003,3002);
insert into F_STATUS values(12003,"text",null,1,"who is online?",null,1003,null,null,null,6004,3003);
insert into F_STATUS values(12004,"media",null,0,null,null,null,null,2004,11004,6005,3004);
insert into F_STATUS values(12005,"media","happy",0,null,null,1005,null,2005,11005,6006,3005);
insert into F_STATUS values(12006,"event",null,0,null,10001,null,null,null,null,6007,3006);
insert into F_STATUS values(12007,"text",null,0,"everyone like the page",null,null,null,null,null,6008,3007);

insert into FRIENDS_WITH values(4001,4002,default);
insert into FRIENDS_WITH values(4001,4003,default);
insert into FRIENDS_WITH values(4002,4003,default);
insert into FRIENDS_WITH values(4003,4004,default);
insert into FRIENDS_WITH values(4003,4005,default);

insert into USES_APPLICATION values(4001,8001);
insert into USES_APPLICATION values(4002,8002);
insert into USES_APPLICATION values(4003,8003);
insert into USES_APPLICATION values(4004,8004);
insert into USES_APPLICATION values(4005,8005);

insert into ASSOCIATED values(4003,7003,"School");

insert into ATTENDS values(4001,10001,"is going to");
insert into ATTENDS values(4002,10001, "thinking to go");

insert into HAS_MEDIA values(11001,2001);
insert into HAS_MEDIA values(11002,2002);
insert into HAS_MEDIA values(11003,2003);
insert into HAS_MEDIA values(11004,2004);
insert into HAS_MEDIA values(11005,2005);

insert into INTERNET_SITES values(4002,"www.harrypotter.com");

insert into F_COMMENT values(13001,"halanlara çok selam söyle",3001,12002,0,60010);
insert into F_COMMENT values(13002,"brother in law, bbq without us huh?",3002,12003,0,60011);

insert into F_LIKE values(3001,6004);
insert into F_LIKE values(3002,6003);
insert into F_LIKE values(3001,6003);

insert into MANAGES values(3004,5001);
insert into MANAGES values(3003,5002);
insert into MANAGES values(3002,5003);
insert into MANAGES values(3005,5004);
insert into MANAGES values(3001,5005);
insert into MANAGES values(3003,5006);

insert into MESSAGE values(14001,3001,3003,"hi, are you there?", default);
insert into MESSAGE values(14002,3003,3001,"yes what's wrong?", default);
insert into MESSAGE values(14003,3001,3003,"i'm lost", default);

insert into MEMBER_OF values(3001,9001);
insert into MEMBER_OF values(3002,9001);
insert into MEMBER_OF values(3003,9002);
insert into MEMBER_OF values(3004,9002);

insert into SHARE_IN_GROUPS values(3001,9001,12001);
insert into SHARE_IN_GROUPS values(3003,9002,12003);
