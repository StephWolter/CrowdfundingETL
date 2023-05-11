# CrowdfundingETL

### In a team of 4, build an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform Crowdfunding data. Create four CSV files and use the CSV file data to create an ERD and a table schema. Upload the CSV file data into a Postgres database.

## SetUp

* Create Repository in GitHub.
[CrowdfundingETL repository](https://github.com/StephWolter/CrowdfundingETL.git)

* All clone CrowdfundingETL repository to personal computers, then created the folder structure:


            * Resources                             # main folder for resources and outputs
            * Individuals           
                * ETL_Mini_Project_Javon.ipynb      # Javon's workbook
                * ETL_Mini_Project_Ochirbat.ipynb   # Ochirbat's workbook
                * ETL_Mini_Project_Samson.ipynb     # Samson's workbook
                * ETL_Mini_Project_Stephanie.ipynb  # Stephanie's workbook
            * ETL_Mini_Project.ipynb                # Final concatanated version
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
