import pandas as pd

# Veri setini okuma
df = pd.read_csv('ilk_projem/seeds/archive/ecommerce_customer_behavior_dataset.csv')

print("Temizlik Öncesi Satır ve Sütun Sayısı:", df.shape)

# 1. Tekrar Eden (Duplicate) Satırları Temizleme
df = df.drop_duplicates()

# 2. Eksik Verileri Kontrol Etme ve Doldurma (Örnek olarak)
# Eğer eksik veriler varsa, sayısal sütunları ortalama ile doldurabiliriz:
# df.fillna(df.mean(numeric_only=True), inplace=True)

print("Temizlik Sonrası Satır ve Sütun Sayısı:", df.shape)
print("\nEksik Veri Kontrolü (Temizlik Sonrası):")
print(df.isnull().sum())
