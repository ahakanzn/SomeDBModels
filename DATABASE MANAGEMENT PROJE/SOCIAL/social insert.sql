USE SOCIAL;

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

insert into LOCATION Values(1001,35100,"Kazım Dirik Neighboorhoog","372. street",9,"Öğrenci köyü","Turkey","İzmir");
insert into LOCATION Values(1002,90000,"Abraham Lake","122. street",11,"Next to Stadium","England","Liverpool");
insert into LOCATION Values(1003,60000,"Papa John's","45. street",13,"Across the Museum","Italy","Rome");
insert into LOCATION Values(1004,40000,"Marco de Sol","372. street",9,"By the Arena","Spain","Madrid");
insert into LOCATION Values(1005,75500,"St. Lucas","85. street",34,"Behind of The Church","Poland","Krakow");
insert into LOCATION Values(1006,34000,"Cihangir","34. street",42,"Cami Karşısı","Turkey","İstanbul");
insert into LOCATION Values(1007,35100,"Pelican Valley","Alpha Avenue",15,null,"Finland","Helsinki");
insert into LOCATION Values(1008,36521,"Naruto Orochimaru","23. street",43,null,"Japan","Tokio");
insert into LOCATION Values(1009,75757,"Peachy Neighboorhood","32. street",23,null,"Korea","Seul");
insert into LOCATION Values(1010,32145,"Motherland Neighboorhood","25. street",93,null,"Ukraine","Kiev");

insert into MEDIA values(2001,"https://picsum.photos/SaatKulesi");
insert into MEDIA values(2002,"https://picsum.photos/WembleyStadium");
insert into MEDIA values(2003,"https://picsum.photos/PizzaPizza");
insert into MEDIA values(2004,"https://picsum.photos/ElToro");
insert into MEDIA values(2005,"https://picsum.photos/Students");
insert into MEDIA values(2006,"https://picsum.photos/burger");
insert into MEDIA values(2007,"https://picsum.photos/cats");
insert into MEDIA values(2008,"https://picsum.photos/banananana");
insert into MEDIA values(2009,"https://picsum.photos/snow");
insert into MEDIA values(2010,"https://picsum.photos/egeuni");
insert into MEDIA values(2011,"https://picsum.photos/python");
insert into MEDIA values(2012,"https://picsum.photos/yapayzeka");
insert into MEDIA values(2013,"https://picsum.photos/yoyoplay");
insert into MEDIA values(2014,"https://picsum.photos/dbadmin");
insert into MEDIA values(2015,"https://picsum.photos/wands");

insert into S_PROFILE values(3001,2001,2001);
insert into S_PROFILE values(3002,2002,2002);
insert into S_PROFILE values(3003,2003,2003);
insert into S_PROFILE values(3004,2004,2004);
insert into S_PROFILE values(3005,2005,2005);
insert into S_PROFILE values(3006,2006,2006);
insert into S_PROFILE values(3007,2007,2007);
insert into S_PROFILE values(3008,2008,2008);
insert into S_PROFILE values(3009,2009,2009);
insert into S_PROFILE values(3010,2010,2010);
insert into S_PROFILE values(3011,2011,2011);
insert into S_PROFILE values(3012,2012,2012);
insert into S_PROFILE values(3013,2013,2013);
insert into S_PROFILE values(3014,2014,2014);
insert into S_PROFILE values(3015,2015,2015);

insert into S_USER values(4001,"busifre","Ali","Metin","Korkmaz","M","905001220121","ali@gmail.com",default,"free","1985-02-22",default,0,1001,3001);
insert into S_USER values(4002,"password","Harry","James","Potter","M","632150021425","harrypotter@gmail.com",default,"free","1980-06-16",default,0,1002,3002);
insert into S_USER values(4003,"pizzaword","Bellima","Selina","Attenzione","F","85362152654","msattenzione@gmail.com",default,"free","1975-05-05",default,0,1003,3003);
insert into S_USER values(4004,"bullpasword","Sergio","Gonzales","Ramos","M","3654182542","sergioramos@gmail.com",default,"free","1988-02-12",default,0,1004,3004);
insert into S_USER values(4005,"plkrakow","Nicole","Maria","Warsawian","M","3654182542","marianic@gmail.com",default,"premium","1989-10-05",default,0,1005,3005);
insert into S_USER Values(4006,"alfaomega1","Melisa","Ayşe","Korkmaz","F","541865475","melisa@gmail.com",default,"free","1982-12-14",default,0,1006,3006);
insert into S_USER Values(4007,"54jane54","Mary","Jane","Finnishson","F","25484652","mjfinnish@gmail.com",default,"free","1987-05-05",default,0,1007,3007);
insert into S_USER Values(4008,"anime3","Sasuke","Itachi","Uchiha","M","2525451563","sasuke@gmail.com",default,"free","1990-06-05",default,0,1008,3008);
insert into S_USER Values(4009,"school","Mehmet","Akif","Ersoy","M","5241532654","mehmetakif@gmail.com",default,"premium","1975-01-05",default,0,1006,3009);

insert into COMMUNITY values(5001,3001);
insert into COMMUNITY values(5002,3002);
insert into COMMUNITY values(5003,3003);
insert into COMMUNITY values(5004,3004);
insert into COMMUNITY values(5005,3005);
insert into COMMUNITY values(5006,3001);
insert into COMMUNITY values(5007,3002);
insert into COMMUNITY values(5008,3004);
insert into COMMUNITY values(5009,3005);
insert into COMMUNITY values(5010,3006);
insert into COMMUNITY values(5011,3007);

