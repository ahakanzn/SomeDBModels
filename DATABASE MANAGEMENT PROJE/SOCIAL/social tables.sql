drop database if exists SOCIAL; 
create database SOCIAL;
use SOCIAL;
Create table COUNTRY(
	country_name varchar(45) not null unique,
	primary key(country_name)
    );
Create table CITY(
	country_name varchar(45) not null,
	city_name varchar(45) not null,
    foreign key(country_name) references COUNTRY(country_name) on update cascade on delete cascade,
	primary key(country_name,city_name)
    );
Create table LOCATION(
	location_id int AUTO_INCREMENT,
	zipcode int not null,
	neighboorhood varchar(45),
	street varchar(45),
	apt_no int,
	location_description text,

	country_name varchar(45),
	city_name varchar(45),
	foreign key(country_name,city_name) references CITY(country_name,city_name) on update cascade on delete cascade,
	primary key(location_id)
    );
Create table MEDIA(
	media_id int AUTO_INCREMENT,
	media_url varchar(255),
	primary key(media_id)
    );
Create Table S_PROFILE(	
    profile_id int AUTO_INCREMENT,
    
    pp_media_id int,
	cp_media_id int,
    foreign key(pp_media_id) references MEDIA(media_id) on update cascade on delete set null,
    foreign key(cp_media_id) references MEDIA(media_id) on update cascade on delete set null,
    primary key(profile_id)
    );
Create table S_USER(
	user_id int AUTO_INCREMENT,
	user_password varchar(16) not null,
	fname varchar(45) not null,
	mname varchar(45),
	lname varchar(45) not null,
	gender varchar(6),
	phone varchar(13),
	e_mail varchar(45) not null,
	create_date datetime DEFAULT CURRENT_TIMESTAMP,
	user_type varchar(45) not null,
	birth_date date not null,
	activeness boolean DEFAULT true,
    friend_count int default 0,

	location_id int,
	profile_id int,
	foreign key(location_id) references LOCATION(location_id) on update cascade on delete set null,
	foreign key(profile_id) references S_PROFILE(profile_id) on update cascade on delete cascade,
	primary key (user_id)
    );
Create Table COMMUNITY(
    community_id int AUTO_INCREMENT,
    
	profile_id int,
    foreign key(profile_id) references S_PROFILE(profile_id),
    primary key(community_id)
    );
Create Table LIKEABLE_OBJECT(
    likeable_object_id int AUTO_INCREMENT,
    
    primary key(likeable_object_id)
    );
Create table S_PAGE(
	page_id int AUTO_INCREMENT,
	like_count int default 0,
	page_name varchar(255),
    username varchar(20),
    company_date date,
    create_date datetime DEFAULT CURRENT_TIMESTAMP,
    web_site varchar(255),
    purpose_info text,
	interest_areas text,
	phone varchar(13),
    e_mail varchar(45),
    impressium varchar(255),
    about text,
    awards text,
    page_category_name varchar(45),
	
    location_id int,
	community_id int,
    profile_id int,
	likeable_object_id int,
    foreign key(location_id) references LOCATION(location_id) on update cascade on delete set null,
	foreign key(profile_id) references S_PROFILE(profile_id) on update cascade on delete cascade,
	foreign key(community_id) references COMMUNITY(community_id) on update cascade on delete cascade,
	foreign key(likeable_object_id) references LIKEABLE_OBJECT(likeable_object_id) on update cascade on delete cascade,
	primary key(page_id)
    );
Create table APPLICATION(
	application_id int AUTO_INCREMENT,
    application_name varchar(45),
    
	primary key(application_id)
    );
Create table S_GROUP(
	group_id int AUTO_INCREMENT,
    privacy_type varchar(45) not null,
    group_name varchar(45) not null,
    create_date datetime DEFAULT CURRENT_TIMESTAMP,
    about text,
    group_rules text,
    
    media_id int,
    community_id int,
    foreign key(media_id) references MEDIA(media_id) on update cascade on delete set null,
    foreign key(community_id) references COMMUNITY(community_id) on update cascade on delete cascade,
    primary key(group_id)
    );
