# Marketplace Analysis

## Project Goal

Analyze customer behavior, revenue metrics, and purchase patterns using the Olist Brazilian E-Commerce dataset.

## Dataset

Source: Olist Brazilian E-Commerce Public Dataset

The dataset contains information about customers, orders, payments, and products from a real Brazilian marketplace.

## Tools

- PostgreSQL
- SQL
- TablePlus
- GitHub

## Key Metrics

| Metric | Value |
|----------|----------:|
| Total Orders | 99,441 |
| Unique Customers | 96,096 |
| Total Revenue | 16,008,872.12 |
| Average Order Value | 154.10 |
| Orders per Customer | 1.03 |
| Repeat Customers | 2,997 |
| Repeat Customer Rate | 3.12% |

## Key Findings

### Customer Behavior

- 96.9% of customers made only one purchase.
- Only 3.12% of customers returned for additional purchases.
- The average customer placed 1.03 orders.

### Revenue

- Total marketplace revenue exceeded 16 million.
- Average order value was 154.10.

### Order Fulfillment

- 96,478 orders were successfully delivered.
- Approximately 97% of all orders reached customers.

## SQL Analysis

Current analyses include:

- Basic marketplace metrics
- Customer behavior analysis
- Repeat purchase analysis
- Order status distribution
- Revenue analysis

## Project Structure

```text
marketplace-analysis/
│
├── README.md
│
├── sql/
│   ├── 01_basic_metrics.sql
│   └── 02_customer_analysis.sql
│
├── images/
│
└── notes/
```
## Top Selling Categories

| Category | Items Sold |
|-----------|-----------:|
| Bed Bath Table | 11,115 |
| Health Beauty | 9,670 |
| Sports Leisure | 8,641 |
| Furniture Decor | 8,334 |
| Computers Accessories | 7,827 |

## Top Categories by Revenue

| Category | Revenue |
|-----------|---------:|
| Bed Bath Table | 1,712,553 |
| Health Beauty | 1,657,373 |
| Computers Accessories | 1,585,330 |
| Furniture Decor | 1,430,176 |
| Watches Gifts | 1,429,216 |

### Key Insight

Although Bed Bath Table is the most frequently purchased category, Computers Accessories and Health Beauty generate almost the same revenue with fewer sales, indicating a higher average order value.


## Author

Elina Akhmetzyanova
