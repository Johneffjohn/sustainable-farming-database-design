#  Sustainable Farming Database System

##  Project Overview
This project involves the design and implementation of a relational database system for managing sustainable farming operations. It includes farm management, crop tracking, soil health monitoring, resource usage, and sustainability initiatives. The system was designed using normalization principles and implemented in MySQL Workbench.

##  Objectives
Design a normalized relational database
Build Entity Relationship Diagram (ERD)
Implement SQL database structure
Define relationships using foreign keys
Design RESTful API structure
Evaluate document-based database alternative

##  Technologies Used
MySQL Workbench
SQL
Database Design
ERD Modelling
GitHub

##  Database Structure
Entities
Farm
Crop
SoilHealth
Farm_Crop (junction table)
Sustainability Initiative

##  Key Relationships
One Farm → Many Farm_Crop records
One Crop → Many Farm_Crop records
One Soil record → Many Farm_Crop records
One Initiative → Many Farm_Crop records

##  Key Learning Outcomes
Database normalization (1NF, 2NF, 3NF concepts)
Relationship design using foreign keys
SQL table creation and implementation
Data modelling using ERD

##  REST API design principles
Files in this repository
ERD_Sustainable_Farming.png
create_tables.sql
API_Design.md
README.md

##  Conclusion
This project demonstrates a complete end-to-end relational database design for a real-world agricultural management system.
