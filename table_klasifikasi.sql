CREATE TABLE IF NOT EXISTS table_klasifikasi_kode(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_kegiatan INT,
    id_rekening INT
);

INSERT INTO table_klasifikasi_kode (id_kegiatan, id_rekening)
SELECT table_referensi_kode_kegiatan.id AS id_kegiatan, table_referensi_kode_rekening.id AS id_rekening
FROM table_referensi_kode_kegiatan
INNER JOIN table_referensi_kode_rekening ON table_referensi_kode_rekening.kode IN ("5.1.02.01.01.0052")
WHERE table_referensi_kode_kegiatan.kode = "7.02.01.1.06.0009";

INSERT INTO table_klasifikasi_kode (id_kegiatan, id_rekening)
SELECT table_referensi_kode_kegiatan.id AS id_kegiatan, table_referensi_kode_rekening.id AS id_rekening
FROM table_referensi_kode_kegiatan
INNER JOIN table_referensi_kode_rekening ON table_referensi_kode_rekening.kode IN ("5.2.02.05.02.0001", "5.2.02.05.02.0005", "5.2.02.05.02.0006", "5.2.02.05.02.0005")
WHERE table_referensi_kode_kegiatan.kode = "7.02.01.1.07.0005";

INSERT INTO table_klasifikasi_kode (id_kegiatan, id_rekening)
SELECT table_referensi_kode_kegiatan.id AS id_kegiatan, table_referensi_kode_rekening.id AS id_rekening
FROM table_referensi_kode_kegiatan
INNER JOIN table_referensi_kode_rekening ON table_referensi_kode_rekening.kode IN ("5.2.03.01.01.0001", "5.2.03.01.02.0002")
WHERE table_referensi_kode_kegiatan.kode = "7.02.01.1.07.0009";

INSERT INTO table_klasifikasi_kode (id_kegiatan, id_rekening)
SELECT table_referensi_kode_kegiatan.id AS id_kegiatan, table_referensi_kode_rekening.id AS id_rekening
FROM table_referensi_kode_kegiatan
INNER JOIN table_referensi_kode_rekening ON table_referensi_kode_rekening.kode IN ("5.2.03.01.01.0001", "5.2.03.01.02.0002")
WHERE table_referensi_kode_kegiatan.kode = "7.02.02.1.09.0009";

INSERT INTO table_klasifikasi_kode (id_kegiatan, id_rekening)
SELECT table_referensi_kode_kegiatan.id AS id_kegiatan, table_referensi_kode_rekening.id AS id_rekening
FROM table_referensi_kode_kegiatan
INNER JOIN table_referensi_kode_rekening ON table_referensi_kode_rekening.kode IN ("5.1.02.01.01.0024", "5.1.02.01.01.0026", "5.1.02.01.01.0052", "5.1.02.02.01.0003")
WHERE table_referensi_kode_kegiatan.kode = "7.02.02.6.03.0001";

INSERT INTO table_klasifikasi_kode (id_kegiatan, id_rekening)
SELECT table_referensi_kode_kegiatan.id AS id_kegiatan, table_referensi_kode_rekening.id AS id_rekening
FROM table_referensi_kode_kegiatan
INNER JOIN table_referensi_kode_rekening ON table_referensi_kode_rekening.kode IN ("5.1.02.01.01.0027", "5.1.02.02.01.0004")
WHERE table_referensi_kode_kegiatan.kode = "7.02.02.6.03.0002";

INSERT INTO table_klasifikasi_kode (id_kegiatan, id_rekening)
SELECT table_referensi_kode_kegiatan.id AS id_kegiatan, table_referensi_kode_rekening.id AS id_rekening
FROM table_referensi_kode_kegiatan
INNER JOIN table_referensi_kode_rekening ON table_referensi_kode_rekening.kode IN ("5.1.02.01.01.0052", "5.1.02.02.01.0003")
WHERE table_referensi_kode_kegiatan.kode = "7.02.02.6.03.0003";

INSERT INTO table_klasifikasi_kode (id_kegiatan, id_rekening)
SELECT table_referensi_kode_kegiatan.id AS id_kegiatan, table_referensi_kode_rekening.id AS id_rekening
FROM table_referensi_kode_kegiatan
INNER JOIN table_referensi_kode_rekening ON table_referensi_kode_rekening.kode IN ("5.1.02.02.01.0003", "5.1.02.01.01.0052")
WHERE table_referensi_kode_kegiatan.kode = "7.02.02.6.03.0004";

