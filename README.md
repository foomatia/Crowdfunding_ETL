# Crowdfunding_ETL
Project 2

Part 1: Arfan
Part 2: Farheen
Part 3: Kajaananan Kabilan
Part 4: Tamunosaki Owukio Miller Amachree
# Crowdfunding_ETL(ETL_mini_project):

# Introduction:

Mastering the fundamentals of ETL (Extract, Transform & Load) is crucial. In practical scenarios, data is ubiquitous, often dispersed across various sources, and may exhibit inconsistencies. Proficiency in extracting, loading, and transforming data is pivotal, ensuring the availability of clean, current, and precise data. This proficiency empowers individuals to excel in managing data by providing the ability to manipulate data types, rectify formatting discrepancies, and generate supplementary columns to enhance and derive meaningful insights. This project involves leveraging the provided data to execute extraction, transformation, and loading processes.

# Project Outline:

# Data sources|:
* [crowdfunding.xlsx]("C:\Users\bella\Desktop\Crowdfunding_ETL\Resources\crowdfunding.xlsx")
* [contacts.xlsx]("C:\Users\bella\Desktop\Crowdfunding_ETL\Resources\contacts.xlsx")
# Instructions:
* Create the Category and Subcategory DataFrames
* Create the Campaign DataFrame
* Create the Contacts DataFrame
* Create the Crowdfunding Database
## Create the Category and Subcategory DataFrames:
Extract and transform data from the crowdfunding.xlsx Excel file to generate a category DataFrame with the specified columns:
* A **category_id** column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories.
* A **category** column that contains only the category titles


Export the category DataFrame to category.csv and store it in your GitHub repository.
Extract and manipulate data from the crowdfunding.xlsx Excel file to construct a subcategory DataFrame with the specified columns:

* A **subcategory_id** column with entries sequentially ranging from **subcat1** to **subcatn** where n represents the count of unique subcategories.
* A "subcategory" column containing exclusively the titles of subcategories.
Export the subcategory DataFrame to subcategory.csv and store it in your GitHub repository.

# Create the Campaign DataFrame:
Extract and process data from the crowdfunding.xlsx Excel file to generate a campaign DataFrame with the specified columns:
* The "cf_id" column
* The "contact_id" column
* The "company_name" column
* The "blurb" column, renamed to "description"
* The "goal" column, converted to the float data type
* The "pledged" column, converted to the float data type
* The "outcome" column
* The "backers_count" column
* The "country" column
* The "currency" column
* The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format
* The "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format
* The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame
* The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame.

Export the campaign DataFrame to campaign.csv and store it in your GitHub repository.
# Create the Contacts DataFrame:

Select one of the two options provided for extracting and transforming the data from the contacts.xlsx Excel file:
* Option 1: Use Python dictionary methods.
* Option 2: Use regular expressions.
If you chose Option 1, complete the following steps:
* Import the contacts.xlsx file into a DataFrame.
* Iterate through the DataFrame, converting each row to a dictionary.
* Iterate through each dictionary, doing the following:
* Extract the dictionary values from the keys by using a Python list comprehension.
* Add the values for each row to a new list.
* Create a new DataFrame that contains the extracted data.
* Split each "name" column value into a first and last name, and place each in a new column.
* Clean and export the DataFrame as contacts.csv and save it to your GitHub repository.

If you chose Option 2, complete the following steps:
* Import the contacts.xlsx file into a DataFrame.
* Extract the "contact_id", "name", and "email" columns by using regular expressions.
* Create a new DataFrame with the extracted data.
* Convert the "contact_id" column to the integer type.
* Split each "name" column value into a first and a last name, and place each in a new column.
* Clean and then export the DataFrame as contacts.csv and save it to your GitHub repository.

# Create the Crowdfunding Database:

* Examine the four CSV files, then generate an Entity Relationship Diagram (ERD) of the tables using QuickDBD. Utilize the ERD details to formulate a table schema for each CSV file. Save the database schema as a Postgres file named crowdfunding_db_schema.sql, and store it in your GitHub repository.

* Establish a new Postgres database titled crowdfunding_db. Employing the database schema, create the tables in the appropriate order to manage foreign keys. Validate the table creation by executing a SELECT statement for each table.

* Import each CSV file into its corresponding SQL table and confirm the accuracy of the data by executing a SELECT statement for each table.




# Database type for the final production:

Description: The proposal involves defining the database type intended for the ultimate production environment, where it will serve to store and manage the data.

* Data Cleaning and Processing(**Jupyter Notebook**) 
* Packages Used(**pandas, numpy, datetime**) 
* Data Loading(**pgAdmin**) 
* Database Type(**Relational SQL**) 
The proposal involves delineating the database type intended for the ultimate production environment to handle data storage and management. Additionally, it outlines the tools and packages employed for data cleaning and processing. The chosen database is a relational (SQL) database for the final production environment. Data cleaning and processing tasks will be executed through Jupyter Notebook, utilizing packages such as pandas, numpy, and datetime. Post cleaning, the refined data will be loaded into the relational database using pgAdmin for effective storage and management. Furthermore, an Entity Relationship Diagram (ERD) representing the tables' structure will be generated using a tool like ("https://www.quickdatabasediagrams.com/") to offer a visual depiction of the database.

ERD Diagram:

![ERD Diagram]("C:\Users\bella\Desktop\Crowdfunding_ETL\ERD_Diagram.png")

# Findings:

* The category "theater" exhibited the highest success rate, while the categories "Journalism" and "Games" showed comparatively lower success rates. Within the subcategories, "plays" had the highest number of successful projects, achieving 187 successes out of 319 projects, indicating a relatively high success rate.

* In terms of the sum of pledged amounts, the "theater" category led with a total of $15,763,227. Following closely were categories such as "film & video," "music," "publishing," and "technology," showcasing greater crowdfunding support compared to categories like "journalism" and "games."

* On a global scale, the United States (US) demonstrated the highest sum of pledged amounts, reaching $31,409,336. Canada (CA) followed with $2,812,788, and the United Kingdom (GB) secured the third position with $2,192,705. These figures highlight significant crowdfunding activity in these countries.

# Conclusions:

In general, the data indicates that the categories "theater," "film & video," and "music" exhibit the highest success rates in crowdfunding projects, while the categories "journalism" and "games" show relatively lower success rates. Similarly, subcategories such as "plays," "photography books," "web," "food trucks," and "wearables" display relatively high success rates, while "audio," "science fiction," and "world music" have lower success rates.

Furthermore, the United States, Canada, and the United Kingdom emerge with the highest total sums of pledged amounts, underscoring greater crowdfunding support in these countries compared to others.