# Marketplace Analysis (PostgreSQL)

## О проекте

Проект посвящён анализу данных маркетплейса Olist с использованием PostgreSQL.

Цель проекта — провести исследование ключевых бизнес-показателей интернет-магазина, изучить поведение клиентов, определить наиболее прибыльные категории товаров и сформулировать практические бизнес-выводы на основе данных.

В ходе анализа использовались SQL-запросы различной сложности: агрегации, группировки, соединения таблиц и расчёт бизнес-метрик.

---

## Dataset Overview

Источник данных: Olist E-Commerce Dataset
https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce?resource=download


Период данных: 2016–2018

Используемые таблицы:

- customers
- olist_orders_dataset
- olist_order_items_dataset
- olist_order_payments_dataset
- olist_products_dataset
- product_category_name_translation

---

## Project Structure

```text
marketplace-analysis/

README.md

sql/
├── 01_basic_metrics.sql
├── 02_customer_analysis.sql
├── 03_product_analysis.sql
├── 04_revenue_analysis.sql
├── 05_sales_trend_analysis.sql
├── 06_delivery_analysis.sql

images/
├── top_categories.png
├── top_revenue_categories.png
├── customer_analysis.png
├── monthly_sales.png
```

---

## 1. Marketplace Overview

Основные показатели маркетплейса.

| Metric | Value |
|----------|----------:|
| Total Orders | 99,441 |
| Unique Customers | 96,096 |
| Total Revenue | $16,008,872.12 |
| Average Order Value | $154.10 |

### Insights

- Маркетплейс обработал более 99 тысяч заказов.
- Клиентская база составляет более 96 тысяч уникальных покупателей.
- Общая выручка превысила 16 миллионов долларов.
- Средний чек составляет около 154 долларов.

---

## 2. Customer Analysis

Анализ поведения клиентов.

| Orders per Customer | Customers |
|-------------------:|----------:|
| 1 | 93,099 |
| 2 | 2,745 |
| 3 | 203 |
| 4 | 30 |
| 5 | 8 |
| 6 | 6 |
| 7 | 3 |
| 9 | 1 |
| 17 | 1 |

### Additional Metrics

| Metric | Value |
|----------|----------:|
| Orders per Customer | 1.03 |
| Repeat Customers | 2,997 |
| Repeat Customer Rate | 3.12% |

### Insights

- Большинство покупателей совершают только один заказ.
- Повторные покупки встречаются редко.
- Существует небольшая группа лояльных клиентов с большим количеством заказов.

---

## 3. Product Analysis

Самые продаваемые категории товаров.

| Category | Items Sold |
|----------|----------:|
| bed_bath_table | 11,115 |
| health_beauty | 9,670 |
| sports_leisure | 8,641 |
| furniture_decor | 8,334 |
| computers_accessories | 7,827 |
| housewares | 6,964 |
| watches_gifts | 5,991 |
| telephony | 4,545 |
| garden_tools | 4,347 |
| auto | 4,235 |

### Insights

- Категория товаров для дома лидирует по объёму продаж.
- Высокий спрос наблюдается на товары для красоты и спорта.
- Электроника входит в число наиболее популярных направлений.

---

## 4. Revenue Analysis

Категории с наибольшей выручкой.

| Category | Revenue |
|----------|------------:|
| bed_bath_table | $1,712,553.67 |
| health_beauty | $1,657,373.12 |
| computers_accessories | $1,585,330.45 |
| furniture_decor | $1,430,176.39 |
| watches_gifts | $1,429,216.68 |
| sports_leisure | $1,392,127.56 |
| housewares | $1,094,758.13 |
| auto | $852,294.33 |
| garden_tools | $838,280.75 |
| cool_stuff | $779,698.00 |

### Insights

- Наибольшую выручку генерируют товары для дома.
- Категория computers_accessories входит в тройку самых прибыльных.
- Распределение выручки показывает высокую диверсификацию продаж.

---

## 5. Premium Categories

Категории с самым высоким средним чеком.

| Category | Average Order Value |
|----------|-----------------------:|
| computers | $1,268.73 |
| fixed_telephony | $763.88 |
| agro_industry_and_commerce | $471.15 |
| home_appliances_2 | $464.79 |
| office_furniture | $363.79 |
| signaling_and_security | $340.74 |
| construction_tools_safety | $330.11 |
| musical_instruments | $324.62 |
| small_appliances | $321.80 |
| air_conditioning | $301.89 |

### Insights

- Компьютерная техника обладает самым высоким средним чеком.
- B2B и специализированные категории характеризуются высокой стоимостью заказа.
- Наиболее продаваемые категории не всегда являются самыми дорогими.

---

## 6. Sales Trend Analysis

### Orders by Month

The marketplace experienced steady growth throughout 2017.

Peak sales volume was reached in November 2017 with 7,544 orders.

### Revenue by Month

Peak monthly revenue was also reached in November 2017, generating $1,194,882.80.

### Insights

- Order volume increased significantly throughout 2017.
- Revenue growth followed a similar pattern.
- November 2017 became the strongest month both in sales volume and revenue.
- The marketplace demonstrates clear business growth over time.

---

## 7. Delivery Analysis

В разработке.

В этот раздел будут добавлены:

- распределение заказов по статусам;
- доля успешно доставленных заказов;
- доля отменённых и недоступных заказов;
- выводы о качестве исполнения заказов.

---

## Executive Summary

Анализ показал, что маркетплейс имеет крупную клиентскую базу и стабильный объём продаж.

Наиболее востребованными являются товары для дома, красоты и спорта, однако самые высокие средние чеки наблюдаются в категориях электроники и специализированного оборудования.

Большинство клиентов совершают только одну покупку, что может указывать на потенциал для улучшения программ удержания пользователей и повышения повторных продаж.
