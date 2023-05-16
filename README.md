# CrowdfundingETL

### In a team of 4, build an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform Crowdfunding data. Create four CSV files and use the CSV file data to create an ERD and a table schema. Upload the CSV file data into a Postgres database.

## SetUp

* Create Repository in GitHub.
[CrowdfundingETL repository](https://github.com/StephWolter/CrowdfundingETL.git)

* Create presentation in Google Sheets.
[CrowdfundingETL Presentation](https://docs.google.com/presentation/d/14R9fHIrtTUx4kIVVeg_FwxmEbdF-Q_5tn9ZLMeIHi_s/edit?usp=sharing)

* All clone CrowdfundingETL repository to personal computers, then created the folder structure:


            * Resources                             # main folder for resources and outputs
                * contacts.xlsx                     # given excel data file
                * crowdfunding.xlsx                 # given excel data file
                * campaign.csv                      # output data
                * category.csv                      # output data
                * contacts.csv                      # output data
                * subcategory.csv                   # output data
            * Individuals                           # folder containing individual workbooks      
                * ETL_Mini_Project_Javon.ipynb      # Javon's workbook
                * ETL_Mini_Project_Ochirbat.ipynb   # Ochirbat's workbook
                * ETL_Mini_Project_Samson.ipynb     # Samson's workbook
                * ETL_Mini_Project_Stephanie.ipynb  # Stephanie's workbook
            * ETL_Mini_Project.ipynb                # Final concatanated version
            * crowdfunding_db_erd.png               # erd visualization of schema
            * crowdfunding_db_schema.sql            # postgres schema using output files to make db
            * ReadMe.md

* Examined the brief given on the bootcampspot project 2 page and pulled starter files. 
* All communicated and pushed regularly to git repository.

## Created the Category and SubCategory DataFrames
* Imported pandas, numpy and set option of column width

### Extracted the crowdfunding.xlsx data 
* Pulled data from crowdfunding.xlsx into a dataframe **crowdfunding_info_df** and checked the first 5 entries
* Used .info function to print number of columns, non-null rows, and datatypes 

### Created Category and SubCategory dataframes
* Created **category_id** column that is numbered sequential for the 9 unique categories.
* Created **category** column that split the category from the 'category & subcategory' column using a "/" to split on
* Created **subcategory_id** column that is numbered sequential for the 24 unique subcategories.
* Created **subcategory** column that split the subcategory from the 'category & subcategory' column using a "/" to split on
* Used list comprehensions to create a **category_id** list ['cat1', 'cat2', ...,  'cat9']
* Used list comprehensions to create a **subcategory_id** list ['subcat1', 'subcat2', ...,  'subcat24']
* Created **category_df**
    * Added columns and pulled **category_id** and **category**
* Created **subcategory_df**
    * Added columns and pulled **subcategory_id** and **subcategory**
* Printed both dataframes to csv files in the Resources folder.
* Pushed to git.

## Campaign Dataframe

### Extract and transform the crowdfunding.xlsx Excel data to create a campaign DataFrame has the following columns:
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
* The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame
### Export the campaign DataFrame as campaign.csv and save it to your GitHub repository.


### Create the Contacts DataFrame

* Read the data into from the Excel spreadheet into a Pandas DataFrame
* Create the Contacts DataFrame

## Create a Contacts DataFrame that has the following columns:

* A column named "contact_id" that contains the unique number of the contact person.
* A column named "first_name" that contains the first name of the contact person.
* A column named "last_name" that contains the first name of the contact person.
* A column named "email" that contains the email address of the contact person
* Then export the DataFrame as a contacts.csv CSV file.

**Used Pandas DataFrame to create the Contacts DataFrame Option**

* Iterated through the Contacts Info Dataframe
* Delimted each row by: Contact ID, Name, & Email
* Split the name column by First Name and Last Name
* Reordered the Dataframe to put ContactID, First Name, Last Name, & Email
* Exported the Dataframe to Contacts.csv file

## Created sql schema in Postgres to import Contacts, Campaign, Category, and Subcategory csv files

* Created ERD to generate visual relationship for different databases
* Schema for campaign csv was unique to include foreign keys indicating the relationship of the data from the contacts, category, and subcategory
* Created tables for import of all csv tables
* Imported all data into associated tables
