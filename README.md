# theLook-eCommerce-Data-Optimization-for-Business-Intelligence
This project transformed Raw Data to Dynamic Visualizations using BigQuery, dbt cloud and power BI for data visualizations and insights.

# Look eCommerce Data Analysis

This repository contains the data analysis project for the Look eCommerce platform, utilizing Google BigQuery for data warehousing, dbt Cloud for data transformation, and Power BI for data visualization and insights.

## Table of Contents

- [Introduction](#introduction)
- [Tech Stack](#tech-stack)
- [Dataset](#dataset)
- [Objectives](#objectives)
- [Data Pipeline](#data-pipeline)
- [Analysis Process](#analysis-process)
- [Results and Insights](#results-and-insights)
- [Conclusion](#conclusion)
- [Dependencies](#dependencies)
- [Contact](#contact)

## Introduction

The Look eCommerce platform aims to improve its data-driven decision-making process by analyzing various aspects of its operations, including sales performance, customer behavior, and product trends. This project leverages Google BigQuery, dbt Cloud, and Power BI to create an efficient and scalable data analysis pipeline.

## Tech Stack

- **Google BigQuery**: Data warehousing and storage.
- **dbt Cloud**: Data transformation and modeling.
- **Power BI**: Data visualization and insights.

## Available Data

### Dataset

You can access the dataset via the following link: [TheLook E-commerce Data](https://console.cloud.google.com/bigquery?p=bigquery-public-data&d=thelook_ecommerce&page=dataset&project=algora-416323&authuser=2&ws=!1m4!1m3!3m2!1sbigquery-public-data!2sthelook_ecommerce)

### Data Source

The data is sourced from BigQuery Public Data.

### Dataset Structure

The TheLook E-commerce database consists of 7 tables:
- `distribution_centers`
- `events`
- `inventory_items`
- `order_items`
- `orders`
- `products`
- `users`


## Dataset

The dataset includes information related to orders, customers, products, and interactions on the Look eCommerce platform. Key columns in the dataset are:
- `order_id`: Unique identifier for each order.
- `customer_id`: Unique identifier for each customer.
- `product_id`: Unique identifier for each product.
- `order_date`: Date when the order was placed.
- `order_amount`: Total amount of the order.
- `customer_details`: Demographic and contact information of customers.
- `product_details`: Information about products such as name, category, and price.

## Objectives

1. **Sales Analysis**: Evaluate overall sales performance, identify top-selling products, and analyze sales trends over time.
2. **Customer Behavior**: Segment customers based on purchasing patterns, analyze customer retention, and identify key drivers of customer loyalty.
3. **Product Trends**: Determine popular product categories, analyze inventory turnover, and identify potential opportunities for product recommendations.

## Data Pipeline

1. **Data Ingestion**: Import raw data into Google BigQuery from various sources (e.g., transactional databases, CSV files).
2. **Data Transformation**: Use dbt Cloud to clean, transform, and model the data stored in BigQuery. This involves creating modular SQL models, testing data quality, and generating documentation.
3. **Data Visualization**: Connect Power BI to BigQuery to create interactive dashboards and reports that provide actionable insights.

## Analysis Process

1. **Data Cleaning**: Preprocess the raw data to handle missing values, duplicates, and inconsistent entries using dbt Cloud.
2. **Data Transformation**: Develop and execute SQL models in dbt Cloud to transform and aggregate data for analysis.
3. **Exploratory Data Analysis (EDA)**: Use Power BI to visualize data distributions, trends, and relationships.
4. **Advanced Analysis**: Perform detailed analysis using DAX (Data Analysis Expressions) in Power BI to calculate key metrics and KPIs.
5. **Reporting**: Create and publish Power BI dashboards that provide insights into sales performance, customer behavior, and product trends.

## Results and Insights

- **Sales Trends**: Identified peak sales periods and top-performing products.
- **Customer Segmentation**: Segmented customers into different groups based on purchasing patterns and identified high-value customer segments.
- **Product Analysis**: Analyzed product performance and identified opportunities for cross-selling and upselling.

## Conclusion

The analysis of the Look eCommerce data using Google BigQuery, dbt Cloud, and Power BI provided valuable insights into sales performance, customer behavior, and product trends. These insights can help inform strategic decisions, improve customer engagement, and optimize inventory management.

## Dependencies

- Google BigQuery
- dbt Cloud
- Power BI

