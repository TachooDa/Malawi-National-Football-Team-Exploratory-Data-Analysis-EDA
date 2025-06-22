# Malawi National Football Team  Exploratory Data Analysis (EDA)
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

### 1. **Tren Kemenangan dari Tahun ke Tahun**
Menganalisis hasil pertandingan (menang, seri, kalah) dari tahun ke tahun untuk melihat performa secara historis.

### 2. **Performa Berdasarkan Lawan**
Mengidentifikasi lawan mana yang sering dikalahkan atau menyulitkan Malawi.

### 3. **Rata-Rata Skor Berdasarkan Venue**
Menilai performa bermain di kandang (`Home`) vs tandang (`Away`).

### 4. **Distribusi Hasil Berdasarkan Kompetisi**
Mengukur performa di berbagai jenis kompetisi.

### 5. **Selisih Skor vs Lawan**
Melihat selisih skor pertandingan untuk mengetahui dominasi atau kekalahan dari lawan tertentu.

### 6. **Konsistensi Skor per Tahun**
Apakah produktivitas tim meningkat dan pertahanan membaik dari tahun ke tahun?

### 7. **Frekuensi Pertandingan Berdasarkan Venue**
Venue mana yang paling sering digunakan tim Malawi.

### 8. **Distribusi Pertandingan Berdasarkan Dekade**
Tren volume pertandingan per dekade (misal: 1980s, 1990s, dst).

### 9. **Jenis Kompetisi Terbanyak**
Mengukur distribusi jenis kompetisi yang diikuti Malawi.

### 10. **Lawan Tersulit dan Termudah**
Berdasarkan selisih skor kumulatif, kita bisa mengetahui tim lawan yang paling menyulitkan maupun yang paling sering dikalahkan.

---

## 🧠 Analisis Tambahan dengan CTE (Common Table Expression)

### 11. **Pertandingan Terakhir Tiap Lawan**
Melihat performa terbaru melawan masing-masing lawan.

### 12. **Performa Tahunan & Persentase Kemenangan**
Mengukur efisiensi tahunan berdasarkan persentase menang.

### 13. **Rata-Rata Skor Home vs Away**
Perbandingan skor di kandang dan tandang secara eksplisit.

### 14. **Peringkat Lawan Tersulit**
Ranking lawan dari yang paling sulit berdasarkan total selisih skor.

### 15. **Ringkasan Jumlah Pertandingan per Dekade**
Menyajikan total pertandingan per dekade untuk melihat tren partisipasi.

---
📌 [Lihat query lengkap di] :
()
## 📈 Insight Utama

- **Performa Kandang vs Tandang:** Malawi cenderung lebih baik saat bermain di Venue Unknown (Netral).
- **Lawan Tersulit:** Berdasarkan selisih skor, lawan paling menyulitkan adalah [Ghana] dengan total selisih negatif terbesar [`-14`].
- **Tahun Terbaik:** Tahun [1968 dan 2017] menunjukkan rasio kemenangan tertinggi [100]%.
- **Kompetisi Terfavorit:** Kompetisi dengan jumlah pertandingan terbanyak adalah ['World Cup Qualifier' dan 'AFCON Qualifier'] dengan total pertandingan masing-masing [18] match.
- **Dekade Sibuk:** Dekade [2020] merupakan periode paling aktif bagi Malawi berdasarkan jumlah pertandingan.

---

## ⚙️ Tools & Teknologi

- SQL (dijalankan di [MySQL / SQLite / BigQuery / lainnya])
- Visualisasi opsional (misalnya menggunakan Tableau, Power BI, atau spreadsheet)
- Data preprocessing dilakukan pada tabel `malawi_staging2`
---

## 📌 Penutup

EDA ini memberikan pemahaman mendalam mengenai perjalanan performa tim nasional Malawi dalam sepak bola internasional. 
Insight yang diperoleh dapat dijadikan landasan strategi, pelatihan, atau evaluasi performa jangka panjang.
