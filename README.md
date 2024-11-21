# Power-BI-dashboard-tracking-key-metrics-of-a-supply-chain-Power-BI-Data Analyst

In this project I built a Power BI dashboard tracking key metrics of a supply chain, such as on-time delivery rates, stock levels, and transportation costs. Integrate data from SQL

Data Analysis Report: Supply Chain Performance
Objective
The purpose of this analysis is to evaluate the performance of a supply chain system using the provided SQL schema and Power BI dashboard structure. The analysis focuses on key metrics such as on-time delivery rates, inventory management, and transportation costs to identify trends, inefficiencies, and areas for optimization.

Database Structure Overview
The SQL script sets up a relational database schema with the following key tables:

Deliveries:
Tracks each delivery with details like delivery date, on-time performance (binary indicator), and transportation cost.
Useful for evaluating delivery performance and cost efficiency.
Inventory:
Contains information on products, including stock levels and warehouse locations.
Supports inventory management and restocking decisions.
Orders:
Records order details, likely including customer information, order value, and fulfillment dates.
Helps analyze demand patterns and order processing efficiency.
Data Model and Dashboard Insights
The Power BI file contains the following elements:

Data Model:

Links the Deliveries, Inventory, and Orders tables to enable cross-functional analysis.
Key relationships likely include:
Order IDs to link orders with deliveries.
Product IDs to connect inventory with orders and deliveries.
Report Layout:

A dashboard likely visualizes:
Delivery Performance: Percentage of on-time deliveries and associated costs.
Inventory Metrics: Stock levels and potential shortages.
Order Trends: Volume of orders and fulfillment rates over time.
Key Performance Indicators (KPIs)
Based on the provided structure, the following KPIs are crucial:

On-Time Delivery Rate:

Proportion of deliveries completed on or before the scheduled date.
Insights: Identify regions or routes with frequent delays.
Transportation Cost Analysis:

Average cost per delivery and trends over time.
Insights: Highlight cost spikes and their causes.
Stock Level Monitoring:

Current inventory levels and frequency of restocking events.
Insights: Optimize inventory turnover to reduce holding costs.
Order Fulfillment Efficiency:

Ratio of completed orders to total orders placed.
Insights: Assess the impact of inventory levels on customer satisfaction.
Potential Insights and Recommendations
Delivery Optimization:

Analyze delayed deliveries to uncover root causes (e.g., specific regions, carriers, or weather patterns).
Consider adopting dynamic route optimization tools.
Cost Reduction:

Focus on high transportation cost routes or carriers and negotiate better rates.
Evaluate the feasibility of alternative transport methods.
Inventory Management:

Monitor low-stock products and forecast demand more accurately.
Implement just-in-time inventory practices for cost savings.
Customer Satisfaction:

Use order and delivery metrics to prioritize high-value customers or regions.
Improve order processing times to enhance reliability.
Conclusion
The supply chain dashboard and underlying database provide robust tools to monitor and improve operational efficiency. By leveraging visual insights and SQL-driven analysis, decision-makers can pinpoint inefficiencies and implement targeted improvements. Further steps include expanding the analysis with actual data trends and iterating on identified opportunities.
