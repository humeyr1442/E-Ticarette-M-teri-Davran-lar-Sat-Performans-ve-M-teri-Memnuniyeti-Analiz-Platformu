# E-Ticarette Müşteri Davranışları, Satış Performansı ve Müşteri Memnuniyeti Analiz Platformu

## 📌 Proje Hakkında

Bu proje, e-ticaret işletmelerinin satış performansını, müşteri davranışlarını ve müşteri memnuniyetini analiz etmek amacıyla geliştirilmiştir.

Proje kapsamında ham veri setleri dbt kullanılarak dönüştürülmüş, analizlere uygun veri modelleri oluşturulmuş ve elde edilen sonuçlar Power BI üzerinden görselleştirilmiştir.

Geliştirilen analiz platformu sayesinde müşteri segmentlerinin incelenmesi, satış performansının değerlendirilmesi ve müşteri memnuniyetine ilişkin göstergelerin analiz edilmesi hedeflenmektedir.

## 🎯 Projenin Amaçları

- E-ticaret satış performansını analiz etmek.
- Müşteri davranışlarını ve satın alma eğilimlerini incelemek.
- Müşteri memnuniyetini değerlendirmek.
- Ham verileri analiz edilebilir ve anlamlı veri modellerine dönüştürmek.
- İşletmelerin veri odaklı karar alma süreçlerini desteklemek.
- Power BI dashboard'u aracılığıyla analiz sonuçlarını görselleştirmek.

## 🛠️ Kullanılan Teknolojiler

| Teknoloji | Kullanım Amacı |
|---|---|
| Python | Veri işleme ve veri setlerinin incelenmesi |
| dbt Core | Veri dönüşümü ve modelleme |
| DuckDB | Yerel analitik veri tabanı |
| SQL | Veri temizleme, dönüştürme ve analiz |
| Power BI | Dashboard ve veri görselleştirme |
| Git & GitHub | Versiyon kontrolü ve proje paylaşımı |

## 📊 Veri Setleri

Projede e-ticaret müşteri davranışları ve satış verileri kullanılmaktadır.

Veri setleri müşteri bilgileri, satın alma davranışları, ürün tercihleri ve müşteri etkileşimlerine ilişkin alanlar içermektedir.

Proje kapsamında kullanılan veri setleri ve açıklamaları `seeds/archive/` klasöründe bulunmaktadır.

## 🏗️ Veri Dönüşüm Mimarisi

Proje, dbt ile yapılandırılmış bir veri dönüşüm sürecine sahiptir.

```text
Ham Veri Setleri
       │
       ▼
   DuckDB
       │
       ▼
 Staging Katmanı
       │
       ▼
   Mart Katmanı
       │
       ├── mart_customers
       ├── mart_sales
       └── mart_satisfaction
       │
       ▼
    Power BI
       │
       ▼
  Analiz Dashboard'u
```

### Staging Katmanı

`stg_ecommerce_customers`

Ham müşteri verilerinin analiz için hazırlanmasını sağlayan staging modelidir.

### Mart Katmanı

| Model | Açıklama |
|---|---|
| `mart_customers` | Müşteri odaklı analizler için oluşturulmuştur. |
| `mart_sales` | Satış performansının analiz edilmesini sağlar. |
| `mart_satisfaction` | Müşteri memnuniyetine yönelik analizleri destekler. |

Mart modelleri Power BI dashboard'unda kullanılabilecek analiz tablolarını oluşturmaktadır.

## 📈 Power BI Dashboard

Proje kapsamında geliştirilen Power BI dashboard'u, oluşturulan analiz modellerini görsel raporlara dönüştürmektedir.

Dashboard ile satış performansı, müşteri davranışları ve müşteri memnuniyeti göstergelerinin incelenmesi amaçlanmaktadır.

Power BI dosyası:

`E_Ticaret_Satis_Analiz_Dashboard.pbix`

Dosya GitHub deposunda yer almaktadır.

## 🧪 Veri Kalitesi ve Testler


## 🧪 Veri Kalitesi ve Testler

Proje kapsamında dbt kullanılarak 5 veri kalitesi testi
uygulanmış ve tamamı başarıyla sonuçlanmıştır.

| Kontrol Edilen Alan | Test | Amaç |
|---|---|---|
| customer_id | unique | Müşteri kimliklerinin benzersiz olması |
| customer_id | not_null | Müşteri kimliğinin boş olmaması |
| Payment_Method | not_null | Ödeme yönteminin boş olmaması |
| Product_Category | not_null | Ürün kategorisinin boş olmaması |
| Unit_Price | not_null | Birim fiyatın boş olmaması |

