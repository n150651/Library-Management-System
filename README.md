# Library Management System (SQL)

## Overview
This is a backend database project designed to manage a library system. It handles book inventory, member management, and loan tracking using a relational database structure.

## Features
- **Relational Design:** Normalized tables for Books, Members, and Loans.
- **Data Integrity:** Uses Foreign Keys to enforce relationships.
- **Automation:** Includes Stored Procedures for checking out books.
- **Reporting:** Complex SQL queries using JOINs and Aggregations to track user activity.
- **ACID Compliance:** Transactions used for critical data updates.

## How to Run
1. Create the database:
   ```sql
   CREATE DATABASE library_db;
