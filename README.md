# Predictive Analysis of US Regional Sales Data using Excel, Power BI, and R

![Banner Github](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/563a5812-f105-453d-97ca-0d02dc553d4d)

## Introduction:
The dataset on regional sales in the US for a certain fictional company encompasses sales details for 47 distinct products spanning from May 2018 to December 2022. These products have been marketed through a network of stores distributed over 4 regions and 48 cities within the US. 

In this analysis, I will employ Microsoft Excel and Power BI to probe into the data, utilize Pivot Tables and Data Visualization, and apply R Programming Language for sales forecasting.

## Objectives:

The objectives of the sales analysis are -
* Assess overall sales trends and determine whether growth is occurring.
* Evaluate the effectiveness of the sales strategy.
* Identify the best and worst performing products, channels, teams, and regions.
* Discover the patterns and drivers of sales.
* Forecast future sales and revenue.
* Generate reports and recommendations for improvement and optimization to share with key stakeholders.

## Stakeholders:
These are the people who are interested in the performance, trends, and insights of the sales data, and who can use the analysis to make informed decisions and actions. Some of the possible stakeholders for this analysis are -

* Sales managers
* Marketing managers
* Product managers
* Finance managers
* Senior executives

## Metrics to measure:
Metrics will help us measure and evaluate the sales performance, and that can provide quantitative and qualitative information about the sales data. Some of the important metrics to use for our exploratory data analysis are -

* Sales volume - The number of units of a product or service sold.
* Sales revenue/ Total Revenue - The total amount of money received from selling goods or services. It's calculated as `Sales Revenue = Sales Volume * Selling Price`.
* Profit per product - The difference between the selling price and the cost of a product. It's calculated as `Profit per Product = Selling Price - Cost of Goods Sold`.
* Total sales per year/quarter/month - The total sales volume or revenue during a specific time period.
* Total sales per region/state/county/product/channel/teams - The total sales volume or revenue for a specific category.

## Tools used:

* Excel - For data cleaning and wrangling
* Pivot Table - For analyzing data
* Power BI - For visualizing the data
* R Programming Language - For Sales Forecasting

## About the Dataset:

