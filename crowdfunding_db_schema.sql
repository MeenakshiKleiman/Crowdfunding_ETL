-- Drop tables if they exist
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS campaign;

-- Create contacts table
CREATE TABLE "contacts" (
    "contact_id" INT NOT NULL,
    "first_name" VARCHAR(150) NOT NULL,
    "last_name" VARCHAR(150) NOT NULL,
    "email" VARCHAR(150) NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY ("contact_id")
);




-- Create category table
CREATE TABLE "category" (
    "category_id" VARCHAR(150) NOT NULL,
    "category" VARCHAR(150) NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY ("category_id")
);

-- Create subcategory table
CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(150) NOT NULL,
    "subcategory" VARCHAR(150) NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY ("subcategory_id")
);

-- Create campaign table
CREATE TABLE "campaign" (
    "cf_id" INT NOT NULL,
    "contact_id" INT NOT NULL,
    "company_name" VARCHAR(100) NOT NULL,
    "description" VARCHAR(100) NOT NULL,
    "goal" NUMERIC(10, 2) NOT NULL,
    "pledged" NUMERIC(10, 2) NOT NULL,
    "outcome" VARCHAR(50) NOT NULL,
    "backers_count" INT NOT NULL,
    "country" VARCHAR(50) NOT NULL,
    "currency" VARCHAR(50) NOT NULL,
    "launched_date" DATE NOT NULL,
    "end_date" DATE NOT NULL,
    "category_id" VARCHAR(50) NOT NULL,
    "subcategory_id" VARCHAR(50) NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY ("cf_id"),
	CONSTRAINT "fk_contact" FOREIGN KEY ("contact_id") REFERENCES "contacts" ("contact_id"),
    CONSTRAINT "fk_category" FOREIGN KEY ("category_id") REFERENCES "category" ("category_id"),
    CONSTRAINT "fk_subcategory" FOREIGN KEY ("subcategory_id") REFERENCES "subcategory" ("subcategory_id")

);

SELECT * FROM "contacts";
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM campaign;