insert into LIKEABLE_OBJECT values(6001);
insert into LIKEABLE_OBJECT values(6002);
insert into LIKEABLE_OBJECT values(6003);
insert into LIKEABLE_OBJECT values(6004);
insert into LIKEABLE_OBJECT values(6005);
insert into LIKEABLE_OBJECT values(6006);
insert into LIKEABLE_OBJECT values(6007);
insert into LIKEABLE_OBJECT values(6008);
insert into LIKEABLE_OBJECT values(6009);
insert into LIKEABLE_OBJECT values(6010);
insert into LIKEABLE_OBJECT values(6011);
insert into LIKEABLE_OBJECT values(6012);

insert into S_PAGE values(7001,0,"LOGO Yazılım","LOGOYZLM","2002-12-03",default,"www.logo.com","Yazılım Şirketi","#software, #coding","02123652145","info@logo.com","impressium 1","Türkiye'nin yazılımı",null,"Company",1006,5001,3010,6001);
insert into S_PAGE values(7002,0,"Magis is Real","MGCRL","2004-06-10",default,"www.magicisreal.com","Commercial Company","#harryPotter, #magic","0516524523","info@magic.com","impressium 2","We sell magic staff",null,"Company",1007,5002,3011,6002);
insert into S_PAGE values(7003,0,"PizzaPizza","PZZPZZ","1996-11-08",default,"www.pizzapizza.com","Food","#pizza","36985214754","info@pizza.com","impressium 3","Best pizza here",null,"Company",1008,5003,3012,6003);
insert into S_PAGE values(7004,0,"Madrid Tourism","MRDTRZM","1987-02-11",default,"www.madridtourism.com","Tourism","#Vacation","20145253656","info@madridtourism.com","impressium 4","You'll love Madrid",null,"Tourism",1008,5004,3013,6004);
insert into S_PAGE values(7005,0,"Falcon University","falconuni","1982-10-05",default,"www.falconuni.org","School","#Education","05142536954","info@falconuni.com","impressium 5",null,null,"School",1002,5005,3014,6005);

insert into S_ORGANIZATION values(14001,7001,1,"İstanbul","Software",null);
insert into S_ORGANIZATION values(14002,7002,1,"Liverpool","Commerce",null);
insert into S_ORGANIZATION values(14003,7003,1,"Rome","Food",null);
insert into S_ORGANIZATION values(14004,7004,1,"Madrid","Tourism",null);
insert into S_ORGANIZATION values(14005,7002,1,"Liverpool","School",null);

insert into S_GROUP values(8001,"Public","Herkes için Java",default,null,null,2011,5006);
insert into S_GROUP values(8002,"Private","Harry Potter Fans",default,null,null,2015,5007);

insert into S_EVENT values(9001,"Madrid Fest",default,"2018-12-28","Great fun waits for you",1004,5008);

insert into ALBUM values(1001,3001);
insert into ALBUM values(1002,3002);
insert into ALBUM values(1003,3003);
insert into ALBUM values(1004,3004);
insert into ALBUM values(1005,3005);
insert into ALBUM values(1006,3006);

insert into MEDIA values(10001,2001);
insert into MEDIA values(10002,2002);
insert into MEDIA values(10003,2003);
insert into MEDIA values(10004,2004);
insert into MEDIA values(10005,2005);
insert into MEDIA values(10006,2006);

insert into S_STATUS values(11001,"Logo Yazılımdan yenilik",default,"text",null,null,1006,null,null,null,6006,3001);
insert into S_STATUS values(11002,"Madrid is waiting for you",default,"event","excited",9001,1004,null,null,null,6007,3004);

insert into S_COMMENT values(3005,11002,12001,"Can't wait to come there!!",0,6008);

insert into MESSAGE values(13001,3004,3005,"Are you coming to fest??",default);
insert into MESSAGE values(13002,3005,3004,"Sure I'm so excited",default);
insert into MESSAGE values(13003,3004,3005,"Great! See you there",default);
insert into MESSAGE values(13004,3001,3002,"Hello",default);
insert into MESSAGE values(13005,3002,3001,"Hey what's up?",default);

insert into ORGANIZATION_ROLE values(15001,"TEMA","Organizator","2014-05-01","2015-05-01","Organized a event",4007,null);

insert into PUBLICATION values(16001,"Java ile Görüntü işleme","www.makale.org/javayapayzeka","1999-11-02",null,14001);
insert into PUBLICATION values(16002,"Pizza üzerine bir manifesto","www.makale.org/pizza","1996-10-02",null,14003);

insert into AUTHOR values(4001,16001);
insert into AUTHOR values(4003,16002);

insert into WORKS_ON values(4001,14001,"fulltime","1987-01-01",null,"Genel Müdür","Software",null);
insert into WORKS_ON values(4002,14002,"fulltime","1990-01-01",null,"CEO","Commerce",null);
insert into WORKS_ON values(4003,14003,"parttime","1995-01-01",null,"Chef","Food",null);
insert into WORKS_ON values(4004,14004,"fulltime","1997-01-01",null,"Guide","Commerce",null);
insert into WORKS_ON values(4009,14005,"fulltime","1999-01-01",null,"Teacher","School",null);

insert into PATENT values(17001,"JVJ101","www.patent.org/pythonAI","Python AI","Confirmed","2002-05-11",null,"Turkey");
insert into PATENT values(17002,"ELE101","www.patent.org/yuruyenucak","Yuruyen ucak","Confirmed","2001-04-11",null,"Turkey");
insert into PATENT values(17003,"TLS0P","www.patent.org/teleskop","Teleskop","Confirmed","2004-02-11",null,"Italy");

insert into INVENTS values(4006,17001);
insert into INVENTS values(4006,17002);
insert into INVENTS values(4003,17003);
