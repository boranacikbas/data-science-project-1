# 📊 SQL & Python E-Commerce Data Case Study

Bu proje, bir e-ticaret veri kümesi (Müşteriler, Ürünler ve Siparişler) üzerinde iş gereksinimlerine yönelik analitik sorgular geliştirmek ve bu sorguları Python ortamında otomatize etmek amacıyla hazırlanmıştır. 

Projenin temel amacı; ilişkisel veritabanı yönetim mantığını, Python-PostgreSQL entegrasyonunu ve test odaklı yazılım geliştirme (TDD) kültürünü analitik bir iş senaryosu üzerinde doğrulamaktır.

## 🛠️ Kullanılan Teknolojiler
* **Veritabanı:** PostgreSQL (İlişkisel Veritabanı Yönetim Sistemi)
* **Programlama Dili:** Python 3
* **Veritabanı Sürücüsü:** `psycopg2`
* **Test Altyapısı:** `pytest` (Otomatize Test Yönetimi)

## 📈 Çözülen Analitik Problemler (İş Soruları)
Proje kapsamında, `dsdb` şeması altında oluşturulan tablolar üzerinde aşağıdaki 10 temel iş zekası ve veri analizi sorusuna SQL sorguları geliştirilmiş ve `questions.py` içerisindeki Python fonksiyonlarına entegre edilmiştir:

1. **Müşteri Demografisi:** Müşterilerin adlarını ve bulundukları ülkeleri listeleme.
2. **Yüksek Değerli Siparişler:** En yüksek tutarlı ilk 5 siparişi azalan sırada raporlama.
3. **Maliyet Analizi:** Fiyatı en düşük 3 ürünü adı ve fiyatıyla getirme.
4. **Müşteri Kazanım Trendi:** Tüm müşterileri sisteme kayıt olma tarihlerine (`signup_date`) göre eskiden yeniye sıralama.
5. **Stok Yönetimi:** En fazla stoğa sahip ürünü tahlil etme.
6. **Güncellik Takibi:** E-ticaret platformundaki en son gerçekleşen siparişi bulma.
7. **Ürün Kataloglama:** Tüm ürün isimlerini alfabetik sırada indeksleme.
8. **Hedefli Pazarlama (CRM):** Müşterileri ID'lerine göre sıralayıp iletişim kanallarını (`email`) filtreleme.
9. **Düşük Bütçeli Siparişler:** En düşük tutarlı 3 siparişi tespit etme.
10. **Coğrafi Segmentasyon:** Sadece Türkiye'deki (`country = 'Turkey'`) müşterileri alfabetik sırada raporlama.

## ⚙️ Veritabanı Şema Yapısı
Proje, veritabanı izolasyon kurallarına uygun olarak varsayılan `public` şeması yerine, temiz ve bağımsız bir veri alanı sunan **`dsdb`** şeması üzerinde koşturulmaktadır. Tablolar arası `FOREIGN KEY` (Müşteri-Sipariş ilişkisi) bağlantıları ve veri tutarlılığı SQL scripti üzerinde optimize edilmiştir.

## 🚀 Projeyi Yerelde Çalıştırma

1. Yerel PostgreSQL sunucunuzda `dsdb` adında bir şema oluşturun.
2. `Proje 1 Çözümleri.sql` dosyasındaki şema yönlendirmesini (`SET search_path TO dsdb;`) çalıştırarak tabloları ve test verilerini ayağa kaldırın.
3. `questions.py` içerisindeki yerel veritabanı şifrenizi tanımlayın.
4. Terminalinizde test otomasyonunu ve skor tablosunu tetiklemek için şu komutu çalıştırın:
   ```bash
   python watch.py