Create table S_EVENT(
	event_id int AUTO_INCREMENT,
	event_name varchar(45) not null,
	create_date datetime DEFAULT CURRENT_TIMESTAMP,
	date_and_hour datetime,
	event_description text,

	location_id int,
	community_id int,
	foreign key (location_id) references LOCATION(location_id) on update cascade on delete set null,
	foreign key(community_id) references COMMUNITY(community_id) on update cascade on delete cascade,
	primary key(event_id)
    );
Create table ALBUM(
	album_id int AUTO_INCREMENT,
	
	profile_id int not null,
	foreign key(profile_id) references S_PROFILE(profile_id) on update cascade on delete cascade, 	
	primary key(album_id)
    );
CREATE table HAS_MEDIA(
	album_id int,
	media_id int,
	
	foreign key(album_id) references ALBUM(album_id) on update cascade on delete cascade,
	foreign key(media_id) references MEDIA(media_id) on update cascade on delete cascade,
	primary key(album_id, media_id)
    );
Create table S_STATUS(
	status_id int AUTO_INCREMENT,
    status_text text,
    like_count int default 0, 
    status_type varchar(45) not null,
	feeling varchar(45),
    
    event_id int,
    location_id int,
    shared_status_id int,
    media_id int,
    album_id int,
    likeable_object_id int,
    profile_id int,
    foreign key(event_id) references S_EVENT(event_id),
    foreign key(location_id) references LOCATION(location_id) on update cascade on delete set null,
    foreign key(shared_status_id) references S_STATUS(status_id),
    foreign key(media_id) references MEDIA(media_id) on update cascade on delete set null,
    foreign key(album_id) references ALBUM(album_id),
    foreign key(likeable_object_id) references LIKEABLE_OBJECT(likeable_object_id) on update cascade on delete cascade,
    foreign key(profile_id) references S_PROFILE(profile_id) on update cascade on delete cascade,
    primary key(status_id)
    );
Create Table S_COMMENT(
    profile_id int not null,
    status_id int not null,
    comment_id int AUTO_INCREMENT,
    comment_text text not null,
    
    like_count int,
    likeable_object_id int,
    foreign key(profile_id) references S_PROFILE(profile_id) on update cascade on delete cascade,
    foreign key(status_id) references S_STATUS(status_id) on update cascade on delete cascade,
    foreign key(likeable_object_id) references LIKEABLE_OBJECT(likeable_object_id) on update cascade on delete cascade,
    primary key(comment_id)
    );
Create table MESSAGE(
	message_id int AUTO_INCREMENT,
	sender_profile_id int not null,
    receiver_profile_id int not null,
    message text,
    message_datetime datetime default current_timestamp,
    
	foreign key(sender_profile_id) references S_USER(profile_id) on update cascade on delete cascade,
    foreign key(receiver_profile_id) references S_USER(profile_id) on update cascade on delete cascade,
    primary key(message_id)
    );
Create table USES_APPLICATION(
	user_id int,
	application_id int,
	
	foreign key(user_id) references S_USER(user_id) on update cascade on delete cascade,
	foreign key(application_id) references APPLICATION(application_id) on update cascade on delete cascade,
	primary key(user_id,application_id)	
    );
Create table OTHER_ACCOUNTS(
	account_name varchar(45) not null,
	account_type varchar(45) not null,
	
	profile_id int,
	foreign key (profile_id) references S_PROFILE(profile_id) on update cascade on delete cascade,
    primary key (account_name,account_type)
    );
Create table S_LANGUAGE(
	language_name varchar(45),
    profiency varchar(45),
    
    primary key(language_name)
    );
Create Table ABILITY(
	ability_name varchar(45),
    
    primary key(ability_name)
    );
Create Table S_LIKE(
    profile_id int,
    likeable_object_id int,
    
	foreign key(profile_id) references S_PROFILE(profile_id) on update cascade on delete cascade,
    foreign key(likeable_object_id) references LIKEABLE_OBJECT(likeable_object_id) on update cascade on delete cascade,
    primary key(profile_id,likeable_object_id)
    );