**Test Sonuçları:**
- PASS: 5
- WARN: 0
- ERROR: 0

Testler `models/schema.yml` dosyasında tanımlanmıştır.


## 🚀 Projenin Çalıştırılması

### Gereksinimler

- Python 3.13
- dbt Core
- dbt-duckdb
- Git

### 1. Projeyi klonlama

```bash
git clone https://github.com/humeyr1442/E-Ticarette-M-teri-Davran-lar-Sat-Performans-ve-M-teri-Memnuniyeti-Analiz-Platformu.git
```

Proje klasörüne geçiş:

```bash
cd E-Ticarette-M-teri-Davran-lar-Sat-Performans-ve-M-teri-Memnuniyeti-Analiz-Platformu
```

### 2. dbt bağlantısını kontrol etme

```bash
py -3.13 -m dbt.cli.main debug
```

Bu komut dbt yapılandırmasını ve DuckDB bağlantısını kontrol eder.

### 3. Veri setlerini yükleme

```bash
py -3.13 -m dbt.cli.main seed
```

### 4. Veri modellerini çalıştırma

```bash
py -3.13 -m dbt.cli.main run
```

### 5. Testleri çalıştırma

```bash
py -3.13 -m dbt.cli.main test
```

### 6. Tüm süreci çalıştırma

```bash
py -3.13 -m dbt.cli.main build
```

`build` komutu seed dosyalarını, modelleri ve testleri dbt proje yapılandırmasına göre çalıştırır.

## 📁 Proje Dosya Yapısı

```text

├── analyses/
├── docs/
│   └── veri_sozlugu.md
├── macros/
├── models/
│   ├── marts/
│   │   ├── mart_customers.sql
│   │   ├── mart_sales.sql
│   │   └── mart_satisfaction.sql
│   ├── staging/
│   │   └── stg_ecommerce_customers.sql
│   └── schema.yml
├── notebooks/
│   └── e_ticaret_veri_analizi.ipynb
├── seeds/
│   └── archive/
├── snapshots/
├── tests/
├── E_Ticaret_Satis_Analiz_Dashboard.pbix
├── mart_customers.csv
├── mart_sales.csv
├── mart_satisfaction.csv
├── dbt_project.yml
├── veri_oku.py
└── README.md

```

## 👥 Proje Ekibi

Bu proje, Yönetim Bilişim Sistemleri kapsamında İş Zekazı ve Veri Madenciliği dersi bünyesinde veri analitiği, veri modelleme ve iş zekâsı alanlarında uygulamalı çalışma amacıyla geliştirilmiştir.

## 📌 Proje Durumu

Proje geliştirme süreci devam etmektedir. Veri dönüşüm modelleri, analiz tabloları ve Power BI dashboard'u proje kapsamında oluşturulmuştur.

## 📄 Lisans ve Veri Kaynakları

Projede kullanılan veri setlerinin kaynakları ve açıklamaları, ilgili veri seti dokümantasyonlarında belirtilmiştir.

Veri setleri analiz ve eğitim amaçlı kullanılmaktadır.

## 📚 Ek Çalışmalar ve Proje Geliştirmeleri

### Veri Sözlüğü

Projede kullanılan veri alanlarının açıklamaları
`docs/veri_sozlugu.md` dosyasında bulunmaktadır.

### Jupyter Notebook Analizleri

`notebooks/e_ticaret_veri_analizi.ipynb` dosyasında
Python, Pandas ve Matplotlib kullanılarak
aşağıdaki analizler gerçekleştirilmiştir:

- Veri kalitesi kontrolü
- Ürün kategorilerine göre toplam satış analizi
- Ödeme yöntemlerine göre sipariş sayısı analizi
- Müşteri memnuniyeti puanlarının analizi
- Analiz sonuçlarının grafiklerle görselleştirilmesi

### Güncellenen dbt Testleri

Staging modeli üzerinde toplam 5 veri kalitesi
testi başarıyla çalıştırılmıştır:

- customer_id: unique
- customer_id: not_null
- Payment_Method: not_null
- Product_Category: not_null
- Unit_Price: not_null

Test sonucu: PASS=5, WARN=0, ERROR=0

### Güncellenen Staging Yapısı

Staging modeli daha düzenli bir proje yapısı
oluşturmak amacıyla aşağıdaki konuma taşınmıştır:

`models/staging/stg_ecommerce_customers.sql`
