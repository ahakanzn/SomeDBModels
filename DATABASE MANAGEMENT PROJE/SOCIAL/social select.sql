use social;

#############sorgu-1
select s_page.e_mail
	from s_page
    where s_page.page_category_name="school";
#############sorgu-2
select s_group.group_name
	from s_group
    where privacy_type="unlisted";
#############sorgu-3
select gender,count(*) as kisi_sayisi
	from s_user
    where user_type="premium"
    group by gender;
#############sorgu-4
select organization_name
	from s_user join organization_role
		on s_user.user_id=organization_role.user_id
	where gender="F";
#############sorgu-5
select a.sayi
from (select count(*) as sayi
		from author join s_user
			on author.user_id=s_user.user_id
		where extract(year from s_user.birth_date) between 1990 and 2000
		group by author.user_id) as a;
############sorgu-6
select a.sektor,max(kisi)
from
	(select s_organization.sector as sektor ,count(*) as kisi
		from works_on join s_organization
			on works_on.organization_id=s_organization.organization_id
		group by works_on.organization_id) as a;
	
###########sorgu-7
select publication.organization_id,sector
	from publication join s_organization
		on publication.organization_id=s_organization.organization_id;
###########sorgu-9
select group_name
	from s_user join member_of
		on s_user.profile_id=member_of.profile_id
	join s_group
		on member_of.group_id=s_group.group_id
	where user_type="premium";
###########sorgu-10
select a.country_name,max(a.sayi)
from (select patent.country_name,count(*) as sayi
		from invents join s_user
			on invents.user_id=s_user.user_id
			join patent
			on patent.patent_id=invents.patent_id
		where gender="F"
		group by patent.country_name) as a;


	