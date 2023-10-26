


-- create contacts table and set our primary key
-- drop tables if exist
drop table if exists contacts;

CREATE TABLE contacts (
    contact_id int NOT NULL,
    first_name varchar (150)  NOT NULL,
    last_name varchar (150)  NOT NULL,
    email varchar (150)  NOT NULL,
	CONSTRAINT "primary_contacts" PRIMARY KEY ("contact_id")
);
-- create catedory table and set our primary key
-- drop tables if exist
drop table if exists category;

CREATE TABLE category (
    category_id VARCHAR(50)  NOT NULL ,
    category VARCHAR(50)  NOT NULL ,
	CONSTRAINT "primary_category" PRIMARY KEY ("category_id")
);
-- create subcategory  table and set our primary key
-- drop tables if exist
drop table if exists subcategory;
CREATE TABLE subcategory (
    subcategory_id VARCHAR(50)  NOT NULL ,
    subcategory VARCHAR(50)  NOT NULL ,
    CONSTRAINT "primary_subcategory" PRIMARY KEY ("subcategory_id")
);
-- create campaign table and set our primary key
-- drop tables if exist
drop table if exists campaign;
CREATE TABLE campaign (
    cf_id INTEGER  NOT NULL ,
    contact_id INTEGER  NOT NULL ,
    company_name VARCHAR(50)  NOT NULL ,
    description TEXT  NOT NULL ,
    goal FLOAT  NOT NULL ,
    pledged FLOAT  NOT NULL ,
    outcome VARCHAR(50)  NOT NULL ,
    backers_count INTEGER  NOT NULL ,
    country VARCHAR(50)  NOT NULL ,
    currency VARCHAR(50)  NOT NULL ,
    launched_date DATE  NOT NULL ,
    end_date DATE  NOT NULL ,
    category_id VARCHAR(50)  NOT NULL ,
    subcategory_id VARCHAR(50)  NOT NULL ,
	CONSTRAINT "primary_campaign" PRIMARY KEY ("cf_id")	
);
ALTER TABLE "campaign" ADD CONSTRAINT "foreigncamp_con_id" 
FOREIGN KEY("contact_id") REFERENCES "contacts" ("contact_id");
ALTER TABLE "campaign" ADD CONSTRAINT "foreigncamp_cat_id" 
FOREIGN KEY("category_id") REFERENCES "category" ("category_id");
ALTER TABLE "campaign" ADD CONSTRAINT "foreigncamp_subcat_id" 
FOREIGN KEY("subcategory_id") REFERENCES "subcategory" ("subcategory_id");
