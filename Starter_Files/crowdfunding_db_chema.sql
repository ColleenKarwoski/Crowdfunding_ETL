Create Table Contacts(
	contact_id int PRIMARY KEY NOT NULL,
	First_Name varchar(60),
	Last_Name varchar(60),
	email varchar(60)
	
)
Drop Table Contacts

SELECT*
From Contacts;

Create Table Campaign(
	cf_id int Primary Key Not Null,
	contact_id int,
	company_name varchar(40),
	description TEXT,
	goal int,
	pledged int,
	outcome varchar(20),
	backers_count int,
	country varchar(20),
	currency varchar(20),
	launched_date DATE,
	end_date DATE,
	category_id varchar(20),
	subcategory_id varchar(20),
	Foreign Key (contact_id) References Contacts (contact_id),
	Foreign Key (category_id) References Category (category_id),
	Foreign Key (subcategory_id) References Subcategory(subcategory_id)
);

Drop table Campaign

Select*
From Campaign;


Create table Category(
	category_id varchar(20) PRIMARY KEY NOT Null,
	category varchar(20)
);

Drop table category

Select* 
From Category;

Create table Subcategory(
	subcategory_id varchar(20) PRIMARY KEY NOT Null,
	subcategory varchar(20)
)

Select* 
From Subcategory;

Drop table subcategory