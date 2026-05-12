# NexTech Direct Analysis
## Client Background
NexTech Direct is a US-based e-commerce retailer that specializes in consumer electronics. Operating across multiple major regions globally, the company sells a variety of popular electronics, while running a loyalty program aimed at driving repeat purchases and long-term customer retention. This analysis will be covering NexTech Direct’s underutilized data of sales performance, refund trends, and loyalty program effectiveness from 2019 to 2022.

## Business Questions
**What were the overall trends in sales from 2019-2022?**
- What were the monthly and yearly order counts, AOV, and total revenue throughout this period?
- How did sales performance differ by month and region? and any seasonality?
- Which products performed the best and worst?

**Should NexTech continue investing in its loyalty program?**
- Did loyalty members generate higher AOV compared to non-members?
- Did loyalty members order more frequently?
- How did loyalty membership and its revenue share evolve between 2019 and 2022?
- How was loyalty membership distributed across regions and products?
- What was the refund behavior of loyalty members vs. non-members

**What were the refund trends across Apple products?**
- What were the overall refund rates and refund counts for Apple products?
- How did AOV compare across individual Apple products?
- Did refund behavior change year over year?

## Key Insights
### Overview
From 2019-2022, just over 108k total orders generated $28M in gross revenue over this 4-year timespan. A key year was 2020, when a spike in sales led to a 160% increase in revenue year-over-year and a 2x growth in order volume, driven by increased online consumer demand amidst the COVID-19 pandemic. However, this momentum proved to be unsustainable through 2021-2022 with key metrics showing decreases year-over-year: total revenue by 46%, order volume 40%, and average order value (AOV) by 10%. While this decline can be linked to society slowly coming out of lockdown, the next sections will be diving into other contributing factors and point out potential areas that could be improved upon.

<p align="center">
  <img width="800" alt="image" src="images/Sales_Overview.png">
</p>

### Seasonality and Geography

### Product Trends
The company's catalog was anchored by 4 primary products: Gaming Monitors, Laptops, AirPods, and Charging Cables, which together accounted for over 97% of the revenue and over 89% of the order volume across all 4 years. A clear revenue-volume disconnect emerged between Laptops and Charging Cables specifically, as the Laptops consistently contributed a disproportionately high share of revenue (26-42%) relative to their order volume (4-9%), reflecting their high price point and positioning them as a low-frequency, high-AOV product. 

<p align="center">
  <img src="images/percent_revenue_graph.PNG" width="600">
</p>

On the other hard, Charging Cables showed the opposite pattern with a notably higher share of order volume (17-26%) than revenue (1-3%), marking them as a high-frequency, lower-AOV product. Gaming Monitors and AirPods kept a steady and consistent contributors in both areas throughout the timeframe, while the Other category saw gradual uptick in revenue and volume by 2022, hinting at a slow shift towards the less mainstream products.

<p align="center">
  <img src="images/percent_volume_graph.PNG" width="600">
</p>

## Loyalty Program
### Member Value
Across all 3 core sales metrics: average overder value (AOV), total revenue, and order volume, loyalty member show a clear and accelerating value advantage over the period of 2019-2022.

<p align="center">
  <img src="images/Revenue Loyalty.PNG" width="600">
</p>

In 2019, loyalty membership had very minimal effects as they represented only 2K orders and $415K in total revenue. This being compared to their non-loyalty counterparts with 14.8K orders and $3.45M, even outpacing AOV with $233 (non-members) versus $207 (members). As expected, the program started off small and its members were not yet outspending the broader customer base.

<p align="center">
  <img src="images/Order Volume loyalty.PNG" width="600">
</p>

By 2021, the program had enough time to scale, with second-order effects beginning to emerge. Loyalty revenue ($4.87M) surpassed non-loyalty revenue ($4.26M) for the first time, and order volume followed the same trend with 19.5K member orders versus 16.3K non-member. This crossover across revenue and volumes signals that the program reached a meaningful inflection point, shifting loyalty members from a small minority to a dominant contributor of NexTech Direct's sales. 

<p align="center">
  <img src="images/AOV loyalty.PNG" width="600">
</p>

The AOV trajectory reinforces this narrative, non-loyalty AOV peaked in 2020 at $345 before declining to $214 by 2022, while loyalty AOV grew steadily from $207 to $249 before settling at $245 in 2022, finally surpassing non-loyalty for the first time. All core metrics show that members are not only ordering more frequently, but they are even spending more per order.

### Program Growth & Distribution
Between 2019 and 2022, the loyalty program went through a transformation from a marginal asset to the majority catalyst of NexTech Direct's revenue. In 2019, loyalty members accounted for just 11% of total revenue. By 2021 the figure had ballooned to 53%, holding steady at 55% through 2022, thus showing that the program is proving to be a reliable assest rather than a simple one-year anomaly.

<p align="center">
  <img src="images/loyalty revenue percent year.PNG" width="600">
</p>

The program's reach was consistent across all four major regions. APAC, EMEA, LATAM, and NA all fell within a narrow 37-41% loyalty share band, with no specific region standing out amongst the others. This uniformity is a positive signal showing that the program's growth was organic and spread out evenly rather than concentrated in one market.

<p align="center">
  <img src="images/loyalty revenue percent region.PNG" width="600">
</p>

At the product level, loyalty share turned out to be fairly more volatile. AirPods carried the highest loyalty concentration at 56%, followed by Gaming Monitors at 43%. Laptops showed a notable loyalty share at a low 22%, which could be worth monitoring knowing they are NexTech's highest AOV-product. Charging Cables sat at just 14% loyalty share, which is consistent with their low-cost, high-volume nature as a product.

<p align="center">
  <img src="images/loyalty revenue product percent.PNG" width="600">
</p>


### Loyalty Refund Behavior
While loyalty members demonstrated positive purchasing behavior across AOV, volume, and revenue contribution, their refund rates consistently surpass those of non-members throughout the 2019-2022 period. In 2019, loyalty members refunded at 7.8% compared to 5.4% for the non-members. That gap widened significantly in 2020, where loyalty refund rates peaked at 12.9% versus 6.9% for non-loyalty, nearly double. By 2021 both segments declined, with loyalty at 5.1% and non-loyalty at 1.8%.

<p align="center">
  <img src="images/Refund Rate Loyalty vs Non-Loyalty.PNG" width="600">
</p>

It's worth noting that the 2019 loyalty refund rate is based on a relatively small sample size, reflecting how nascent the membership program still was at that point. As membership scaled through 2020 and 2021, order volumes between segments became more comparable, making the rate gaps in those years the most meaningful signals in the data. The raw refund counts tell the same story, where loyalty refunds grew from roughly 150 in 2019 to over 1,600 in 2020, while non-loyalty refunds grew more modestly from roughly 800 to 1,400 over the same period.

<p align="center">
  <img src="images/Refund Count Loyalty vs Non-Loyalty.PNG" width="600">
</p>

## Apple Refunds
### Refund Overview



### Product Refund Behavior


## Recommendations
This elevated refund behavior among loyalty members is a nuance worth monitoring but not a disqualifying finding. Loyalty members still generate higher AOV and greater revenue contribution even accounting for returns, suggesting the net value of the program reminds positive. However, investigating why loyalty members refund at higher rates would a meaningful next step for NexTech Direct. This could include finding out if these refunds are driven by product category, region, or program incentives and structure.


## ERD
<img width="800" alt="image" src="https://github.com/user-attachments/assets/50f3f1e3-7ad5-47c2-a7f3-584ef6874e28" />
