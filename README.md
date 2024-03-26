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

* Sales volume - The number of units of a product or service sold.
* Sales revenue/ Total Revenue - The total amount of money received from selling goods or services. It's calculated as `Sales Revenue = Sales Volume * Selling Price`.
* Sales growth rate - The percentage increase in sales over a specific period. It's calculated as `Sales Growth Rate = (Current Period Sales - Previous Period Sales) / Previous Period Sales * 100%`.
* Sales mix - The proportion of each product sold relative to total sales.
* Sales trends - Patterns or tendencies in sales over a period of time.
* Profit per product - The difference between the selling price and the cost of a product. It's calculated as `Profit per Product = Selling Price - Cost of Goods Sold`.
* Year-Over-Year Growth - The percentage change in a variable over a year. It's calculated as `Year-Over-Year Growth = (Current Year Value - Last Year Value) / Last Year Value * 100%`.
* Total sales per year/quarter/month - The total sales volume or revenue during a specific time period.
* Total sales per region/state/county/product/channel/teams - The total sales volume or revenue for a specific category.
* Average order value - The average amount spent each time a customer places an order. It's calculated as `Average Order Value = Total Revenue / Number of Orders`.
* Sales variance - The difference between actual sales and forecasted sales.
* Sales forecast accuracy - The closeness of the forecasted sales to the actual sales. It's calculated as `Sales Forecast Accuracy = 1 - (Absolute Error / Actual Sales)`.

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
There is no information how the data is collected or preprocessed. For the purpose of our analysis, i.e., to study sales dynamics, share the results through a PowerBI dashboard and performing a time series analysis, this dataset is adequate. 

### Comprehensiveness:
The data contains information that may help us find the answer to the key questions. So it is comprehensive.