INSERT INTO table_klasifikasi_kode (id_kegiatan, id_rekening)
SELECT table_referensi_kode_kegiatan.id AS id_kegiatan, table_referensi_kode_rekening.id AS id_rekening
FROM table_referensi_kode_kegiatan
INNER JOIN table_referensi_kode_rekening ON table_referensi_kode_rekening.kode IN ("5.1.02.01.01.0052")
WHERE table_referensi_kode_kegiatan.kode = "7.02.02.6.03.0005";

INSERT INTO table_klasifikasi_kode (id_kegiatan, id_rekening)
SELECT table_referensi_kode_kegiatan.id AS id_kegiatan, table_referensi_kode_rekening.id AS id_rekening
FROM table_referensi_kode_kegiatan
INNER JOIN table_referensi_kode_rekening ON table_referensi_kode_rekening.kode IN ("5.1.02.01.01.0052")
WHERE table_referensi_kode_kegiatan.kode = "7.02.02.6.03.0006";

INSERT INTO table_klasifikasi_kode (id_kegiatan, id_rekening)
SELECT table_referensi_kode_kegiatan.id AS id_kegiatan, table_referensi_kode_rekening.id AS id_rekening
FROM table_referensi_kode_kegiatan
INNER JOIN table_referensi_kode_rekening ON table_referensi_kode_rekening.kode IN ("5.1.02.01.01.0025", "5.1.02.01.01.0052")
WHERE table_referensi_kode_kegiatan.kode = "7.02.02.6.03.0007";

INSERT INTO table_klasifikasi_kode (id_kegiatan, id_rekening)
SELECT table_referensi_kode_kegiatan.id AS id_kegiatan, table_referensi_kode_rekening.id AS id_rekening
FROM table_referensi_kode_kegiatan
INNER JOIN table_referensi_kode_rekening ON table_referensi_kode_rekening.kode IN ("5.1.02.01.01.0052")
WHERE table_referensi_kode_kegiatan.kode = "7.02.02.6.03.0008";

INSERT INTO table_klasifikasi_kode (id_kegiatan, id_rekening)
SELECT table_referensi_kode_kegiatan.id AS id_kegiatan, table_referensi_kode_rekening.id AS id_rekening
FROM table_referensi_kode_kegiatan
INNER JOIN table_referensi_kode_rekening ON table_referensi_kode_rekening.kode IN ("5.1.02.02.01.0066")
WHERE table_referensi_kode_kegiatan.kode = "7.02.02.6.03.0015";

INSERT INTO table_klasifikasi_kode (id_kegiatan, id_rekening)
SELECT table_referensi_kode_kegiatan.id AS id_kegiatan, table_referensi_kode_rekening.id AS id_rekening
FROM table_referensi_kode_kegiatan
INNER JOIN table_referensi_kode_rekening ON table_referensi_kode_rekening.kode IN ("5.1.02.01.01.0052")
WHERE table_referensi_kode_kegiatan.kode = "7.02.02.6.03.0016";

INSERT INTO table_klasifikasi_kode (id_kegiatan, id_rekening)
SELECT table_referensi_kode_kegiatan.id AS id_kegiatan, table_referensi_kode_rekening.id AS id_rekening
FROM table_referensi_kode_kegiatan
INNER JOIN table_referensi_kode_rekening ON table_referensi_kode_rekening.kode IN ("5.1.02.01.01.0052")
WHERE table_referensi_kode_kegiatan.kode = "7.02.02.6.03.0018";

INSERT INTO table_klasifikasi_kode (id_kegiatan, id_rekening)
SELECT table_referensi_kode_kegiatan.id AS id_kegiatan, table_referensi_kode_rekening.id AS id_rekening
FROM table_referensi_kode_kegiatan
INNER JOIN table_referensi_kode_rekening ON table_referensi_kode_rekening.kode IN ("5.1.02.01.01.0052")
WHERE table_referensi_kode_kegiatan.kode = "7.02.02.6.03.0020";

INSERT INTO table_klasifikasi_kode (id_kegiatan, id_rekening)
SELECT table_referensi_kode_kegiatan.id AS id_kegiatan, table_referensi_kode_rekening.id AS id_rekening
FROM table_referensi_kode_kegiatan
INNER JOIN table_referensi_kode_rekening ON table_referensi_kode_rekening.kode IN ("5.1.02.01.01.0052")
WHERE table_referensi_kode_kegiatan.kode = "7.02.02.6.03.0022";

