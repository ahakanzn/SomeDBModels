drop database if exists LINKEDIN; 
create database LINKEDIN;
use LINKEDIN;
Create table MEDIA(
	media_id int,
    media_url varchar(255),
    primary key (media_id)
    );
Create Table L_PROFILE(
	
    profile_id int,
    
    pp_media_id int,
	cp_media_id int,
    foreign key(pp_media_id) references MEDIA(media_id),
    foreign key(cp_media_id) references MEDIA(media_id),
    primary key(profile_id)
    );
Create table COUNTRY(
	country_name varchar(45),
    primary key(country_name)
);
Create Table CITY(
	country_name varchar(45),
	city_name varchar(45),
    foreign key(country_name) references COUNTRY(country_name) on update cascade on delete cascade,
    primary key(country_name, city_name)
    );
Create table LOCATION(
	location_id int,
    zip_code varchar(45),
    neighbourhood varchar(45),
    street varchar(45),
    apt_no int,
    adress_description text,
    
    country_name varchar(45),
	city_name varchar(45),
	foreign key(country_name,city_name) references CITY(country_name,city_name) on update cascade on delete cascade,
    primary key(location_id)
);
Create table L_USER(
	user_id int,
	user_password varchar(45),
    fname varchar(45),
    mname varchar(45),
    lname varchar(45),
    gender varchar(45),
    phone varchar(13),
    e_mail varchar(45),
    create_date datetime DEFAULT CURRENT_TIMESTAMP,
    user_type varchar(45),
    friend_count int default 0,
	birth_date date not null,
    
    location_id int,
    profile_id int,
    foreign key(location_id) references LOCATION(location_id),
    foreign key(profile_id) references L_PROFILE(profile_id) on update cascade on delete cascade,
	primary key(user_id)
);
Create table L_LANGUAGE(
	language_name varchar(45),
    profiency varchar(45),
    primary key(language_name)
);
Create table PATENT(
	patent_id int,
    patent_number varchar(45),
    patent_url varchar(255),
    title varchar(45),
    patent_status varchar(45),
    patent_date date,
    patent_description text,
    
    country_name varchar(45),
    foreign key(country_name) references COUNTRY(country_name),
    primary key(patent_id)
    );
Create Table COMMUNITY(
	
    community_id int,
    
	user_id int,
    foreign key(user_id) references L_USER(user_id) on update cascade on delete cascade,
    primary key(community_id)
    );
Create table L_ORGANIZATION(
	organization_id int,
    organization_name varchar(45),
    employee_count int,
    about text,
    head_quarter varchar(45),
    web_site varchar(255),
    sector varchar(45),
    foundation_date date,
    service_type varchar(45),
    organization_type varchar(45),
    
    community_id int,
    
    profile_id int,
    foreign key(community_id) references COMMUNITY(community_id) on update cascade on delete cascade,
    foreign key(profile_id) references L_PROFILE(profile_id) on update cascade on delete cascade,
    primary key(organization_id)
    );
Create table PUBLICATION(
	publication_id int,
    title varchar(45),
	publication_url varchar(255),
    publish_date date,
    publish_description text,
    
    organization_id int,
    foreign key(organization_id) references L_ORGANIZATION(organization_id),
    primary key(publication_id)
    );
Create table PROJECT(
	project_id int,
    start_date date,
    end_date date,
    project_url varchar(255),
    project_description text,
    
    organization_id int,
    foreign key(organization_id) references L_ORGANIZATION(organization_id),
    primary key(project_id)
    );
Create table COURSE(
	course_id int,
    course_name varchar(45),
    
    organization_id int,
    foreign key(organization_id) references L_ORGANIZATION(organization_id),
    primary key(course_id)
    );
Create table TEST_SCORE(
	test_score_id varchar(45),
    score float,
    test_date date,
    test_description text,
    
    user_id int,
    organization_id int,
    foreign key(user_id) references L_USER(user_id) on update cascade on delete cascade,
    foreign key(organization_id) references L_ORGANIZATION(organization_id),
    primary key(test_score_id)
    );
Create table HONOR_AND_AWARD(
	honor_and_award_id int,
    title varchar(45),
    h_a_issuer varchar(45),
	h_a_date date,
	h_a_description text,
    
    user_id int,
    organization_id int,
    foreign key(user_id) references L_USER(user_id) on update cascade on delete cascade,
    foreign key(organization_id) references L_ORGANIZATION(organization_id),
    primary key(honor_and_award_id)
    );
Create table ORGANIZATION_ROLE(
	organization_role_id int,
    organization_name varchar(45),
    role_position varchar(45),
    start_date date,
    end_date date,
    role_description text,
    
    user_id int,
    organization_id int,
    foreign key(user_id) references L_USER(user_id) on update cascade on delete cascade,
    foreign key(organization_id) references L_ORGANIZATION(organization_id),
    primary key(organization_role_id)
    );
