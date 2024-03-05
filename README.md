# Sales Data Analysis using Excel and Power BI
### Analyzing and visualizing fictitious sales data for an American company across the US regions using Excel and Power BI

## Introduction
The US regional sales data contain information about sales of 47 products ordered between May 2018 to December 2022. The products are sold across 367 stores located in 48 regions across the States. There are 4 sales channels, 50 customer (farms/companies) and 28 sales team. 

## Stakeholders
These are the people who are interested in the performance, trends, and insights of the sales data, and who can use the analysis to make informed decisions and actions. Some of the possible stakeholders for your sales analysis are -

* Sales managers
* Marketing managers
* Product managers
* Finance managers
* Senior executives

## Objectives

The objectives of the sales analysis are -
* Assess overall sales trends and determine whether growth is occurring.
* Evaluate the effectiveness of the sales strategy.
* Identify the best and worst performing products, channels, teams, and regions.
* Discover the patterns and drivers of sales.
* Forecast future sales and revenue.
* Generate reports and recommendations for improvement and optimization to share with key stakeholders.

## Potential questions to ask:

Asking SMART questions can help us explore and understand the sales data better, and that can lead us to actionable insights and recommendations.

* What are the total sales and revenue for each year, quarter, month, and week? How do they compare to the previous periods?
* What are the sales and revenue breakdown by product, channel, team, and region? How do they compare to each other and to the market share?
* What are the trends and seasonality of the sales data?
* What are the profitability for each product, region, channel and team?
* What are the factors that influence the sales performance, such as price, discount, demand?
* What are the opportunities and challenges for increasing sales and revenue?
* What are the best practices and lessons learned from the sales data?
* How can the sales strategy be improved and optimized based on the sales analysis?

## Important Metrics to measure:
Metrics will help us measure and evaluate the sales performance, and that can provide quantitative and qualitative information about the sales data. Some of the important metrics to use for our sales analysis are -

* Sales volume
* Sales revenue
* Sales growth rate
* Sales mix
* Sales trends
* Profit per product
* Total Revenue
* Year-Over-Year Growth
* Total sales per year/quarter/month
* Total sales per region/state/county/product/channel/teams
* Average order value
* Customer lifetime value
* Sales variance
* Sales forecast accuracy 
* Return on sales

## Tools used

* Excel - For data cleaning and wrangling
* Pivot Table - For analysing data
* Power BI - For visualizing the data

## About the Dataset

