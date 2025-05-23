# Superstore Sales Data Analysis

## Project Overview

This project involves an in-depth analysis of the Superstore Sales dataset to uncover insights into sales performance, customer behavior, and the impact of promotional campaigns. By leveraging data analysis and visualization techniques, the project aims to identify trends, peak sales periods, and provide actionable recommendations for business strategy optimization.

## Dataset

The analysis utilizes the [Superstore Sales dataset](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final), which includes detailed records of sales transactions. Key attributes in the dataset encompass:

- **Order Date**: The date when the order was placed.
- **Ship Date**: The date when the order was shipped.
- **Ship Mode**: The mode of shipment used.
- **Customer Segment**: The market segment to which the customer belongs.
- **Product Category and Sub-Category**: Classification of products sold.
- **Sales**: Revenue generated from the sale.
- **Quantity**: Number of units sold.
- **Discount**: Discount applied to the sale.
- **Profit**: Profit earned from the sale.
- **Region**: Geographic region of the sale.

## Objectives

The primary goals of this analysis are to:

1. **Identify Sales Trends**: Analyze sales data over time to detect patterns and growth trajectories.
2. **Determine Peak Sales Periods**: Pinpoint timeframes with the highest sales volumes.
3. **Assess Impact of Promotional Campaigns**: Evaluate how discounts and promotions influence sales and profitability.
4. **Segment Analysis**: Understand sales performance across different customer segments and regions.
5. **Normalize the Dataset**: Store the dataset in a PostgreSQL database using a normalized schema to improve data integrity and query performance.

## Tools and Technologies

The following tools and libraries were employed in this project:

- **Python**:
  - `pandas`: For data manipulation and analysis.
  - `matplotlib` and `seaborn`: For creating static, animated, and interactive visualizations.
- **Power BI**: For developing interactive dashboards and reports.
- **SQL**: For querying, normalizing and managing data.

## Data Modeling in SQL

As part of the project, the raw dataset was normalized and stored in a PostgreSQL database with the following schema:

### ✅ Normalized Tables

- **`customers`**: Customer ID, Name, Segment
    
- **`locations`**: Postal Code, City, State, Region, Country
    
- **`products`**: Product ID, Name, Category, Sub-Category
    
- **`orders`**: Order & shipment details with foreign keys referencing the other tables
    

### ✅ Constraints

- Primary keys were added to uniquely identify records.
    
- Foreign keys were set up to maintain referential integrity.
    

Example foreign key constraint:

```sql
ALTER TABLE orders
ADD CONSTRAINT fk_customer
FOREIGN KEY ("Customer ID")
REFERENCES customers ("Customer ID");
```


## Methodology

The project was executed through the following steps:

1. **Data Collection and Loading**: Imported the dataset into a Pandas DataFrame for analysis.
2. **Data Cleaning and Preprocessing**:
   - Checked for and handled missing or duplicate values.
   - Converted date columns to appropriate datetime formats.
   - Ensured consistency in categorical variables.
3. **Exploratory Data Analysis (EDA)**:
   - Generated summary statistics to understand data distribution.
   - Visualized sales trends over time using line plots.
   - Analyzed sales performance across different regions and customer segments.
   - Examined the relationship between discounts and profit margins.
4. **Time Series Analysis**:
   - Resampled data to identify monthly and yearly sales patterns.
   - Applied moving averages to smooth out short-term fluctuations and highlight longer-term trends.
5. **Impact Assessment of Promotional Campaigns**:
   - Compared sales during promotional periods against non-promotional periods.
   - Evaluated the profitability of discounted sales versus regular sales.
6. **Data Visualization and Reporting**:
   - Created visualizations to present findings clearly.
   - Developed an interactive dashboard in Power BI to allow dynamic exploration of the data.

## Key Findings

- **Sales Trends**: Identified a consistent upward trend in sales over the years, with notable spikes during holiday seasons.
- **Peak Sales Periods**: Determined that November and December are peak sales months, likely due to holiday shopping.
- **Promotional Impact**: Found that while discounts led to increased sales volumes, they did not always correlate with higher profit margins, indicating the need for strategic discounting.
- **Regional Performance**: Observed that certain regions outperformed others in terms of sales and profit, suggesting targeted marketing strategies could be beneficial.

## Visualizations

![output](https://github.com/user-attachments/assets/23bcfe5b-7610-4fe6-8760-a5e12d364f4d)


*Figure 1: Sales Trend Over Time*

![output0](https://github.com/user-attachments/assets/008953d7-5eaf-44eb-9af5-fa3cad8eaf98)


*Figure 2: Profit vs. Discount Analysis*

![image](https://github.com/user-attachments/assets/b502822a-e774-4cab-a167-40f185ee582a)

*Figure 3: Normalized database*

## Conclusion

Through comprehensive analysis of the Superstore Sales dataset, valuable insights were gained into sales dynamics, customer behavior, and the effectiveness of promotional strategies. These findings can inform data-driven decisions to enhance business performance and strategic planning.

## How to Use This Repository

1. **Clone the Repository**: Clone this repository to your local machine using `git clone https://github.com/abrarzihan1/superstore-sales-analysis.git`.
2. **Set Up the Environment**: Ensure that Python and the required libraries (`pandas`, `matplotlib`, `seaborn`) are installed.
3. **Access the Dataset**: Download the dataset from the provided link and place it in the designated folder within the repository.
4. **Run the Analysis**: Execute the Jupyter Notebook to perform the analysis and generate visualizations.
5. **Explore the Dashboard**: Open the Power BI dashboard file to interact with the data visualizations.

## Acknowledgements

Special thanks to [Vivek](https://www.kaggle.com/vivek468) for providing the Superstore Sales dataset on Kaggle.