INSERT INTO table_klasifikasi_kode (id_kegiatan, id_rekening)
SELECT table_referensi_kode_kegiatan.id AS id_kegiatan, table_referensi_kode_rekening.id AS id_rekening
FROM table_referensi_kode_kegiatan
INNER JOIN table_referensi_kode_rekening ON table_referensi_kode_rekening.kode IN ("5.1.02.01.01.0052")
WHERE table_referensi_kode_kegiatan.kode = "7.02.02.6.03.0024";

INSERT INTO table_klasifikasi_kode (id_kegiatan, id_rekening)
SELECT table_referensi_kode_kegiatan.id AS id_kegiatan, table_referensi_kode_rekening.id AS id_rekening
FROM table_referensi_kode_kegiatan
INNER JOIN table_referensi_kode_rekening ON table_referensi_kode_rekening.kode IN ("5.1.02.01.01.0052")
WHERE table_referensi_kode_kegiatan.kode = "7.02.02.6.03.0025";

INSERT INTO table_klasifikasi_kode (id_kegiatan, id_rekening)
SELECT table_referensi_kode_kegiatan.id AS id_kegiatan, table_referensi_kode_rekening.id AS id_rekening
FROM table_referensi_kode_kegiatan
INNER JOIN table_referensi_kode_rekening ON table_referensi_kode_rekening.kode IN ("5.1.02.01.01.0052")
WHERE table_referensi_kode_kegiatan.kode = "7.02.02.6.03.0026";

INSERT INTO table_klasifikasi_kode (id_kegiatan, id_rekening)
SELECT table_referensi_kode_kegiatan.id AS id_kegiatan, table_referensi_kode_rekening.id AS id_rekening
FROM table_referensi_kode_kegiatan
INNER JOIN table_referensi_kode_rekening ON table_referensi_kode_rekening.kode IN ("5.1.02.01.01.0052")
WHERE table_referensi_kode_kegiatan.kode = "7.02.02.6.03.0027";

INSERT INTO table_klasifikasi_kode (id_kegiatan, id_rekening)
SELECT table_referensi_kode_kegiatan.id AS id_kegiatan, table_referensi_kode_rekening.id AS id_rekening
FROM table_referensi_kode_kegiatan
INNER JOIN table_referensi_kode_rekening ON table_referensi_kode_rekening.kode IN ("5.1.02.01.01.0052")
WHERE table_referensi_kode_kegiatan.kode = "7.02.02.6.03.0028";

INSERT INTO table_klasifikasi_kode (id_kegiatan, id_rekening)
SELECT table_referensi_kode_kegiatan.id AS id_kegiatan, table_referensi_kode_rekening.id AS id_rekening
FROM table_referensi_kode_kegiatan
INNER JOIN table_referensi_kode_rekening ON table_referensi_kode_rekening.kode IN ("5.1.02.02.01.0004", "5.1.02.02.01.0006", "5.1.02.01.01.0024", "5.1.02.01.01.0052", "5.1.02.01.01.0064", "5.1.02.01.01.0076", "5.1.02.01.01.0026", "5.1.02.01.01.0052", "5.1.02.01.01.0026")
WHERE table_referensi_kode_kegiatan.kode = "7.02.02.6.03.0039";

INSERT INTO table_klasifikasi_kode (id_kegiatan, id_rekening)
SELECT table_referensi_kode_kegiatan.id AS id_kegiatan, table_referensi_kode_rekening.id AS id_rekening
FROM table_referensi_kode_kegiatan
INNER JOIN table_referensi_kode_rekening ON table_referensi_kode_rekening.kode IN ("5.1.02.01.01.0052")
WHERE table_referensi_kode_kegiatan.kode = "7.02.02.6.03.0044";

INSERT INTO table_klasifikasi_kode (id_kegiatan, id_rekening)
SELECT table_referensi_kode_kegiatan.id AS id_kegiatan, table_referensi_kode_rekening.id AS id_rekening
FROM table_referensi_kode_kegiatan
INNER JOIN table_referensi_kode_rekening ON table_referensi_kode_rekening.kode IN ("5.1.02.01.01.0052")
WHERE table_referensi_kode_kegiatan.kode = "7.02.02.6.03.0045";