The dataset is created by Udit Kumar Chatterjee and is obtained from [data.world](https://data.world/dataman-udit/us-regional-sales-data). It consists of 6 tables, namely-
1. sales_orders_sheet
2. customers_sheet
3. store_locations_sheet
4. products_sheet
5. regions_sheet
6. sales_team_sheet

### Reliability and Originality:
There is no information how the data is collected or preprocessed. Since this dataset has been provided by Coursera in this capstone project we can assume its reliability and originality.

### Comprehensiveness:
The data contains information that may help us find the answer to the key questions.

### Citation:
There is no external citation for this dataset. One can visit [data.world](https://data.world/dataman-udit/us-regional-sales-data) for basic informations.

### Current:
The dataset was created 3 years ago. Clearly it is outdated.

## Data Dictionary

### 1. sales_orders_sheet
| Column Name | Type | Description |
| :--- | :--- | :--- |
| order_number | str | Uniquely identifies each record |
| sales_channel | str | Channel used for sales |
| warehouse_code | str | Warehouse code |
| procured_date | date | Procurement date of the order |
| order_date | date | Order date of the order |
| ship_date | date | Shipping date of the order |
| delivery_date | date | Delivery date of the order |
| currency_code | str | Currency type |
| sales_team_id | int | Sales team id |
| customer_id | int | Customer id |
| store__id | int | Store id |
| product_id | int | Product id |
| order_quantity | int | Quantity of the order |
| discount_applied | float | Percentage of discount applied |
| unit_price | float | Unit price of the order |
| unit_cost | float | Unit cost of the order |

### 2. customers_sheet
| Column Name | Type | Description |
| :--- | :--- | :--- |
| customer_id | int | Customer id |
| customer_name | str | Name of the customer |

### 3. store_locations_sheet
| Column Name | Type | Description |
| :--- | :--- | :--- |
| store__id | int | Uniquely identify each store |
| city_name | str | City of the store location |
| county | str | County of the store location |
| state_code | str | State code of the store location |
| state | str | State of the store location |
| type | str | Type of region to which the store belongs |
| latitude | float | Latitude of the individual store |
| longitude | float | Longitude of the individual store |
| location | text | Coordinates of the store location|
| area_code | int | Area code of the store |
| population | int | Location population |
| household_income | int | Household income in USD of the store location |
| median_income | int | Median income in USD of the store location |
| land_area | int | Land area of the location |
| water_area | int | Water area of the location |
| time_zone | str | Time zone of the location |

### 4. products_sheet
| Column Name | Type | Description |
| :--- | :--- | :--- |
| product_id | int | Uniquely identifies each product |
| product_name | str | Name of the product |

### 5. regions_sheet
| Column Name | Type | Description |
| :--- | :--- | :--- |
| state_code | str | Uniquely identifies each state |
| state | str | US state name |
| region | str | US region of individual state |

### 6. sales_team_sheet
| Column Name | Type | Description |
| :--- | :--- | :--- |
| sales_team_id | int | Uniquely identifies each sales team |
| sales_team | str | Sales person assigned |
| region | str | Operating region of the sales person |

## Data Cleaning

1. Created a backup copy of the dataset.
2. Changed the column names to more consistent names.
    * Changed the sales_team column name to sales_representative. In many organizations, the term "sales team" often refers to a group of sales representatives. Since the `sales_team` column in our `sales_team` sheet contains individual names, those could indeed be the names of sales representatives. However, without more context or information about it, this is just an educated guess.
4. Checked for duplicates using Remove duplicate option and missing values or inconsistent values using filter function.
5. Checked the formatting of the datatypes. Changed the formatting of unit_price, unit_cost and discount_applied from number to currency($).
6. Trimmed for white spaces using TRIM function.
7. Removed redundant columns.
    * currency_code column from sales_orders sheet.
    * area_code,household_income, median_income, land_area, water_area, location from store_location sheet.

## Data Processing

Some Assumptions that I made for performing calculations on this sales data -

1. In many organizations, the term "sales team" often refers to a group of sales representatives. Since the `sales_team` column in our `sales_team` sheet contains individual names, those could indeed be the names of sales representatives. 

2. The term "discount applied" can be interpreted in different ways depending on the context. In your case, if the discount applied is 0.05, it could mean one of two things:

      1. **Percentage Discount**: If the discount applied is a percentage, then 0.05 represents a 5% discount. This means that the discount amount would be 5% of the unit price. You can calculate the discount amount as follows:

    $$\text{Discount Amount} = \text{Unit Price} \times \text{Discount Rate}$$
    $$\text{Discount Amount} = \$1775.5 \times 0.05 = \$88.775$$

      2. **Absolute Discount**: If the discount applied is an absolute value, then 0.05 represents a discount of 5 cents. This is quite small compared to the unit price, and it's unlikely that this is the case given the values you've provided.

From your description, it seems more likely that the discount applied is a percentage (5%). However, you might want to confirm this with the source of your data to be sure. If the discount is indeed 5%, then the discount amount would be \$88.775 as calculated above. The discounted price would then be the unit price minus the discount amount. 

The amount that a buyer needs to pay for purchasing the product after applying the discount and subtracting it from the unit price is called the **Net Price** or **Sale Price**. This is the final price that the customer pays.

To calculate the profit, you should use the **Net Price** (or Sale Price), not the Unit Price. The reason is that the Net Price is the actual amount received from the customer after applying any discounts. 

Here's how you can calculate the profit:

$$\text{Profit} = \text{Net Price} - \text{Unit Cost}$$

In this formula, the Net Price is the price the customer pays after discounts, and the Unit Cost is the cost to produce or acquire the product. The difference between these two amounts is your profit.

## Data Analysis


## Data Visualization


## Results


## Recommendations:


## Limitations


## References

* [US Regional sales data](https://data.world/dataman-udit/us-regional-sales-data)
