# Vrinda-store-sales-analysis

## Table of Content
- [Description](#description)
- [Project Aim](#project-aim)
- [Business questions](#business-questions)
- [Aim of the analysis](#aim-of-the-analysis)
- [Processes](#processes)
- [Insights](#insights)
- [Recommendations](#recommendations)
- [How to use the dashboard](#how-to-use-the-dashboard)

## Description
This project offers an opportunity to gain hands-on experience in analyzing data using Excel, including data cleaning, exploratory data analysis (EDA), PivotTables, KPI development, and dashboard creation. I used a Vrinda Store e-commerce order dataset to explore patterns in sales, customer demographics, order status, and sales channels across a full year of apparel orders.

Source: [Vrinda Store E-commerce Sales Dataset](https://www.kaggle.com/datasets/vrindaverse22/vrinda-store-2022-sales-dataset)

**VRINDA STORE SALES DASHBOARD**
| Total Orders | Total Sales | Delivery Rate |
|---|---|---|
| 31,047 | ₹21,176,377 | 92.3% |

## Project Aim
The aim of this project is to analyze e-commerce order data and identify the customer, channel, and geographic factors associated with sales performance. The objective of this project is to answer the following question:
- Which customer segments, sales channels, and regions drive the most revenue, and where are the biggest gaps between order volume and successful delivery?

## Business questions
I identified several pressing challenges related to sales performance, presented in bullet points for clarity:
- Declining monthly trend: Sales dropped in the second half of the year without a clear explanation
- Channel concentration risk: Unclear how dependent the business is on any single sales channel
- Order fulfillment losses: Cancellations, returns, and refunds are reducing realized revenue
- Limited customer insight: Lack of clarity on which demographic groups drive the most value

## Aim of the analysis
The primary objectives of this analysis are as follows:
- Clean and prepare order data for analysis
- Data analysis: analyze sales performance across gender, age group, state, and sales channel
- Build an interactive Excel dashboard for business decision-making

## Processes
**Step 1: Data Preparation & Cleaning**
Tools: Microsoft Excel — Power Query, Tables, Formulas

Activities:
- Reviewed the dataset structure and variables (21 fields, 31,047 rows)
- Checked for duplicate Order IDs and validated Customer ID formatting
- Checked for blank/missing values across key fields (Amount, Category, Ship-State)
- Checked data types to ensure numerical (Age, Amount, Qty) and categorical variables were stored appropriately
- Standardized state and channel name formatting for consistency
- Confirmed the cleaned dataset contained no remaining duplicates or blanks requiring correction

**Step 2: Exploratory Data Analysis (EDA)**
Tools: Microsoft Excel — PivotTables, Formulas

Activities:
- Created PivotTables to examine sales and order volume by month, gender, age group, order status, state, and channel
- Calculated the delivery rate using the number of orders with Status = Delivered relative to total orders
- Compared sales value across categories to identify patterns and revenue concentration
- Designed an Excel dashboard to bring the key findings together

## Insights
- **Gender and Spend:** Women account for roughly 64% of total sales value (₹13.56M vs ₹7.61M for men), despite men and women both being present across all age groups. This suggests women are the core revenue-driving customer base.
- **Seasonality:** March was the peak month (₹1.93M, 2,819 orders), while sales trended downward through the second half of the year, bottoming out in November (₹1.62M). This points to a seasonal demand pattern worth planning inventory and promotions around.
- **Order Fulfillment:** 92.3% of orders were successfully delivered (28,641 of 31,047). Returns (1,045), cancellations (844), and refunds (517) combined account for under 8% of orders — a relatively healthy fulfillment rate, though returns are the largest of the three loss categories.
- **Geographic Concentration:** Maharashtra is the top-performing state (₹2.99M), followed by Karnataka (₹2.65M) and Uttar Pradesh (₹2.10M) — the top 3 states alone account for a substantial share of total sales, indicating geographic concentration risk if any one region underperforms.
- **Channel Dependency:** Amazon drives ~35% of all orders, more than any other single channel, followed by Myntra (~23%) and Flipkart (~22%). This level of concentration on one channel is a dependency risk worth monitoring.
- **Age Group and Spend:** Adult women represent the single largest customer segment by order share, notably ahead of teenage and senior segments across both genders.

## Recommendations
- **Plan Around Seasonality:** Since sales peak in March and decline through Q4, the business could investigate the cause of the Q4 slowdown and consider targeted promotions in the historically weaker months (Sep–Nov).
- **Reduce Channel Dependency:** With Amazon responsible for over a third of orders, the business could invest in growing underrepresented channels (Meesho, Nalli, Others) to reduce reliance on any single platform.
- **Investigate Returns:** Returns are the largest source of non-delivered orders. The business could review return reasons by category/size to identify whether sizing, product quality, or expectation-setting is driving them.
- **Deepen the Core Segment:** Since adult women drive the largest share of revenue, the business could consider loyalty programs or targeted marketing aimed at retaining and expanding this segment specifically.
- **Diversify Geographic Reach:** With sales concentrated in the top 3 states, the business could examine why mid-tier states underperform and test targeted regional marketing to reduce geographic concentration risk.

## How to use the dashboard
**Step 1: Download the dashboard**
- Download the `Vrinda_Store_Data_Analysis.xlsx` file from this repository

**Step 2: Open the dashboard**
- Open the `.xlsx` file using Microsoft Excel

**Step 3: Enable editing**
- If prompted, select Enable Editing

**Step 4: Explore the dashboard**
- Use the available filters/slicers to explore sales patterns across gender, age group, state, and channel

**Step 5: Review the results**
- Use the KPIs, charts, and visualizations on the "Mwangi store Report 2022" sheet to understand the key sales patterns identified in the analysis
