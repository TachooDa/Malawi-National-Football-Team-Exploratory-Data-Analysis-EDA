# 🇲🇼 Tim Nasional Sepak Bola Malawi - Analisis Data Eksploratori (EDA)

## 📌 Ringkasan Proyek

Proyek ini mengeksplorasi performa tim nasional sepak bola Malawi menggunakan analisis SQL yang komprehensif. Studi ini meneliti data pertandingan historis untuk memahami tren kemenangan, produktivitas gol, kekuatan lawan, dan distribusi pertandingan berdasarkan venue, jenis kompetisi, dan periode waktu.

Analisis memanfaatkan **query SQL** dan **Common Table Expressions (CTE)** untuk mengekstrak insight bermakna dari dataset `malawi_staging2`.

---

## 📁 Informasi Dataset

| **Field** | **Deskripsi** |
|-----------|---------------|
| **Nama Tabel** | `malawi_staging2` |
| **Total Record** | [`72` |
| **Rentang Tanggal** | [`1957-01-01` - `2025-03-20`] |

### **Kolom Utama:**
- `Date` – Tanggal pertandingan
- `Opponent` – Tim lawan
- `Result` – Hasil pertandingan (Win, Draw, Loss)
- `Team Score` – Gol yang dicetak Malawi
- `Opponent Score` – Gol yang dicetak lawan
- `Venue` – Lokasi pertandingan (Home, Away, Unknown)
- `Competition` – Jenis kompetisi (Friendly, Qualifier, dll.)

---

## 📊 Komponen Analisis

### **🔍 Analisis Data Eksploratori (EDA) & Analisis lanjutan dengan CTE**
🔥 **[Lihat Ringkasan Insight Lengkap](https://github.com/TachooDa/Malawi-National-Football-Team-Exploratory-Data-Analysis-EDA/blob/main/insight_summary.txt)**


### **📝 Query SQL**
📌 **[Lihat File SQL Lengkap](https://github.com/TachooDa/Malawi-National-Football-Team-Exploratory-Data-Analysis-EDA/blob/main/SQL-File/eda_malawi.sql)**

---

## 📈 Insight Utama

### **🏠 Performa Kandang vs Tandang**
- **Keunggulan Kandang Terkonfirmasi:** Malawi bermain jauh lebih baik di venue kandang
- **Kemenangan Kandang:** `10` kemenangan
- **Performa Tandang:** `4` kemenangan
- **Performa tempat netral:** `1` kemenangan

### **💪 Analisis Lawan**
- **Lawan Tersulit:** Ghana (selisih gol: -14)
- **Lawan yang Paling Sering Dihadapi:** 
  1. Mozambique (5 pertandingan)
  2. Ghana (4 pertandingan)
  3. Kenya (4 pertandingan)
  4. Burkina Faso (4 pertandingan)
  5. Senegal (4 pertandingan)

### **📅 Performa Temporal**
- **Tahun Terbaik:** `1968 & 2017` (tingkat kemenangan 100%)
- **Dekade Paling Aktif:** `2020`-an

### **🏆 Analisis Kompetisi**
- **Kompetisi Utama:** 
  - Kualifikasi Piala Dunia (18 pertandingan)
  - Kualifikasi AFCON (18 pertandingan)
- **Performa Kompetisi Terbaik:** AFCON Qualifier `4` kemenangan

### **⚽ Statistik Mencetak Gol**
- **Rata-rata Gol Dicetak:** [`4`]
- **Rata-rata Gol Kebobolan:** [`8`]

---

## 🛠️ Stack Teknologi

| **Komponen** | **Teknologi** |
|--------------|---------------|
| **Database** | MySQL  |
| **Bahasa Query** | SQL |
| **Fitur Lanjutan** | Common Table Expressions (CTE) |
| **Pemrosesan Data** | Tabel staging khusus (`malawi_staging2`) |

---

## 📂 Struktur Repository

```
├── SQL-File/
│   └── eda_malawi.sql          # Query analisis utama
├── insight_summary.txt         # Ringkasan temuan utama
├── README.md                   # Dokumentasi proyek
└── [File proyek lainnya]
```

---

## 🚀 Cara Menggunakan

1. **Clone repository:**
   ```bash
   git clone https://github.com/TachooDa/Malawi-National-Football-Team-Exploratory-Data-Analysis-EDA.git
   ```

2. **Setup database** dengan tabel `malawi_staging2`

3. **Jalankan query SQL** dari file `eda_malawi.sql`

4. **Review insight** di file `insight_summary.txt`

---

## 📊 Contoh Query

```sql
-- Contoh: Performa Kandang vs Tandang
SELECT Venue, Result, COUNT(*) as total_pertandingan
FROM malawi_staging2
WHERE Venue IN ('Home','Away') AND Result = 'Win'
GROUP BY Venue, Result
ORDER BY total_pertandingan DESC;
```

---

## 🎯 Pengembangan Masa Depan

- [ ] Menambahkan komponen visualisasi data
- [ ] Implementasi predictive modeling
- [ ] Menambahkan dashboard interaktif
- [ ] Memperluas dataset dengan pertandingan terbaru

---

## 🤝 Kontribusi

Kontribusi sangat diterima! Silakan kirim Pull Request atau buka Issue untuk diskusi.

---

## 📄 Lisensi

Proyek ini bertujuan edukatif dan terbuka untuk pengembangan lebih lanjut. Silakan gunakan dan modifikasi sesuai kebutuhan.

---

## 📧 Kontak

Untuk pertanyaan atau saran, silakan [buka issue](https://github.com/TachooDa/Malawi-National-Football-Team-Exploratory-Data-Analysis-EDA/issues) atau hubungi melalui GitHub.

---

*Terakhir Diperbarui: [Masukkan tanggal]*