Create table S_ORGANIZATION(
	organization_id int AUTO_INCREMENT,
    page_id int,
    employee_count int default 0,
    head_quarter varchar(45),
    sector varchar(45),
    service_type varchar(45),
    
    foreign key(page_id) references S_PAGE(page_id) on update cascade on delete cascade,
    primary key(organization_id)
    );
Create table WORKS_ON(
    user_id int,
    organization_id int,
    works_on_type varchar(45),
    start_date date,
    end_date date,
    title varchar(45),
    sector varchar(45),
    work_description text, 
    
    foreign key(user_id) references S_USER(user_id) on update cascade on delete cascade,
	foreign key(organization_id) references S_ORGANIZATION(organization_id) on update cascade on delete cascade,
    primary key(user_id, organization_id)
	);
Create Table STUDIES(
	user_id int,
    organization_id int,
    degree varchar(45),
    start_date date,
    end_date date,
    department varchar(45),
    activities_and_communities varchar(255),
    studies_description varchar(255),
    
    foreign key(user_id) references S_USER(user_id) on update cascade on delete cascade,
    foreign key(organization_id) references S_ORGANIZATION(organization_id) on update cascade on delete cascade,
    primary key(user_id,organization_id)
    );
Create table MEMBER_OF(
	profile_id int,
    group_id int,
    
    foreign key(profile_id) references S_USER(profile_id) on update cascade on delete cascade,
    foreign key(group_id) references S_GROUP(group_id) on update cascade on delete cascade,
    primary key(profile_id, group_id)
    );
Create Table MANAGES(
	profile_id int,
    community_id int,
    
    foreign key(profile_id) references S_PROFILE(profile_id) on update cascade on delete cascade,
    foreign key(community_id) references COMMUNITY(community_id) on update cascade on delete cascade,
    primary key(profile_id,community_id)
    );
Create table ORGANIZATION_ROLE(
	organization_role_id int AUTO_INCREMENT,
    organization_name varchar(45),
    role_position varchar(45),
    start_date date,
    end_date date,
    role_description text,
    
    user_id int,
    organization_id int,
    foreign key(user_id) references S_USER(user_id) on update cascade on delete cascade,
    foreign key(organization_id) references S_ORGANIZATION(organization_id),
    primary key(organization_role_id)
    );
Create table HONOR_AND_AWARD(
	honor_and_award_id int AUTO_INCREMENT,
    title varchar(45),
    h_a_issuer varchar(45),
	h_a_date date,
	h_a_description text,
    
    user_id int,
    organization_id int,
    foreign key(user_id) references S_USER(user_id) on update cascade on delete cascade,
    foreign key(organization_id) references S_ORGANIZATION(organization_id),
    primary key(honor_and_award_id)
    );
Create table COURSE(
	course_id int AUTO_INCREMENT,
    course_name varchar(45),
    
    organization_id int,
    foreign key(organization_id) references S_ORGANIZATION(organization_id),
    primary key(course_id)
    );
Create table TEST_SCORE(
	test_score_id int AUTO_INCREMENT,
    score float,
    test_date date,
    test_description text,
    
    user_id int,
    organization_id int,
    foreign key(user_id) references S_USER(user_id) on update cascade on delete cascade,
    foreign key(organization_id) references S_ORGANIZATION(organization_id),
    primary key(test_score_id)
    );
Create table CERTIFICATE(
	certificate_id int AUTO_INCREMENT,
    cerfiticate_name varchar(45),
    issue_date date,
    expiration_date date,
    certificate_url varchar (255),
    
    organization_id int,
    foreign key(organization_id) references S_ORGANIZATION(organization_id),
    primary key(certificate_id)
    );
Create table PUBLICATION(
	publication_id int AUTO_INCREMENT,
    title varchar(45),
	publication_url varchar(255),
    publish_date date,
    publish_description text,
    
    organization_id int,
    foreign key(organization_id) references S_ORGANIZATION(organization_id),
    primary key(publication_id)
    );