The dataset is created by Udit Kumar Chatterjee and is obtained from [data.world](https://data.world/dataman-udit/us-regional-sales-data). It contains 6 tables, namely-
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

## Data Dictionary:

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

## Data Cleaning:

1. Created a backup copy of the dataset.
2. Changed the column names to more consistent names.
    * Changed the sales_team column name to sales_representative.
3. Checked for duplicates using Remove duplicate option and missing values or inconsistent values using filter function.
4. Checked the formatting of the datatypes. Changed the formatting of unit_price, unit_cost and discount_applied from number to currency($).
5. Trimmed for white spaces using TRIM function.
6. Removed redundant columns.
    * currency_code column from sales_orders sheet.
    * area_code, land_area, water_area, location from store_location sheet.

## Data Processing:

### Some Assumptions for performing calculations on this data -

1. In many organizations, the term "sales team" often refers to a group of sales representatives. Since the `sales_team` column in our `sales_team` sheet contains individual names, those could indeed be the names of sales representatives. However, without more context or information about it, this is just an educated guess.

2. The term "discount applied" is a bit vague. In our case, if the discount applied is 0.05, it could mean one of two things:

    * **Percentage Discount**: If the discount applied is a percentage, then 0.05 represents a 5% discount. This means that the discount amount would be 5% of the unit price. One can calculate the discount amount as follows:

    Discount Amount = Unit Price * Discount Rate

    Discount Amount = $1775.5 * 0.05 = $88.775
   
    * **Absolute Discount**: If the discount applied is an absolute value, then 0.05 represents a discount of 5 cents. This is quite small compared to the unit price, and it's unlikely that this is the case given the values in our dataset.

Therefore I am treating the discount applied (or discount rate) as percentage discount which corresponds to values 5%, 7.5%, 10%, 15%, 20%, 30% and 40% discount.

### New columns/attributes for performing calculations

In order to perform sales data analysis, I created some columns based on the columns already present in the sales_order_sheet. These are -

* *order_duration(days)* - This feature can be calculated by subtracting the order_date from the delivery_date, then changing the formatting to General. It can indicate how long it takes for an order to be delivered, which can affect customer satisfaction and loyalty.

   `order duration = delivery date - order date`

* *lead_time (days)* - It is the number of days between procurement and delivery for each order. In Excel sheet, I substracted procurement date from delivery date and formatting the result in General.

   `lead_time = delivery date - procurement date`
  
* *discount_amount* - A discount has been offered when the price of an item is reduced and sold. The term "discount percentage" or "discount rate" refers to the price reduction represented as a percentage.

   `discount amount = unit price x discount rate`

* *net_price* - The amount that a buyer needs to pay for purchasing the product after applying the discount and subtracting it from the unit price is called the **Net Price** or **Sale Price**. This is the final price that the customer pays.

   `net price = unit price - discount amount`

* *profit(gross)* - In general, the profit is defined as the amount gained by selling a product, which should be more than the cost price of the product.

   `Profit = (Net Price - Unit Cost) x order quantity`

* *revenue* - Revenue is typically calculated by multiplying the price of a product by the quantity sold.

   `Revenue= Price per unit × Number of units sold`

  Since the dataset includes discounts, I should take them into account when calculating revenue. The formula would be:

   `Revenue= (Unit Price−Discount) × Quantity Sold = net price x quantity sold` 

### Adding New Columns

I extracted the month and year from the order date for future calculation and visualization using MONTH and YEAR function. The MONTH function returned numerical values for each month (1-12). So, using TEXT function, I converted the number into month name. The function is - =TEXT(F41*29, "mmmm").


### Merging columns from other datasets

Our working data is the sales_order_sheet and along with the quantitative data(cost, profit, quantity etc), we also need qualitative data (e.g., product name, sales representative, region, customer name etc). To merge the sales_order_sheet with other sheets (e.g products, sales persons, region and customers) I used VLOOKUP. I incorporated the following columns into my final sales dataset -

* customer_name from *customer_sheet*
* sales_representative from *sales_team_sheet*
* city from *store_locations_sheet*
* county from *store_locations_sheet* 
* state from *store_locations_sheet*
* region from *region_sheet*
* product from *product_sheet*

### Removing redundant columns

Now that we have all the required columns we need to analysis the sales data, I removed the following columns that are not important for the analysis to keep our dataset clean and less cumbersome to manage-
* warehouse_code
* customer_id
* product_id
* sales_team_id

After cleaning and preprocessing the data, the final dataset contain 7991 rows and 24 columns namely - order_number, sales_channel, order_date, order_month, order_year, lead_time (days), order_duration(days), salesperson, customer, store_id, city, county, state, region, product, order_quantity, discount_applied, unit_price, unit_cost, discount_amount, net_price, revenue and profit.

## Data Analysis:

The objective here is to understand the current state of sales by identifing the best and worst performing products, channels, teams, and regions. We'll primarily look into *revenue*, *profit* and *quantity demanded* metrics. 

### Seasonal patterns:

* How has the **sales revenue trended over time**?
   
   ![sales by years](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/5153f989-9735-4eb1-97b8-22944b62f6e9)

   There is 62.87% increase in revenue from 2018 to 2019, but only 1.19% increase from 2019 to 2020.

* Do sales exhibit **seasonal trends**? For example, are there spikes during holidays or specific months?
  
   ![yearly rev](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/095dd76b-c2a7-4039-8897-ff8e2098aea5)

From this line chart we can notice some seasonalities among 3 years.

* **2018**: Revenue escalates from May through August, then diminishes in October. A resurgence in revenue occurs from October to December.

* **2019**: A decline in revenue is observed from January to February, stabilizing in March. A rise in April is followed by a gradual decrease until July. Revenue ascends again in August, falls in September and October, and climbs in November, only to fall once more as December concludes the year.

* **2020**: Revenue consistently falls from January to March, then recovers until May. A drop is seen in June, with July marking the peak revenue for 2020, which then declines around September. A slight increase in October is followed by a stable revenue pattern for the remainder of the year.

Regarding seasonal patterns, it appears that:

- The mid-year months, particularly **May to August**, are generally associated with higher revenue, which could be linked to summer season promotions or events.
- There's a noticeable dip in **October** across all three years, suggesting a potential seasonal downturn during this period.
- The end-of-year months, **November and December**, often show an increase in revenue, likely due to holiday shopping and year-end sales events.
   
### Products:

* Which products are the **best sellers** and **worst sellers** in terms of **revenue**?
  
   ![total rev and profit by pdt](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/5561b4bb-2b12-415f-a799-db419cbdc855)

   It appears that Accessories, Rugs, and Platters have generated the highest total revenue, while Bedroom Furniture, Bean Bags, and Pillows have generated the lowest total revenue.

   ![pdt breakdown by rev and year](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/71cf4cb4-5fcc-412a-8686-ce6c40428f57)

   If we look closer at the change in revenue over the years, we can identify 23 products that generated high revenue in 2020 compared to previous years. These are Accessories, Bakeware, Bar Tools, Basketball, Bean Bags, Bedroom Furniture, Cocktail glasses, Collectibles, Dining Furniture, Dinnerware, Festive, Floral, Furniture Cushions, Outdoor decor, Outdoor furniture, serve ware, Table linens, TV and Video, Vases, Wall covering, Wall Frames, Wine Storage and Wreaths.

   The rest 24 products produced lower revenue in 2020 compared to 2019. 

* Are there any products that consistently **underperform** in terms of quantity and revenue?

   Ornaments and Sculptures have produced revenue lower than both years.

### Companies:

* What are the top 10 companies in terms of overall **revenue**?

   ![top 10 company table](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/03e6bea2-b5d2-4ba2-b699-74894310d5a3)

* What are the least 10 companies in terms of overall **revenue**?

   ![bottom 10 company](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/f9d3085b-b8ca-4621-b963-a3cff9164e74)

   Medline, Apotheca, Ltd, and Pure Group have generated the highest revenue, while Avon Corp, WakeFern, and Wuxi Group are at the bottom.

   The bar chart below illustrates product revenues, differentiating between those exceeding the average revenue per company (highlighted in orange) and those falling below it (depicted in peach). Notably, over 50% of the total customers generate revenue below the average, which stands at approximately $1,462,869.

   ![rev by customers](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/29474ee2-f586-4e43-a0f1-1000bb8a0853)

### Salesperson:
   
* Who are the high and low performing salesperson in terms of **total revenue generated** and **number of sales**?
  
   ![total rev and sales by salesperson](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/c6520e5c-4bb0-479e-affc-42bdea54de83)

   Donald Reynolds, George Lewis, and Joshua Little are the top three salespeople in terms of total revenue generated. Todd Roberts(340), Shawn Wallace(316) and George Lewis(315) are the top 3 salesperson with highest number of sales closed.
   
   Joshua Bennett, Shawn Torres, and Carlos rank lowest in terms of total revenue.

   ![avg sales and sales by salesperson](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/b5f8ff3f-8099-4de9-9101-b6ee2d0749cd)

   In terms of the highest average revenue, Donald Reynolds, Keith Griffin, and Joshua Little lead. Shawn Wallace, Todd Roberts, and Shawn Torres are the least performing in terms of average revenue.
     
### Regions:

* Which **regions** exhibit the highest and lowest sales performance?

   ![regional rev](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/95ea6981-36c4-4457-b9f0-4a2a5a4040b5)

* Are there any **regional variations** in demand or customer preferences?
      
   ![regional demand](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/fe525d49-9a45-452e-a16c-17e51f15d264)
  
* Which **states** exhibit the highest and lowest sales performance?

   ![Top 10 states](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/b6ad7a69-60c4-4e64-816e-178c9a4c946f)
   ![bottom 10 states](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/63c7cb62-d0c1-4aeb-bfca-26e976563798)

  The states with the highest performance are California (20.76%), Texas (10.10%), Illinois (7.88%), Florida (7.41%), and New York (4.84%). Conversely, Hawaii (0.2%), South Dakota (0.19%), and Arkansas (0.13%) are among the lowest-performing states.

* Which cities exhibit the highest and lowest sales performance?
  
   ![top 10 cities](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/e6fac995-8333-4179-9b6a-d458acd1af12)
   ![bottom 10 cities](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/1fb85f90-d6b1-4bc3-9953-673c07da3260)

* Are there any **correlations** between regional factors (e.g., population density, economic indicators) and sales performance?

   1. **Population Density**:

   ![relation between population and revenue](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/d7f9ae90-922f-494b-9966-38f62118bb65)

   Areas with higher population density tend to have more potential customers, leading to increased sales. The correlation between revenue and population density is evident across all four regions.

  2. **Household Income**: 

  ![relation between avg household income and revenue](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/dfcd8223-601b-466e-b974-266a53f57fdf)

   The economic condition of a region can greatly influence sales. Regions with higher income levels might have more purchasing power, leading to higher sales. 

   Interestingly, our analysis reveals that Kylo's A-Z company is popular among regions with medium to low average household income.

 ### Sales Channel:

   The availability and efficiency of distribution channels in a region can affect sales. Kylo's has 4 sales channels: Instore, Online, Distributor, and Wholesale. And this is what their Sales Channel Distribution looks like -

  ![sales channel donut](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/a40a64ea-5796-43f6-9832-94346be4f66b)

   As can be seen from the donut chart, the In-store channel brought the highest revenue for Kylo's whereas Wholesale brought the least. Let's see how effective these sales channels are across various regions of the United States.

  ![sales breakdown by region](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/4a21d071-e49f-4bef-b178-c4b9b40f91d6)

   In the four regions of the United States, Instore (approximately 14%) and Online (around 10%) channels were the most successful. These channels were particularly dominant in the Western and Southern states compared to the Distributor (about 5%) and Wholesale (roughly 3%) channels.

   However, in the Midwestern and Northeastern regions, the contributions of these channels are more evenly matched.

### Correlations and causality:
    
![corrplot](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/4b88c19a-6006-4d09-b6a3-5b3e98d700a5)

   1. **Revenue and Order Quantity**: This is a logical correlation. The more units of a product sold (order quantity), the higher the total sales revenue. This is because revenue is calculated as `Quantity * Unit Price`. So, if the quantity increases, the revenue will also increase, assuming the unit price remains constant.

   2. **Revenue and Unit Price**: Similarly, the unit price of a product also directly affects revenue. If you sell a product at a higher price, the total revenue increases, assuming the quantity sold remains constant. 

   3. **Revenue and Net Price**: Net price is the actual price the customer pays after applying any discounts. If the net price is high, it means that the discounts given are less, leading to higher revenue.

   4. **Revenue and Profit**: Profit is the difference between the revenue and the cost. If the revenue is high and the cost is controlled, the profit will be high. Therefore, revenue and profit are usually positively correlated.

   As for causal relationships, both order quantity and unit price can be considered as having a causal relationship with revenue because changes in these variables directly cause changes in revenue. However, remember that correlation does not always imply causation, and other factors could be at play. For example, an increase in order quantity could be due to a successful marketing campaign, a seasonal effect, or a variety of other factors.

   Net price and profit, on the other hand, are derived from revenue, so they don't cause changes in revenue but are a result of changes in revenue.

## PowerBI Dashboard:

![Screenshot (382)](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/65f0cb48-d148-4b82-bb75-7718c9c09c65)

## Time Series Analysis:

* Can we **predict future sales** based on historical data and regional patterns?

   If we transform the sales data we can apply time series analysis to predict expected sales trend for the next year. In order to do that I took the following steps -

### 1. Data Transformation:
   - Selected only order_date and revenue column in a different sheet.
   - Using Pivot table aggregated the revenue data for each day of the year. This gave us 945 records of daily average sales data since May 31, 2018 to December 31 2020.
   - Changed the formatting of the order_date and revenue columns to date and numeric respectively. 

### 2. Preliminary Analysis:
   - Installed the Time Series Analysis package 'fpp2' and loaded the data in R workspace.
   - Changed the dataframe into a time series object using ts() routine and set frequency = 12 (for monthly data).
   - Plotted the time series.
   - ![time plot](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/62a8a399-12ae-468d-86c2-af7e44641eb4)
   - Since the data is not stationary, I took first difference of the data to remove the trend. Using autoplot() I plotted the differenced time series plot.
   - ![Differenced data](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/895a81a0-ccc1-48ac-88ca-3d441e342502)
   - Next I investigated the seasonality using ggseasonplot().
   - ![Seasonal plot](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/be14bfff-8bdc-40b4-b14a-b51c8aa545df)
   - The plot shows weak seasonality.

### 3. Fitting different models:
   - In order to find the best fitted model for this data, I chose 3 models and estimated the coefficients, autocorrelation function, residuals' standard deviation and p-value from Ljung Box Test.
   - The 3 models were - Seasonal Naive model, Exponential Smooting and Auto Regressive Integrated Moving Average (ARIMA) model.

   - **Estimates from Seasonal Naive model** -
  
![snaive estimates](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/3cb2ead9-7a50-47ec-870a-f563002781ba)
![Lb estimates for snaive](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/9216a7e8-9270-447d-958d-84d67adbfe2a)
![Residuals seasonal naive method](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/d44e3f8d-39c5-4edd-a9ae-e0d4bea9ed89)

   - **Estimates from Exponential Smoothing model** -

![ets estimates](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/3dbaf92f-9ebe-4a56-9fd4-ccb11ec73f2f)
![lb estimate for ets](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/ec47c4d6-b2e7-4133-844c-dc857da2d1a3)
![Residuals from ETS](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/8b0c8c69-5089-424c-95bf-42d0ff038381)
 
   - **Estimates from ARIMA model** -

![arima estimates](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/1bab7eab-cafd-4c62-91e2-a8532461cedb)
![lb estimate for arima](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/23f4818e-9ba8-4212-b181-243e9ba2a480)
![arima fitting](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/8d84a5aa-3dd0-493b-ac75-1ba1678243cc)
![residuals from ARIMA](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/2f3078e3-b866-4ca4-9fe7-9deaf4e7692f)

### 4. Choosing the best model:
   - To have a good model for prediction we need a model with low standard deviation (data should be grouped around the mean).
   - And the p-value from Ljung-Box test should also be close to zero. A high p-value suggests the data shows no significant autocorrelation and can be considered as random.

* **Autocorrelation and Randomness**:
   - I've observed that there is **no significant autocorrelation** in our data based on the Ljung-Box test results. This suggests that the data behaves randomly.
   - High p-values for all three models further support this randomness.

* **Model Comparison**:
   - Among the three models (Seasonal Naive, Exponential Smoothing, and ARIMA), I've highlighted two important metrics:
     - **Exponential Smoothing Model**: Lowest standard deviation of residuals.
     - **Seasonal Naive Model**: Lowest p-value.
   - These metrics provide valuable insights into the performance of each model.

* **Choosing ARIMA**:
   - Despite the higher deviation and p-value for the ARIMA(0,1,1)(0,1,0) model, my rationale for selecting ARIMA model is:
     - ARIMA accounts for **moving average terms** and **seasonality**, which can capture more complex dynamics.
     - While simpler models may have lower deviation or p-values, the ARIMA model's consideration of these additional factors makes it a better choice for capturing the underlying patterns in our data.

   Since model selection involves a trade-off between simplicity and capturing the true behavior of the data, the decision to prioritize ARIMA's richer modeling capabilities aligns with this trade-off.

### 5. Making the Predictions:

![arima forecast points ](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/15239bcc-8342-43ca-9fb7-e8caa7681ff8)
![forecasts](https://github.com/Arpita-deb/Sales_Data_Analysis/assets/139372731/952804a9-7242-4852-a351-ce209eb40d72)

## Recommendations for Kylo's A-Z Company:

1. They can plan strategically around the mid-year months (May-August) as well as during festive seasons such as November and December by boosting marketing efforts during the low seasons and capitalizing on the high seasons.

2. They need to identify specific low-performing products and analyze the reasons behind their underperformance. They can consider adjusting pricing strategies, offering targeted discounts, or improving product features. On the other hand they can focus on High-Profit Products and allocate resources and marketing efforts toward these products. They can also optimize inventory management for successful products.

3. To do business with various companies and yield maximum revenue, Kylo's can take the following steps:
  
   - **Segmentation**: Kylo's should categorize their customer base based on revenue performance. Identify high-performing companies and low-performing ones.
  
   - **Focus on Profitability**: Rather than spreading resources across all customers, they should concentrate efforts on the highly profitable companies. These are likely to yield better returns.
  
   - **Strategic Partnerships**: They can collaborate closely with the top-performing companies to strengthen relationships and explore growth opportunities.
  
   - **Performance Metrics**: They should establish clear performance metrics for all clients and regularly assess revenue trends and adjust strategies accordingly.

4. To improve salespeople's performance, Kylo's can take the following steps:
  
   - **Training and Development**: If some salespeople are closing fewer but high-value deals, they might have a knack for landing big clients. The company can consider providing them with further training to enhance their skills. Similarly, those with higher average revenue might be good at consistently closing medium-value deals. Identifying the strengths of each salesperson can help in tailoring training and development programs.

   - **Incentive Structure**: They might also review their incentive structure. If it's solely based on the number of sales, salespeople closing high-value deals might feel unrewarded. A balanced incentive structure that considers both the number of sales and the value of sales could be more effective.

   - **Performance Metrics**: They can consider using a combination of metrics like Revenue Efficiency Score (RES), Sales Conversion Rate (SCR), and Customer Acquisition Cost (CAC) to evaluate a salesperson's performance.

   - **Goal Setting**: They can set clear and specific goals for their salespeople while making sure that these goals align with the company's overall objectives. This could be a mix of revenue targets, number of new customers, retention of existing customers, etc.

   - **Regular Feedback**: Provide the salespeople regular feedback to help them understand their areas of improvement and keep them motivated.

5.  To maximize sales across diverse regions, I'd recommend the following: 
  
    - **Target High-Population Density Areas**: Focus on regions with dense populations, as they offer a larger customer base. Allocate resources for marketing, distribution, and customer engagement in these areas.
  
    - **Customize Marketing Efforts**: Tailor marketing campaigns to suit regional preferences.

    - **Leverage Income Insights**: Recognize that Kylo's A-Z company performs well in regions with medium to low average household income. Adjust pricing strategies and product offerings accordingly.

    - **Evaluate Market Saturation**: Analyze the competitive landscape in each region and identify areas with untapped potential or gaps in the market.

    - **Efficient Distribution Channels**: 2. They can focus on enhancing the Distributor and Wholesale channels to increase revenue in Western and Southern regions. They can consider improving all the channels, with a particular focus on In-store and Online channels in the Midwestern and Northeastern regions.

    - **Product Fit Assessment**:  Understand local needs and preferences and adapt product offerings to align with regional requirements.

## Conclusion:
From the analysis of US Regional Sales Data analysis, I've - 
* Looked into the yearly trend of the sales revenue.
* Identified the high and low performing products, channels, salesperson, customers and regions based on total revenue, profit, number of products etc.
* Discover the patterns and drivers of sales.
* Created an interactive Power BI dashboard to access the data in engaging ways.
* Forecasted revenue for the next 12 months.
* Generate reports and recommendations for improvement and optimization to share with key stakeholders.

## Limitations:

Some limitations of this project are- 
1. Due to the fictional nature of the dataset, it is impossible to pinpoint the actual factors driving sales. Real-world insights may differ significantly.
2. The dataset covers only 2.5 years, which might not provide sufficient information to discern long-term trends or seasonal patterns accurately.
3. In the interest of simplicity, I excluded regression and cluster analysis. These techniques could have shed light on the specific attributes influencing sales and customer behavior.

## References:

* [US Regional sales data](https://data.world/dataman-udit/us-regional-sales-data)
* [How to Convert Month Number to Month Name in Excel](https://spreadsheetplanet.com/convert-month-number-to-name-excel/)
* [How to Calculate Correlation Coefficient in Excel (2 Easy Ways)](https://trumpexcel.com/correlation-coefficient-excel/)
* [Time Series Forecasting Example in RStudio](https://www.youtube.com/watch?v=dBNy_A6Zpcc)
