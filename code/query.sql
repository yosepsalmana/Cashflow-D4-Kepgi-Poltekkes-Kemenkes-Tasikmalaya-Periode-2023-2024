-- Menampilkan Total Pemasukan, Total Pengeluaran dan Sisa Saldo
WITH jumlah_pemasukan AS (
    SELECT SUM(jumlah) AS total_pemasukan FROM pemasukan
),
jumlah_pengeluaran AS (
    SELECT SUM(jumlah) AS total_pengeluaran FROM pengeluaran
)
SELECT 
    p.total_pemasukan,
    g.total_pengeluaran,
    p.total_pemasukan - g.total_pengeluaran AS sisa_saldo
FROM 
    jumlah_pemasukan p,
    jumlah_pengeluaran g;
    
-- -- Menampilkan nama mahasiswa beserta jumlah bulan beserta bulan apa saja belum membayar kas dan diurutkan berdasarkan yang paling banyak belum membayar
SELECT nama_mahasiswa, 
COUNT(nama_mahasiswa) as jumlah_belum_bayar, 
GROUP_CONCAT(bulan ORDER BY FIELD(bulan, 'January', 'February', 'March', 'April', 'May', 'June', 'July') SEPARATOR ', ') AS bulan
FROM pemasukan 
WHERE kategori = "kas" 
AND jumlah = 0 
GROUP BY nama_mahasiswa 
ORDER BY jumlah_belum_bayar DESC;

-- Menampilkan jumlah mahasiswa yang belum bayar kas berdasarkan bulan dan tahun
SELECT bulan, 
tahun,
COUNT(nama_mahasiswa) as jumlah_belum_bayar 
FROM pemasukan 
WHERE kategori = "kas" 
AND jumlah = 0 
GROUP BY bulan, 
tahun 
ORDER BY jumlah_belum_bayar DESC;