Create table PROJECT(
	project_id int AUTO_INCREMENT,
    start_date date,
    end_date date,
    project_url varchar(255),
    project_description text,
    
    organization_id int,
    foreign key(organization_id) references S_ORGANIZATION(organization_id),
    primary key(project_id)
    );
Create table SHARE_IN_GROUPS(
	user_id int,
    group_id int,
    status_id int,
    
    foreign key(user_id) references S_USER(user_id) on update cascade on delete cascade,
    foreign key(group_id) references S_GROUP(group_id) on update cascade on delete cascade,
    foreign key(status_id) references S_STATUS(status_id) on update cascade on delete cascade,
    primary key(user_id,group_id,status_id)
    );
CREATE table INTERNET_SITES(
	user_id int,
	internet_site varchar(255),
	
	foreign key(user_id) references S_USER(user_id) on update cascade on delete cascade,
	primary key(user_id,internet_site)	
	);
Create table JOB_OFFER(
	job_offer_id int AUTO_INCREMENT,
    create_date date,
    deadline date,
    apply_count int,
    industry varchar(45),
    employment_type varchar(45),
    seniority_level varchar(45),
	job_functions varchar(45),
    offer_description text,
    
    primary key(job_offer_id)
    );
Create table ASK(
	job_offer_id int,
    ability_name varchar(45),
    
    foreign key(job_offer_id) references JOB_OFFER(job_offer_id) on update cascade on delete cascade,
    foreign key(ability_name) references ABILITY(ability_name) on update cascade on delete cascade,
    primary key(job_offer_id, ability_name)
    );
Create table HAS_LOCATION(
	page_id int,
    location_id int,
    
    foreign key(page_id) references S_ORGANIZATION(page_id) on update cascade on delete cascade,
    foreign key(location_id) references LOCATION(location_id) on update cascade on delete cascade,
    primary key(page_id, location_id)
    );
Create table HAS_LANGUAGE(
	user_id int,
    language_name varchar(45),
    
    foreign key(user_id) references S_USER(user_id) on update cascade on delete cascade,
    foreign key(language_name) references S_LANGUAGE(language_name) on update cascade on delete cascade,
    primary key(user_id, language_name)
    );
Create table HAS_CERTIFICATE(
	user_id int,
    certificate_id int,
    
     foreign key(user_id) references S_USER(user_id) on update cascade on delete cascade,
     foreign key(certificate_id) references CERTIFICATE(certificate_id) on update cascade on delete cascade,
     primary key(user_id, certificate_id)
     );
Create table TAKE(
	user_id int,
    course_id int,
    
    foreign key(user_id) references S_USER(user_id) on update cascade on delete cascade,
    foreign key(course_id) references COURSE(course_id) on update cascade on delete cascade,
    primary key(user_id, course_id)
	);
Create table AUTHOR(
	user_id int,
    publication_id int,
    
    foreign key(user_id) references S_USER(user_id) on update cascade on delete cascade,
    foreign key(publication_id) references PUBLICATION(publication_id) on update cascade on delete cascade,
    primary key(user_id, publication_id)
    );
Create table PROJECT_CREATE(
	user_id int,
    project_id int,
    
    foreign key(user_id) references S_USER(user_id) on update cascade on delete cascade,
    foreign key(project_id) references PROJECT(project_id) on update cascade on delete cascade,
    primary key(user_id, project_id)
    );
Create table HAS_ABILITY(
	ability_name varchar(45),
    user_id int,
    
    foreign key(user_id) references S_USER(user_id) on update cascade on delete cascade,
    primary key(ability_name, user_id)
    );
Create table APPLY(
	user_id int,
    job_offer_id int,
    
    foreign key(user_id) references S_USER(user_id) on update cascade on delete cascade,
    foreign key(job_offer_id) references JOB_OFFER(job_offer_id) on update cascade on delete cascade,
    primary key(user_id, job_offer_id)
    );
