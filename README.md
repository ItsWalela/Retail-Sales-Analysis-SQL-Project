# Retail-sales-analysis-sql

## Table of Content
- [Description](#description)
- [Project Aim](#project-aim)
- [Business questions](#business-questions)
- [Aim of the analysis](#aim-of-the-analysis)
- [Processes](#processes)
- [Insights](#insights)
- [Recommendations](#recommendations)
- [How to use the scripts](#how-to-use-the-scripts)

## Description
This project offers an opportunity to gain hands-on experience in analyzing data using SQL, including database/table creation, data cleaning, exploratory data analysis (EDA), and business-question-driven querying. I used a retail sales transaction dataset to explore patterns in category performance, customer behavior, and time-of-day sales trends.

Source: *(add the exact Kaggle/source link for this dataset here)*

**RETAIL SALES SUMMARY**
| Total Transactions | Total Sales | Categories |
|---|---|---|
| 1,987 | ₹908,230 | 3 (Clothing, Beauty, Electronics) |

## Project Aim
The aim of this project is to analyze retail transaction data and identify the category, customer, and time-based patterns associated with sales performance. The objective of this project is to answer the following question:
- Which product categories, customer segments, and time periods drive the most revenue, and where should retention or staffing focus be directed?

## Business questions
I identified several pressing challenges related to sales performance, presented in bullet points for clarity:
- Category performance gaps: Unclear which product categories generate the most revenue and repeat customers
- Demand timing: Difficulty knowing which hours and months need the most staffing/inventory support
- Customer concentration: Limited visibility into how much revenue depends on top customers

## Aim of the analysis
The primary objectives of this analysis are as follows:
- Clean and prepare transaction data for analysis
- Data analysis: analyze sales across category, gender, customer, time of day, and month
- Produce a query-based summary that can guide staffing, inventory, and retention decisions

## Processes
**Step 1: Data Preparation & Cleaning**
Tools: MySQL

Activities:
- Created the `retail_sales_tb` table with explicit data types for all 11 fields
- Imported the raw CSV (2,000 rows) into the table
- Identified and excluded 13 rows containing NULL values during import, leaving 1,987 clean records
- Ran a full-column NULL check post-import to confirm no missing values remained
- Confirmed the dataset spans exactly 3 categories: Clothing, Beauty, and Electronics

**Step 2: Exploratory Data Analysis (EDA)**
Tools: MySQL — Aggregate functions, `GROUP BY`, `CASE WHEN`, Window functions

Activities:
- Queried total transaction count and distinct category count
- Calculated total sales value per category
- Calculated average customer age within the Beauty category
- Identified high-value transactions (total sale > 1,000)
- Broke down transaction counts by gender within each category
- Ranked months by average sale value using `RANK() OVER`
- Identified the top 5 customers by total spend
- Counted unique customers per category
- Bucketed transactions into Morning/Afternoon/Evening shifts using `CASE WHEN` on sale time

## Insights
- **Category Performance is Balanced:** Electronics leads narrowly at ₹311,445, followed by Clothing at ₹309,995 and Beauty at ₹286,790 — no single category dominates, meaning the business isn't over-reliant on one product line.
- **High-Value Transactions:** 306 of 1,987 transactions (≈15.4%) had a total sale above ₹1,000, indicating a meaningful but minority share of larger basket purchases worth targeting with upsell offers.
- **Gender Split by Category:** Clothing has the most balanced split (351 male vs 347 female transactions) and is the single highest-volume category overall. Electronics skews slightly male (343 vs 335), while Beauty is the only category that skews clearly female (330 female vs 281 male) — worth noting if Beauty marketing is currently gender-neutral.
- **Evening is Peak Shopping Time:** 1,062 of 1,987 transactions (≈53%) happened in the Evening shift (after 5pm), more than Morning (548) and Afternoon (377) combined — a strong signal for staffing and promotional timing.
- **Customer Concentration:** The top 5 customers by spend range from ₹23,580 to ₹38,440, and the single top customer alone accounts for over 4% of total revenue — worth flagging as a retention priority.
- **Seasonality:** July and February were the two strongest months by average sale value (~₹541 and ~₹536 respectively), suggesting demand isn't purely holiday-driven and may warrant further investigation into what drove those specific months.

## Recommendations
- **Lean Into Evening Demand:** With over half of all transactions happening in the evening, the business could align staffing schedules and evening-specific promotions to this peak window.
- **Protect Top Customers:** Since the top 5 customers represent a disproportionate share of revenue, consider a loyalty or VIP program to reduce the risk of losing high-value customers to competitors.
- **Push High-Value Baskets:** With only ~15% of transactions crossing the ₹1,000 mark, bundling or cross-category promotions (e.g. Beauty + Clothing) could help lift average basket size.
- **Investigate Category-Gender Patterns:** The gender splits per category are close but not identical — worth a deeper look at whether category-specific marketing could grow the underrepresented gender group in each category.
- **Study the July/February Spike:** Understanding what drove average sale value up in these two months (promotions, seasonality, restocking) could help replicate the effect in weaker months.

## How to use the scripts
**Step 1: Download the files**
- Download `retail_sales_analysis_query_script.sql` and the dataset CSV from this repository

**Step 2: Set up the database**
- Run the `CREATE DATABASE` and `CREATE TABLE` statements at the top of the script in MySQL Workbench (or a compatible client)

**Step 3: Import the data**
- Use MySQL Workbench's Table Data Import Wizard (or `LOAD DATA INFILE`) to load the CSV into `retail_sales_tb`

**Step 4: Validate the load**
- Run the row-count and NULL-check queries near the top of the script to confirm 1,987 clean rows

**Step 5: Run the analysis**
- Run each of the 10 numbered business-question queries in order to reproduce the findings above
