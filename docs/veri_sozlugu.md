
# E-Ticaret Analiz Platformu - Veri Sözlüğü

## 1. Projenin Amacı

Bu proje, e-ticaret müşterilerinin alışveriş davranışlarını,
satış performansını ve müşteri memnuniyetini analiz etmek
amacıyla geliştirilmiştir.

Veriler DuckDB ve dbt kullanılarak işlenmiş,
Power BI ile görselleştirilmiştir.

## 2. Veri Kaynakları

- ecommerce_customer_behavior_dataset
- ecommerce_customer_behavior_dataset_v2

Kaynak: Kaggle - E-Commerce Customer Behavior and Sales Analysis TR

## 3. Staging Katmanı

### stg_ecommerce_customers

Ham müşteri verilerinden seçilen alanları analiz için
hazırlayan dbt modelidir.

| Sütun | Açıklama |
|---|---|
| customer_id | Müşteri kimlik numarası |
| Product_Category | Satın alınan ürünün kategorisi |
| Payment_Method | Kullanılan ödeme yöntemi |
| Unit_Price | Ürünün birim fiyatı |
| Session_Duration_Minutes | Müşterinin oturum süresi (dakika) |
| loaded_at | Verinin işlendiği zaman |

## 4. Mart Katmanı

### 4.1 mart_customers

Müşteri bazında alışveriş davranışlarını özetler.

| Sütun | Açıklama |
|---|---|
| Customer_ID | Müşteri kimlik numarası |
| Age | Müşterinin yaşı |
| Gender | Müşterinin cinsiyeti |
| City | Müşterinin şehri |
| Total_Orders | Müşterinin sipariş kayıtlarının sayısı |
| Total_Spending | Müşterinin toplam alışveriş tutarı |
| Average_Order_Value | Müşterinin ortalama sipariş tutarı |
| Avg_Session_Duration | Ortalama oturum süresi (dakika) |
| Avg_Pages_Viewed | Ortalama görüntülenen sayfa sayısı |

### 4.2 mart_sales

Sipariş ve satış performansı analizlerinde kullanılır.

| Sütun | Açıklama |
|---|---|
| Order_ID | Sipariş kimlik numarası |
| Customer_ID | Müşteri kimlik numarası |
| Date | Sipariş tarihi |
| City | Siparişin ilişkili olduğu şehir |
| Product_Category | Ürün kategorisi |
| Unit_Price | Ürünün birim fiyatı |
| Quantity | Satın alınan ürün miktarı |
| Discount_Amount | İndirim tutarı |
| Total_Amount | Siparişin toplam tutarı |
| Payment_Method | Kullanılan ödeme yöntemi |

### 4.3 mart_satisfaction

Müşteri memnuniyeti ve teslimat deneyimi analizlerinde
kullanılır.

| Sütun | Açıklama |
|---|---|
| Order_ID | Sipariş kimlik numarası |
| Customer_ID | Müşteri kimlik numarası |
| Date | Sipariş tarihi |
| City | Müşterinin şehri |
| Product_Category | Ürün kategorisi |
| Customer_Rating | Müşterinin verdiği değerlendirme puanı |
| Delivery_Time_Days | Teslimat süresi (gün) |
| Is_Returning_Customer | Müşterinin tekrar alışveriş yapma durumu |
| Session_Duration_Minutes | Oturum süresi (dakika) |
| Pages_Viewed | Görüntülenen sayfa sayısı |

## 5. Veri Kalitesi Testleri

dbt kullanılarak aşağıdaki testler uygulanmaktadır:

1. customer_id - unique
2. customer_id - not_null
3. Payment_Method - not_null
4. Product_Category - not_null
5. Unit_Price - not_null

Bu testler, staging katmanındaki verilerin
benzersizlik ve boş değer koşullarını kontrol eder.

## 6. Kullanılan Teknolojiler

- Python
- DuckDB
- dbt Core
- SQL
- Power BI
- Git ve GitHub
