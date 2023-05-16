-- Delete the table
DROP TABLE contacts;

-- Create a new table employees
CREATE TABLE contacts (
  contact_id INT PRIMARY KEY,
  first_name VARCHAR(15) NOT NULL,
  last_name VARCHAR(15) NOT NULL,
  email VARCHAR(50) NOT NULL
);

-show data in contacts table
SELECT * FROM contacts;

-- Delete the table
DROP TABLE subcategory;

-- Create a new table employees
CREATE TABLE subcategory (
  subcategory_id VARCHAR(10) PRIMARY KEY,
  subcategory VARCHAR(18) NOT NULL 
);

-show data in subcategory table
SELECT * FROM subcategory;

-- Delete the table
-- DROP TABLE category;

-- Create a new table employees
CREATE TABLE category (
  category_id VARCHAR(10) PRIMARY KEY,
  category VARCHAR(18) NOT NULL
);

-show data in category table
SELECT * FROM category;


-- Delete the table
DROP TABLE campaign;

-- Create a new table employees
CREATE TABLE campaign (
  cf_id INT PRIMARY KEY,
  contact_id INT NOT NULL,
  company_name VARCHAR(50) NOT NULL,
  description VARCHAR(70) NOT NULL,
  goal FLOAT NOT NULL,
  pledged FLOAT NOT NULL,
  outcome VARCHAR(10) NOT NULL,
  backers_count INT NOT NULL,
  country VARCHAR(3) NOT NULL,
  currency VARCHAR(3) NOT NULL,
  launched_date VARCHAR(10) NOT NULL,
  end_date VARCHAR(10) NOT NULL,
  category_id VARCHAR(10) NOT NULL,
  subcategory_id VARCHAR(10) NOT NULL,
  FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
  FOREIGN KEY (category_id) REFERENCES category(category_id),
  FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)	
);
									  


-show data in campaign table
SELECT * FROM campaign;
