# Malawi National Football Team  Exploratory Data Analysis (EDA)

---

## 📌 Project Overview

Proyek ini bertujuan untuk mengeksplorasi performa tim nasional sepak bola Malawi dengan menggunakan SQL. Analisis dilakukan terhadap data pertandingan historis untuk memahami tren kemenangan, produktivitas gol, kekuatan lawan, serta distribusi pertandingan berdasarkan lokasi (venue), jenis kompetisi, dan periode waktu (tahun atau dekade).

Proyek ini menggunakan **query SQL** dan **Common Table Expressions (CTE)** untuk menggali insight dari dataset `malawi_staging2`.

---


## 📁 Dataset

- **Nama Tabel:** `malawi_staging2`
- **Kolom Utama:**
  - `Date` – Tanggal pertandingan
  - `Opponent` – Lawan tanding
  - `Result` – Hasil pertandingan (Win, Draw, Loss)
  - `Team Score` – Jumlah gol Malawi
  - `Opponent Score` – Jumlah gol lawan
  - `Venue` – Lokasi pertandingan (Home, Away, Unknown)
  - `Competition` – Jenis kompetisi (Friendly, Qualifier, dll)
---

## 📊 EDA & Insight
🔥 [Temukan insight summary disini] : (https://github.com/TachooDa/Malawi-National-Football-Team-Exploratory-Data-Analysis-EDA/blob/main/insight_sumary.txt)

---
## 🧠 Analisis Tambahan dengan CTE (Common Table Expression)
🔥 [Temukan insight summary disini] : (https://github.com/TachooDa/Malawi-National-Football-Team-Exploratory-Data-Analysis-EDA/blob/main/insight_sumary.txt)

---
📌 [Lihat query lengkap di] :
(https://github.com/TachooDa/Malawi-National-Football-Team---Exploratory-Data-Analysis-EDA-/blob/main/SQL-File/eda_malawi.sql)
## 📈 Insight Utama

- **Performa Kandang vs Tandang:** Malawi cenderung lebih baik saat bermain di Venue Unknown (Netral).
- **Lawan Tersulit:** Berdasarkan selisih skor, lawan paling menyulitkan adalah [Ghana] dengan total selisih negatif terbesar [`-14`].
- **Tahun Terbaik:** Tahun [`1968 dan 2017`] menunjukkan rasio kemenangan tertinggi `100%`.
- **Kompetisi Terfavorit:** Kompetisi dengan jumlah pertandingan terbanyak adalah ['World Cup Qualifier' dan 'AFCON Qualifier'] dengan total pertandingan masing-masing `18` match.
- **Dekade Sibuk:** Dekade `2020` merupakan periode paling aktif bagi Malawi berdasarkan jumlah pertandingan.

---

## ⚙️ Tools & Teknologi

- SQL (MySQL / SQLite / BigQuery)
- EDA berbasis query dan CTE
- Data preprocessing dilakukan di tahap `malawi_staging2`
---

## 📄 Lisensi

Proyek ini bersifat edukatif dan terbuka untuk pengembangan lebih lanjut. Silakan gunakan dan modifikasi sesuai kebutuhan.