Create table CERTIFICATE(
	certificate_id int,
    cerfiticate_name varchar(45),
    issue_date date,
    expiration_date date,
    certificate_url varchar (255),
    
    organization_id int,
    foreign key(organization_id) references L_ORGANIZATION(organization_id),
    primary key(certificate_id)
    );
Create Table ABILITY(
	ability_name varchar(45),
    primary key(ability_name)
    );
Create table JOB_OFFER(
	job_offer_id int,
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
Create table L_GROUP(
	group_id int,
    privacy_type varchar(45),
    group_name varchar(45),
    about text,
    group_rules text,
    
    media_id int,
    community_id int,
    foreign key(media_id) references MEDIA(media_id) on update cascade on delete set null,
    foreign key(community_id) references COMMUNITY(community_id) on update cascade on delete cascade,
    primary key(group_id)
    );
Create Table LIKEABLE_OBJECT(
	
    likeable_object_id int,
    
    primary key(likeable_object_id)
    );
Create table L_STATUS(
	status_id int,
    status_text text,
    like_count int default 0,
	
    media_id int,
    shared_status_id int,
    profile_id int,
    likeable_object_id int,
    foreign key(media_id) references MEDIA(media_id),
    foreign key(shared_status_id) references L_STATUS(status_id),
    foreign key(profile_id) references L_PROFILE(profile_id),
    foreign key(likeable_object_id) references LIKEABLE_OBJECT(likeable_object_id),
    primary key(status_id)
    );
Create table HAS_ABILITY(
	ability_name varchar(45),
    user_id int,
    
    foreign key(user_id) references L_USER(user_id) on update cascade on delete cascade,
    primary key(ability_name, user_id)
    );
Create table APPLY(
	user_id int,
    job_offer_id int,
    
    foreign key(user_id) references L_USER(user_id) on update cascade on delete cascade,
    foreign key(job_offer_id) references JOB_OFFER(job_offer_id) on update cascade on delete cascade,
    primary key(user_id, job_offer_id)
    );
Create table AUTHOR(
	user_id int,
    publication_id int,
    
    foreign key(user_id) references L_USER(user_id),
    foreign key(publication_id) references PUBLICATION(publication_id) on update cascade on delete cascade,
    primary key(user_id, publication_id)
    );
Create table PROJECT_CREATE(
	user_id int,
    project_id int,
    
    foreign key(user_id) references L_USER(user_id) on update cascade on delete cascade,
    foreign key(project_id) references PROJECT(project_id) on update cascade on delete cascade,
    primary key(user_id, project_id)
    );
Create table TAKE(
	user_id int,
    course_id int,
    
    foreign key(user_id) references L_USER(user_id) on update cascade on delete cascade,
    foreign key(course_id) references COURSE(course_id) on update cascade on delete cascade,
    primary key(user_id, course_id)
	);
Create table FOLLOW(
	user_id int,
    organization_id int,
    
    foreign key(user_id) references L_USER(user_id) on update cascade on delete cascade,
	foreign key(organization_id) references L_ORGANIZATION(organization_id) on update cascade on delete cascade,
    primary key(user_id, organization_id)
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
    
    foreign key(user_id) references L_USER(user_id) on update cascade on delete cascade,
	foreign key(organization_id) references L_ORGANIZATION(organization_id) on update cascade on delete cascade,
    primary key(user_id, organization_id)
	);
Create table MEMBER_OF(
	user_id int,
    group_id int,
    
    foreign key(user_id) references L_USER(user_id) on update cascade on delete cascade,
    foreign key(group_id) references L_GROUP(group_id) on update cascade on delete cascade,
    primary key(user_id, group_id)
    );
Create table HAS_CERTIFICATE(
	user_id int,
    certificate_id int,
    
     foreign key(user_id) references L_USER(user_id) on update cascade on delete cascade,
     foreign key(certificate_id) references CERTIFICATE(certificate_id) on update cascade on delete cascade,
     primary key(user_id, certificate_id)
     );
Create table MESSAGE(
	sender_user_id int,
    receiver_user_id int,
    message_id int,
    message text,
    message_datetime datetime default current_timestamp,
    
	foreign key(sender_user_id) references L_USER(user_id) on update cascade on delete cascade,
    foreign key(receiver_user_id) references L_USER(user_id) on update cascade on delete cascade,
    primary key(sender_user_id, receiver_user_id, message_id)
    );
Create table L_CONNECT(
	user_id int,
    connect_with_user_id int,
    beginning_date date,
    
    foreign key(user_id) references L_USER(user_id ) on update cascade on delete cascade,
    foreign key(connect_with_user_id) references L_USER(user_id) on update cascade on delete cascade,
    primary key(user_id,connect_with_user_id)
    );
Create table CONFIRM(
	confirmer_id int,
    ability_name varchar(45),
    confirmed_user_id int,
    
    foreign key(confirmer_id) references L_USER(user_id) on update cascade on delete cascade,
    foreign key(ability_name) references HAS_ABILITY(ability_name) on update cascade on delete cascade,
    foreign key(confirmed_user_id) references L_USER(user_id) on update cascade on delete cascade,
	primary key(confirmer_id, ability_name, confirmed_user_id)
    );
Create table HAS_LANGUAGE(
	user_id int,
    language_name varchar(45),
    
    foreign key(user_id) references L_USER(user_id) on update cascade on delete cascade,
    foreign key(language_name) references L_LANGUAGE(language_name) on update cascade on delete cascade,
    primary key(user_id, language_name)
    );
Create table INVENTS(
	user_id int,
    patent_id int,
    
    foreign key(user_id) references L_USER(user_id) on update cascade on delete cascade,
    foreign key(patent_id) references PATENT(patent_id) on update cascade on delete cascade, 
    primary key(user_id, patent_id)
    );
Create table HAS_LOCATION(
	organization_id int,
    location_id int,
    
    foreign key(organization_id) references L_ORGANIZATION(organization_id) on update cascade on delete cascade,
    foreign key(location_id) references LOCATION(location_id) on update cascade on delete cascade,
    primary key(organization_id, location_id)
    );
Create table ASK(
	job_offer_id int,
    ability_name varchar(45),
    
    foreign key(job_offer_id) references JOB_OFFER(job_offer_id) on update cascade on delete cascade,
    foreign key(ability_name) references ABILITY(ability_name) on update cascade on delete cascade,
    primary key(job_offer_id, ability_name)
    );
Create table SHARE_IN_GROUPS(
	user_id int,
    group_id int,
    status_id int,
    
    foreign key(user_id) references L_USER(user_id) on update cascade on delete cascade,
    foreign key(group_id) references L_GROUP(group_id) on update cascade on delete cascade,
    foreign key(status_id) references L_STATUS(status_id) on update cascade on delete cascade,
    primary key(user_id,group_id,status_id)
    );
Create Table PUBLISH_OFFER(
	user_id int,
    organization_id int,
    job_offer_id int,

    foreign key(user_id) references L_USER(user_id) on update cascade on delete cascade,
    foreign key(organization_id) references L_ORGANIZATION(organization_id) on update cascade on delete cascade,
    foreign key(job_offer_id) references JOB_OFFER(job_offer_id) on update cascade on delete cascade,
    primary key(user_id,organization_id,job_offer_id)
    );
Create Table SCHOOL(
	organization_id int,
    
    foreign key(organization_id) references L_ORGANIZATION(organization_id) on update cascade on delete cascade,
    primary key(organization_id)
    );
Create Table COMPANY(
	
    organization_id int,
    
    foreign key(organization_id) references L_ORGANIZATION(organization_id) on update cascade on delete cascade,
    primary key(organization_id)
    );



Create Table MANAGES(
	user_id int,
    community_id int,
    
    foreign key(user_id) references L_USER(user_id) on update cascade on delete cascade,
    foreign key(community_id) references COMMUNITY(community_id) on update cascade on delete cascade,
    primary key(user_id,community_id)
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
    
    foreign key(user_id) references L_USER(user_id) on update cascade on delete cascade,
    foreign key(organization_id) references L_ORGANIZATION(organization_id) on update cascade on delete cascade,
    primary key(user_id,organization_id)
    );

Create Table L_COMMENT(
	
    profile_id int,
    status_id int,
    comment_id int,
    comment_text text,
    like_count int default 0,
	
    likeable_object_id int,
    foreign key(profile_id) references L_PROFILE(profile_id) on update cascade on delete cascade,
    foreign key(status_id) references L_STATUS(status_id) on update cascade on delete cascade,
    foreign key(likeable_object_id) references LIKEABLE_OBJECT(likeable_object_id) on update cascade on delete cascade,
    primary key(profile_id,status_id,comment_id)
    );
 
 

 Create Table L_LIKE(
	
    profile_id int,
    likeable_object_id int,
    
	foreign key(profile_id) references L_PROFILE(profile_id) on update cascade on delete cascade,
    foreign key(likeable_object_id) references LIKEABLE_OBJECT(likeable_object_id) on update cascade on delete cascade,
    primary key(profile_id,likeable_object_id)
    );
    
    
    
    