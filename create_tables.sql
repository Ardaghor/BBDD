CREATE DATABASE dreamhouse;

\connect dreamhouse;

CREATE TABLE "branch" ("branch_id" VARCHAR(5) NOT NULL, 
"street" VARCHAR(25) NOT NULL, 
"city" VARCHAR(15) NOT NULL, 
"postcode" VARCHAR(19) NOT NULL, 
Constraint "branch_pkey" Primary Key ("branch_id"));

CREATE TABLE "staff" ("staff_id" VARCHAR(5) NOT NULL, 
"fname" VARCHAR(10) NOT NULL, 
"lname" VARCHAR(10) NOT NULL, 
"position" VARCHAR(15) NOT NULL,
"sex" VARCHAR(10) NOT NULL,
"dob" VARCHAR(10) NOT NULL,
"salary" NUMERIC NOT NULL,
"branch_id" VARCHAR(5) NOT NULL, 
Constraint "staff_pkey" Primary Key ("staff_id"));

CREATE TABLE "property4rent" ("property_id" VARCHAR(5) NOT NULL, 
"street" VARCHAR(25) NOT NULL, 
"city" VARCHAR(15) NOT NULL, 
"postcode" VARCHAR(100) NOT NULL, 
"type" VARCHAR(5) NOT NULL,
"rooms" VARCHAR(10) NOT NULL,
"rent" NUMERIC NOT NULL,
"owner_id" VARCHAR(5) NOT NULL,
"staff_id" VARCHAR(5) NULL,
"branch_id" VARCHAR(5) NOT NULL,
Constraint "property_pkey" Primary Key ("property_id"));

CREATE TABLE "client" ("client_id" VARCHAR(5) NOT NULL, 
"fname" VARCHAR(10) NOT NULL, 
"lname" VARCHAR(10) NOT NULL, 
"telnumber" VARCHAR(20) NOT NULL, 
"pref_type" VARCHAR(10) NOT NULL,
"max_rent" VARCHAR(15) NOT NULL,
Constraint "client_pkey" Primary Key ("client_id"));

CREATE TABLE "privateowner" ("privateowner_id" VARCHAR(5) NOT NULL, 
"fname" VARCHAR(25) NOT NULL, 
"lname" VARCHAR(15) NOT NULL, 
"address" VARCHAR(100) NOT NULL,
"telnumber" VARCHAR(20) NOT NULL, 
Constraint "privateowner_pkey" Primary Key ("privateowner_id"));

CREATE TABLE "viewing" ("client_id" VARCHAR(5) NOT NULL, 
"property_id" VARCHAR(5) NOT NULL, 
"viewdate" DATE NOT NULL, 
"comment" VARCHAR(30) NULL, 
Constraint "client_prop_pkey" Primary Key ("client_id", "property_id"));

CREATE TABLE "registration" ("client_id" VARCHAR(5) NOT NULL, 
"branch_id" VARCHAR(5) NOT NULL, 
"staff_id" VARCHAR(5) NOT NULL, 
"date_joined" VARCHAR(10) NOT NULL, 
Constraint "client_branch_pkey" Primary Key ("client_id", "branch_id")); 