Create table ATTENDS(
	user_id int,
	event_id int,
	attends_type varchar(45),
	
	foreign key(user_id) references S_USER(user_id) on update cascade on delete cascade,
	foreign key(event_id) references S_EVENT(event_id) on update cascade on delete cascade,
	primary key(user_id,event_id)	
	);
Create table ASSOCIATED(
	user_id int,
	page_id int,
	associated_type varchar(45),
	
	foreign key(user_id) references S_USER(user_id) on update cascade on delete cascade,
	foreign key(page_id) references S_PAGE(page_id) on update cascade on delete cascade,
	primary key(user_id,page_id)	
	);
Create table PATENT(
	patent_id int AUTO_INCREMENT,
    patent_number varchar(45),
    patent_url varchar(255),
    title varchar(45),
    patent_status varchar(45),
    patent_date date,
    patent_description text,
    
    country_name varchar(45),
    foreign key(country_name) references COUNTRY(country_name) on update cascade on delete set null,
    primary key(patent_id)
    );
Create table INVENTS(
	user_id int,
    patent_id int,
    
    foreign key(user_id) references S_USER(user_id) on update cascade on delete cascade,
    foreign key(patent_id) references PATENT(patent_id) on update cascade on delete cascade,
    primary key(user_id, patent_id)
    );
Create table CONFIRM(
	confirmer_id int,
    ability_name varchar(45),
    confirmed_user_id int,
    
    foreign key(confirmer_id) references S_USER(user_id) on update cascade on delete cascade,
    foreign key(ability_name) references HAS_ABILITY(ability_name) on update cascade on delete cascade,
    foreign key(confirmed_user_id) references S_USER(user_id) on update cascade on delete cascade,
	primary key(confirmer_id, ability_name, confirmed_user_id)
    );
Create table FRIENDS_WITH(
	user_id int,
	friends_user_id int,
	beginning_date datetime DEFAULT CURRENT_TIMESTAMP,
	
    foreign key(user_id) references S_USER(user_id) on update cascade on delete cascade,
	foreign key(friends_user_id) references S_USER(user_id) on update cascade on delete cascade,
	primary key(user_id,friends_user_id)		
	);

ALTER TABLE LOCATION AUTO_INCREMENT=1001;
ALTER TABLE MEDIA AUTO_INCREMENT=2001;
ALTER TABLE S_PROFILE AUTO_INCREMENT=3001;
ALTER TABLE S_USER AUTO_INCREMENT=4001;
ALTER TABLE COMMUNITY AUTO_INCREMENT=5001;
ALTER TABLE LIKEABLE_OBJECT AUTO_INCREMENT=6001;
ALTER TABLE S_PAGE AUTO_INCREMENT=7001;
ALTER TABLE APPLICATION AUTO_INCREMENT=8001;
ALTER TABLE S_GROUP AUTO_INCREMENT=9001;
ALTER TABLE S_EVENT AUTO_INCREMENT=10001;
ALTER TABLE ALBUM AUTO_INCREMENT=11001;
ALTER TABLE S_STATUS AUTO_INCREMENT=12001;
ALTER TABLE S_COMMENT AUTO_INCREMENT=13001;
ALTER TABLE MESSAGE AUTO_INCREMENT=14001;
ALTER TABLE S_ORGANIZATION AUTO_INCREMENT=15001;
ALTER TABLE ORGANIZATION_ROLE AUTO_INCREMENT=16001;
ALTER TABLE HONOR_AND_AWARD AUTO_INCREMENT=17001;
ALTER TABLE COURSE AUTO_INCREMENT=18001;
ALTER TABLE TEST_SCORE AUTO_INCREMENT=19001;
ALTER TABLE CERTIFICATE AUTO_INCREMENT=20001;
ALTER TABLE PUBLICATION AUTO_INCREMENT=21001;
ALTER TABLE PROJECT AUTO_INCREMENT=22001;
ALTER TABLE JOB_OFFER AUTO_INCREMENT=23001;
ALTER TABLE PATENT AUTO_INCREMENT=24001;