### Citation:
There is no external citation for this dataset. One can visit [data.world](https://data.world/dataman-udit/us-regional-sales-data) for basic informations.

### Current:
The dataset was created 3 years ago.

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
    * Changed the sales_team column name to sales_representative.
3. Checked for duplicates using Remove duplicate option and missing values or inconsistent values using filter function.
4. Checked the formatting of the datatypes. Changed the formatting of unit_price, unit_cost and discount_applied from number to currency($).
5. Trimmed for white spaces using TRIM function.
6. Removed redundant columns.
    * currency_code column from sales_orders sheet.
    * area_code,household_income, median_income, land_area, water_area, location from store_location sheet.

## Data Processing

### Some Assumptions for performing calculations on this data -

1. In many organizations, the term "sales team" often refers to a group of sales representatives. Since the `sales_team` column in our `sales_team` sheet contains individual names, those could indeed be the names of sales representatives. However, without more context or information about it, this is just an educated guess.

2. The term "discount applied" is a bit vague. In our case, if the discount applied is 0.05, it could mean one of two things:

      1. **Percentage Discount**: If the discount applied is a percentage, then 0.05 represents a 5% discount. This means that the discount amount would be 5% of the unit price. One can calculate the discount amount as follows:

    Discount Amount = Unit Price * Discount Rate

    Discount Amount = $1775.5 * 0.05 = $88.775
   
      2. **Absolute Discount**: If the discount applied is an absolute value, then 0.05 represents a discount of 5 cents. This is quite small compared to the unit price, and it's unlikely that this is the case given the values in our dataset.

Therefore I am treating the discount applied (or discount rate) as percentage discount which corresponds to values 5%, 7.5%, 10%, 15%, 20%, 30% and 40% discount.

### New columns/attributes for performing calculations

In order to perform sales data analysis, I created some columns based on the columns already present in the sales_order_sheet. These are -

* order_duration(days) - This feature can be calculated by subtracting the order_date from the delivery_date, then changing the formatting to General. It can indicate how long it takes for an order to be delivered, which can affect customer satisfaction and loyalty.

   `order duration = delivery date - order date`

* lead_time (days) - It is the number of days between procurement and delivery for each order. In Excel sheet, I substracted procurement date from delivery date and formatting the result in General.

   `lead_time = delivery date - procurement date`
  
* discount_amount - A discount has been offered when the price of an item is reduced and sold. The term "discount percentage" or "discount rate" refers to the price reduction represented as a percentage.

   `discount amount = unit price x discount rate`

* net_price - The amount that a buyer needs to pay for purchasing the product after applying the discount and subtracting it from the unit price is called the **Net Price** or **Sale Price**. This is the final price that the customer pays.

   `net price = unit price - discount amount`

* profit(gross) - In general, the profit is defined as the amount gained by selling a product, which should be more than the cost price of the product.

   `Profit = (Net Price - Unit Cost) x order quantity`

* revenue - Revenue is typically calculated by multiplying the price of a product by the quantity sold.

   `Revenue= Price per unit × Number of units sold`

  Since the dataset includes discounts, I should take them into account when calculating revenue. The formula would be:

   `Revenue= (Unit Price−Discount) × Quantity Sold = net price x quantity sold` 

### Adding New Columns

I extracted the month and year from the order date for future calculation and visualization using MONTH and YEAR function. The MONTH function returned numerical values for each month (1-12). So, using TEXT function, I converted the number into month name. The function is - =TEXT(F41*29, "mmmm").

I also calculated the quarter by using ROUNDUP(MONTH(A2)/3,0) formula.

### Merging of columns from other datasets

Our working data is the sales_order_sheet and along with the quantitative data(cost, profit, quantity etc), we also need qualitative data (e.g., product name, sales representative, region, customer name etc). 
Therefore, using VLOOKUP I merged these columns with our sales_order_sheet -

* customer_name from *customer_sheet*
* sales_representative from *sales_team_sheet*
* city from *store_locations_sheet*
* county from *store_locations_sheet* 
* state from *store_locations_sheet*
* region from *region_sheet*
* product from *product_sheet*

### Removing redundant columns

Now that we have all the required columns we need to analysis the sales data, I removed the columns that are not important for the analysis to keep our dataset clean and less cumbersome to manage. 

* warehouse_code
* customer_id
* product_id
* sales_team_id

After the cleaning and preprocessing the datasets, we end up with a dataset with 7991 rows and 24 columns namely - order_number, sales_channel, order_date, order_month, quarter, order_year, lead_time (days), order_duration(days), salesperson, customer, store_id, city, county, state, region, product, order_quantity, discount_applied, unit_price, unit_cost, discount_amount, net_price, revenue and profit.

## Data Analysis

### 1. Exploratory Data Analysis (EDA):
 The objective here is to understand the current state of sales by identifing the best and worst performing products, channels, teams, and regions. We'll primarily look into *revenue*, *profit* and *quantity demanded* metrics. 

* **Sales Channel:**

- Which **sales channel** contributes the most to the overall revenue?

   ![rev by sales channel](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/a94c1511-ce50-4d1f-98ab-49bda7da3035)

- How effective are different **sales channels** (e.g., online, retail, wholesale) in specific regions?

     ![rev breakdown by channel and region](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/b03721c5-3644-423b-8ee7-0db7e054fa69)

- Are there specific regions where stores perform exceptionally well?

   ![rev by sales channel in cities](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/7971603c-8f6d-4ef0-8859-40dab793a65b)

* **Products:**

- Which products are the **best sellers** in terms of **quantity** and **revenue**?

   ![top 10 pdts rev](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/869df7d6-0b85-43f8-90e8-e98a7f8f3228) 
   ![top 10 pdt quantity](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/5e5944de-e5dc-41db-a731-a2f058082386)

We can see that Accessories, Platters, Cocktail Glasses, Serveware, Rugs and Collectibles are best sellers in terms of both quantity and revenue.
   
- Are there any products that consistently **underperform** in terms of quantity and revenue?

   ![pdt low rev](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/49e238d7-cd1d-4ce0-b3a7-4413aefb9353)  
   ![pdt low quantity](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/6cdbe2b7-de8c-44e1-a5bd-04b6cd1b745e) 

We can see that Pillows, Bean Bags, Bedroom Furniture, Vases, Cookware, Computers, Floor Lamps, Wall Coverings, Outdoor Decor, Audio, Candles and Outdoor Furniture have performed worse both in terms of revenue and quantity sold.

The bar chart shows the products in blue with revenue higher than average revenue($1,556,243) per product and the orange ones lower than average revenue. This gives us an idea of how the products are faring in the marketplace.
  
   ![rev by pdt](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/fb76879e-dbf3-4c4d-83cb-7454e37de631)

 * **Companies:**

- What are the top 10 companies in terms of overall **revenue**?

   ![top 10 company table](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/03e6bea2-b5d2-4ba2-b699-74894310d5a3)

- What are the least 10 companies in terms of overall **revenue**?

   ![bottom 10 company](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/f9d3085b-b8ca-4621-b963-a3cff9164e74)

   The bar chart shows the products in blue with revenue higher than average revenue($1,462,869) per company and the orange ones lower than average revenue.

   ![rev by company](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/2cb51fef-ec16-4757-b656-d8507ab423ee)

* **Salesperson:**
   
- What are the best and worst performing salesperson? How does each **salesperson** contribute to the overall sales revenue?

   ![top 10 salesperson table](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/20679594-b010-4376-bc76-ae6d4112d11b)

   ![bottom 10 salesperson](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/b99b2b9d-9a8b-4fa8-a323-6126737675cb)

   The bar chart shows the products in blue with revenue higher than average revenue($2,612,265) per salesperson and the orange ones lower than average revenue.

   ![rev by sales person](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/bbaab6f9-3fe0-4560-a4d8-8a16de8d331b)
     
* **Regions**:

- Which **regions** exhibit the highest and lowest sales performance?

   ![rev by region](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/29cb7b8a-00f3-49fb-aa7b-0708a2cb1678)
   
   ![sales breakdown by region](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/9e19cf06-d9b6-4241-b301-0149545fd71d)

- Are there any **regional variations** in demand or customer preferences?
      
   ![regional demand](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/fe525d49-9a45-452e-a16c-17e51f15d264)
  
- Which **states** exhibit the highest and lowest sales performance?
     
   ![Map](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/82786913-62fe-40d4-96ce-2582b7b518ee)
   ![top 10 states](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/1be85350-8635-4d35-9b60-97755d390df9)
   ![bottom 10 states](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/03af9e17-1fc9-45ae-a193-3d403e71cc67)


- Which cities exhibit the highest and lowest sales performance?
  
   ![top 10 cities](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/e6fac995-8333-4179-9b6a-d458acd1af12)
   ![bottom 10 cities](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/1fb85f90-d6b1-4bc3-9953-673c07da3260)

- Are there opportunities to optimize channel distribution?

### 5. **Seasonal patterns**:

- How has the **sales revenue trended over time**?
   
   ![sales by years](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/5153f989-9735-4eb1-97b8-22944b62f6e9)

   ![monthly rev](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/dbc8d71e-3c45-4cdf-87b5-05c2223dc6ff)

From the 2 pivot tables we can see 2020 had the highest total profit. And further break down of the years into months shows little variation among the sales, except for the July.
   
   -  Do sales exhibit **seasonal trends**? For example, are there spikes during holidays or specific months?



### 8. **Sales forecasting**:
   
   - Can we **predict future sales** based on historical data and regional patterns?
   
   - What are the expected sales trends for the next quarter or year?


### 10. **Correlations and causality**:
    
   - Are there any **correlations** between regional factors (e.g., population density, economic indicators) and sales performance?

![corrplot](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/4b88c19a-6006-4d09-b6a3-5b3e98d700a5)

1. **Revenue and Order Quantity**: This is a logical correlation. The more units of a product sold (order quantity), the higher the total sales revenue. This is because revenue is calculated as `Quantity * Unit Price`. So, if the quantity increases, the revenue will also increase, assuming the unit price remains constant.

2. **Revenue and Unit Price**: Similarly, the unit price of a product also directly affects revenue. If you sell a product at a higher price, the total revenue increases, assuming the quantity sold remains constant. 

3. **Revenue and Net Price**: Net price is the actual price the customer pays after applying any discounts. If the net price is high, it means that the discounts given are less, leading to higher revenue.

4. **Revenue and Profit**: Profit is the difference between the revenue and the cost. If the revenue is high and the cost is controlled, the profit will be high. Therefore, revenue and profit are usually positively correlated.

As for causal relationships, both order quantity and unit price can be considered as having a causal relationship with revenue because changes in these variables directly cause changes in revenue. However, remember that correlation does not always imply causation, and other factors could be at play. For example, an increase in order quantity could be due to a successful marketing campaign, a seasonal effect, or a variety of other factors.

Net price and profit, on the other hand, are derived from revenue, so they don't cause changes in revenue but are a result of changes in revenue.




![Screenshot (382)](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/65f0cb48-d148-4b82-bb75-7718c9c09c65)

## Results


## Recommendations:


## Limitations


## References

* [US Regional sales data](https://data.world/dataman-udit/us-regional-sales-data)
* [How to Convert Month Number to Month Name in Excel](https://spreadsheetplanet.com/convert-month-number-to-name-excel/)
* [How to Calculate Correlation Coefficient in Excel (2 Easy Ways)](https://trumpexcel.com/correlation-coefficient-excel/)
