SELECT * FROM table_klasifikasi_kode
WHERE id_kegiatan = 3;

SELECT * FROM kode_rekening
WHERE id IN (SELECT id_rekening FROM table_klasifikasi_kode
WHERE id_kegiatan = 3);