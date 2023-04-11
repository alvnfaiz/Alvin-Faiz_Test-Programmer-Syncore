--  1. Menampilkan data member yang berada pada provinsi sumatera utara dan dalam satu kabupaten
SELECT * FROM mst_member 
JOIN mst_propinsi ON kode_propinsi
WHERE nama_propinsi = "SUMATERA UTARA";

--  2. Menampilkan data provinsi yang tidak ada dalam data member
SELECT * FROM mst_propinsi
WHERE kode_propinsi NOT IN (
    SELECT id_provinsi
    FROM mst_member
);

--  3. Menampilkan data kabupaten yang tidak ada dalam data member
SELECT * FROM mst_kabupaten
WHERE kode_kabupaten NOT IN (
    SELECT DISTINCT id_kabupaten
    FROM mst_member
);

--  4. Menampilkan data kecamatan yang tidak ada dalam data member
SELECT * FROM mst_kecamatan
WHERE kode_kecamatan NOT IN (
    SELECT DISTINCT id_kecamatan
    FROM mst_member
);

--  5. Menampilkan nama member yang terdapat di Kab. Simalungun
SELECT nama FROM mst_member
JOIN mst_kabupaten ON id_kabupaten
WHERE nama_kabupaten = "KAB SIMALUNGUN";

--  6. Menampilkan jumlah data instansi pada Kab. Bireuen dan Kab. Bener Meriah
SELECT COUNT(*) FROM mst_instansi
JOIN mst_kabupaten ON id_kabupaten
WHERE nama_kabupaten IN ("BIREUEN", "KAB. BENER MERIAH");

--  7. Menampilkan data member yang berawalan huruf “M”
SELECT * FROM mst_member
WHERE nama LIKE 'M%';

--  8. Menampilkan alamat email yang mempunyai karakter “no” dan terdapat di provinsi Sumatera Utara
SELECT email FROM mst_member
JOIN mst_propinsi ON kode_propinsi
WHERE nama_propinsi = "SUMATERA UTARA"
AND email LIKE '%no';

--  9. Menampilkan data member yang mempunyai kode instansi “2004”
SELECT * FROM mst_member
WHERE kode_instansi LIKE "%.2004";

--  10. Menampilkan data member yang mempunyai karakter kode kecamatan “.08.”
SELECT * FROM mst_member
WHERE id_kecamatan LIKE "%.80.%";