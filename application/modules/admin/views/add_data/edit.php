<div class="modal-body">
    <?php echo form_open('admin/add_data/update_data', 'id="update_data" enctype="multipart/form-data"'); ?>

    <div class="form-group">
        <input type="hidden" name="id" value="<?php echo $query->id; ?>">
    </div>
    <div class="form-group">
        <label for="nama_penyedia">Nama Penyedia</label>
        <input type="text" class="form-control" id="nama_penyedia" name="nama_penyedia" value="<?php echo $query->nama_penyedia; ?>">
    </div>
    <div class="form-group">
        <label for="npwp">NPWP</label>
        <input type="text" class="form-control" id="npwp" name="npwp" value="<?php echo $query->npwp; ?>">
    </div>
    <div class="form-group">
        <label for="no_pesanan">No Pesanan</label>
        <input type="text" class="form-control" id="no_pesanan" name="no_pesanan" value="<?php echo $query->no_pesanan; ?>">
    </div>
    <div class="form-group">
        <label for="nama_bank">Nama Bank</label>
        <select name="nama_bank" id="nama_bank" class="form-control" required>
            <option value="BRI" <?php if ($query->nama_bank == 'BRI') echo 'selected'; ?>>BRI</option>
            <option value="DKI" <?php if ($query->nama_bank == 'DKI') echo 'selected'; ?>>DKI</option>
        </select>
    </div>
    <div class="form-group">
        <label for="bagian">Bagian</label>
        <select name="bagian" id="bagian" class="form-control" required>
            <option value="Bagian Umum" <?php if ($query->bagian == 'Bagian Umum') echo 'selected'; ?>>Bagian Umum</option>
            <option value="Bagian Pemerintahan" <?php if ($query->bagian == 'Bagian Pemerintahan') echo 'selected'; ?>>Bagian Pemerintahan</option>
            <option value="Bagian P2K" <?php if ($query->bagian == 'Bagian P2K') echo 'selected'; ?>>Bagian P2K</option>
            <option value="Bagian KKPP" <?php if ($query->bagian == 'Bagian KKPP') echo 'selected'; ?>>Bagian KKPP</option>
            <option value="Bagian Hukum" <?php if ($query->bagian == 'Bagian Hukum') echo 'selected'; ?>>Bagian Hukum</option>
            <option value="Bagian Kesra" <?php if ($query->bagian == 'Bagian Kesra') echo 'selected'; ?>>Bagian Kesra</option>
            <option value="Bagian PKLH" <?php if ($query->bagian == 'Bagian PKLH') echo 'selected'; ?>>Bagian PKLH</option>
        </select>
    </div>
    <div class="form-group">
        <label for="kode_kegiatan">Kode Kegiatan</label>
        <select name="kode_kegiatan" id="kode_kegiatan" class="form-control" required>
            <option value="">-- Pilih --</option>
            <?php
            $kode_kegiatan_list = $this->db->get('table_referensi_kode_kegiatan')->result();
            foreach ($kode_kegiatan_list as $kode_kegiatan) {
                $selected = ($kode_kegiatan->kode_kegiatan == $query->kode_kegiatan) ? 'selected' : '';
                echo '<option value="' . $kode_kegiatan->kode_kegiatan . '" ' . $selected . '>' . $kode_kegiatan->kode_kegiatan . ' ' . $kode_kegiatan->deskripsi . '</option>';
            }
            ?>
        </select>
    </div>
    <div class="form-group">
        <label for="kode_rekening">Kode Rekening</label>
        <select name="kode_rekening" id="kode_rekening" class="form-control" required>
            <option value="">-- Pilih --</option>
        </select>
    </div>
    <div class="form-group">
        <label for="jumlah_pengajuan">Jumlah Pengajuan</label>
        <input type="text" class="form-control" id="jumlah_pengajuan" name="jumlah_pengajuan" value="<?php echo $query->jumlah_pengajuan; ?>">
    </div>
    <div class="form-group">
        <label for="potongan_pph">Potongan PPH</label>
        <select name="potongan_pph" id="potongan_pph" class="form-control" required>
            <option value="21%" <?php if ($query->potongan_pph == '21%') echo 'selected'; ?>>21%</option>
            <option value="22%" <?php if ($query->potongan_pph == '22%') echo 'selected'; ?>>22%</option>
            <option value="33%" <?php if ($query->potongan_pph == '33%') echo 'selected'; ?>>33%</option>
        </select>
    </div>
    <div class="form-group">
        <label for="biaya_kirim_uang">Biaya Kirim Uang</label>
        <input type="text" class="form-control" id="biaya_kirim_uang" name="biaya_kirim_uang" value="<?php echo $query->biaya_kirim_uang; ?>">
    </div>
    <div class="form-group">
        <label for="jumlah_diterima">Jumlah Diterima</label>
        <input type="text" class="form-control" id="jumlah_diterima" name="jumlah_diterima" value="<?php echo $query->jumlah_diterima; ?>">
    </div>
    <div class="form-group">
        <label for="keterangan">Keterangan</label>
        <input type="text" class="form-control" id="keterangan" name="keterangan" value="<?php echo $query->keterangan; ?>">
    </div>
    <div class="form-group">
        <label for="jenis_spj">Jenis SPJ</label>
        <select name="jenis_spj" id="jenis_spj" class="form-control" required>
            <option value="SPJ-LSG" <?php if ($query->jenis_spj == 'SPJ-LSG') echo 'selected'; ?>>SPJ-LSG</option>
            <option value="SPJ-LS Barang Jasa Kirim" <?php if ($query->jenis_spj == 'SPJ-LS Barang Jasa Kirim') echo 'selected'; ?>>SPJ-LS Barang Jasa Kirim</option>
            <option value="SPJ-UP/UG/TU" <?php if ($query->jenis_spj == 'SPJ-UP/UG/TU') echo 'selected'; ?>>SPJ-UP/UG/TU</option>
        </select>
    </div>
    <div class="form-group">
        <label for="edit_date">Tanggal dan Waktu Diubah</label>
        <input type="datetime-local" class="form-control" id="edit_date" name="edit_date" value="<?php echo date('Y-m-d'); ?>" required>
    </div>

    <div class="form-group">
        <label for="edit_by">Edit By</label>
        <input type="text" class="form-control" id="edit_by" name="edit_by" value="">
    </div>
    <div class="form-group">
        <input type="submit" id="submit" name="submit" value="Save" class="btn btn-primary">
        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
    </div>
    <?php echo form_close(); ?>
</div>

<script>
    // Ambil elemen-elemen yang diperlukan
    var potonganPPH = document.getElementById('potongan_pph');
    var biayaKirimUang = document.getElementById('biaya_kirim_uang');
    var jumlahPengajuan = document.getElementById('jumlah_pengajuan');
    var jumlahDiterima = document.getElementById('jumlah_diterima');

    // Tambahkan event listener untuk menghitung jumlah yang harus diterima saat nilai input berubah
    potonganPPH.addEventListener('change', hitungJumlahDiterima);
    biayaKirimUang.addEventListener('input', hitungJumlahDiterima);
    jumlahPengajuan.addEventListener('input', hitungJumlahDiterima);

    // Fungsi untuk menghitung jumlah yang harus diterima
    function hitungJumlahDiterima() {
        var potongan = parseFloat(potonganPPH.value) / 100 * parseFloat(jumlahPengajuan.value);
        var biayaKirim = parseFloat(biayaKirimUang.value);
        var total = parseFloat(jumlahPengajuan.value) - biayaKirim - potongan;

        // Jika hasilnya adalah bilangan negatif, atur jumlah diterima menjadi 0
        if (total < 0) {
            jumlahDiterima.value = 0;
        } else {
            jumlahDiterima.value = total;
        }
    }

    // Panggil fungsi pertama kali untuk menginisialisasi nilai jumlah diterima
    hitungJumlahDiterima();
</script>

<script>
    $(document).ready(function() {
        var kodeMapping = {
            '7.02.01.1.07.0005 Pengadaan Mebel': ['5.2.02.05.02.0001 Belanja Modal Mebel', '5.2.02.05.02.0005 Belanja Modal Alat Dapur', '5.2.02.05.02.0006 Belanja Modal Alat Rumah Tangga Lainnya (Home Use )', '5.2.02.05.02.0005 Belanja Modal Alat Dapur'],
            '7.02.01.1.07.0009 Pengadaan Gedung Kantor atau Bangunan Lainnya': ['5.2.03.01.01.0001 Belanja Modal Bangunan Gedung Kantor', '5.2.03.01.02.0002 Belanja Modal Rumah Negara Golongan II'],
            '7.02.01.1.09.0009 Pemeliharaan atau Rehabilitasi Gedung Kantor Lainnya': ['5.2.03.01.01.0001 Belanja Modal Bangunan Gedung Kantor', '5.2.03.01.02.0002 Belanja Modal Rumah Negara Golongan II'],
            '7.02.01.1.06.0009 Penyelenggaraan Rapat Koordinasi dan Konsultasi SKPD': ['5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat'],
            '7.02.02.6.03.0001 Peningkatan Kapasitas Lembaga Kemasyarakatan Kota Administrasi': ['5.1.02.01.01.0024 Belanja Alat/Bahan untuk Kegiatan Kantor-Alat Tulis Kantor', '5.1.02.01.01.0026 Belanja Alat/Bahan untuk Kegiatan Kantor- Bahan Cetak', '5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat', ' 5.1.02.02.01.0003 Honorarium Narasumber atau Pembahas, Moderator, Pembawa Acara, dan Panitia'],
            '7.02.02.6.03.0002 Pengurusan Perkara di Pengadilan Tingkat Kota Administrasi': ['5.1.02.01.01.0027 Belanja Alat/Bahan untuk Kegiatan Kantor-Benda Pos', '5.1.02.02.01.0004 Honorarium Tim Pelaksana Kegiatan dan Sekretariat Tim Pelaksana Kegiatan'],
            '7.02.02.6.03.0003 Penyelesaian Sengketa Pertanahan Tingkat Kota Administrasi': ['5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat', '5.1.02.02.01.0003 Honorarium Narasumber atau Pembahas, Moderator, Pembawa Acara, dan Panitia'],
            '7.02.02.6.03.0004 Peningkatan Kesadaran Hukum dan Hak Asasi Manusia Tingkat Kota Administrasi': ['5.1.02.02.01.0003 Honorarium Narasumber atau Pembahas, Moderator, Pembawa Acara, dan Panitia', '5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat'],
            '7.02.02.6.03.0005 Peningkatan dan Pembinaan Kota Peduli Hak Asasi Manusia (HAM) Kota Administrasi': ['5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat'],
            '7.02.02.6.03.0006 Penyusunan Laporan dan Evaluasi Kinerja Walikota Administrasi': ['5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat'],
            '7.02.02.6.03.0007 Penyusunan Laporan Instansi Pemerintah (LKIP) Kota Administrasi': ['5.1.02.01.01.0025 Belanja Alat/Bahan untuk Kegiatan Kantor- Kertas dan Cover', '5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat'],
            '7.02.02.6.03.0008 Pelaksanaan Koordinasi, Pemantauan dan Evaluasi dan Pembentukan Kewirausahaan Pada Kota Administrasi': ['5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat'],
            '7.02.02.6.03.0015 Pelaksanaan Partisipasi Kota Administrasi dalam Asosiasi Pemerintah Kota Seluruh Indonesia (APEKSI)': ['5.1.02.02.01.0066 Belanja Registrasi/Keanggotaan'],
            '7.02.02.6.03.0016 Pembinaan dan Evaluasi Kecamatan dan Kelurahan Kota Administrasi': ['5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat'],
            '7.02.02.6.03.0018 Pelaksanaan Rapim dan Rakorwil Kota Administrasi': ['5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat'],
            '7.02.02.6.03.0020 Pelaksanaan Monitoring dan Evaluasi/Pembangunan/Rehab Total/Rehab Sedang Kantor Lurah Kota Administrasi': ['5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat'],
            '7.02.02.6.03.0022 Pelaksanaan Koordinasi, Pemantauan dan Evaluasi Pembangunan dan Pemanfaatan Ruang Bangunan': ['5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat'],
            '7.02.02.6.03.0024 Penyusunan dan Evaluasi Standar Operasional dan Prosedur Kota Administrasi': ['5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat'],
            '7.02.02.6.03.0025 Pengendalian dan Evaluasi Penanganan Pengaduan Masyarakat Kota Administrasi': ['5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat'],
            '7.02.02.6.03.0026 Pengendalian dan Evaluasi Pelayanan Publik Tingkat Kota Administrasi': ['5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat'],
            '7.02.02.6.03.0027 Pelaksanaan Koordinasi Pengukuran Kepuasan Masyarakat Terhadap Pelayanan Publik di Kota Administrasi': ['5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat'],
            '7.02.02.6.03.0028 Pembinaan Administrasi Kepegawaian Kota Administrasi': ['5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat'],
            '7.02.02.6.03.0039 Peningkatan Tugas dan Fungsi Dewan Kota Administrasi': ['5.1.02.02.01.0004 Honorarium Tim Pelaksana Kegiatan dan Sekretariat Tim Pelaksana Kegiatan', '5.1.02.02.01.0006 Honorarium Penyuluhan atau Pendampingan', '5.1.02.01.01.0024 Belanja Alat/Bahan untuk Kegiatan Kantor-Alat Tulis Kantor', '5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat', '5.1.02.01.01.0064 Belanja Pakaian Dinas Lapangan (PDL)', '5.1.02.01.01.0076 Belanja Pakaian Olahraga', '5.1.02.01.01.0026 Belanja Alat/Bahan untuk Kegiatan Kantor- Bahan Cetak', '5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat', '5.1.02.01.01.0026 Belanja Alat/Bahan untuk Kegiatan Kantor- Bahan Cetak'],
            '7.02.02.6.03.0044 Penagihan Kewajiban Fasos Fasum dan Sinkronisasi Data SIPPT Kota Administrasi': ['5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat'],
            '7.02.02.6.03.0045 Pelaksanaan Koordinasi, Pengendalian, Pemantauan, dan Evaluasi Kegiatan di Bawah Koordinasi Asisten Perekonomian dan Pembangunan Kota Administrasi': ['5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat']

        };

        // Function to populate Kode Rekening dropdown based on selected Kode Kegiatan
        $('#kode_kegiatan').change(function() {
            var selectedKode = $(this).val();
            var kodeRekeningDropdown = $('#kode_rekening');

            // Clear existing options
            kodeRekeningDropdown.empty();

            // Check if the selected Kode Kegiatan has a mapping
            if (kodeMapping.hasOwnProperty(selectedKode)) {
                // Populate Kode Rekening dropdown with options from the mapping
                kodeMapping[selectedKode].forEach(function(kode) {
                    kodeRekeningDropdown.append('<option value="' + kode + '">' + kode + '</option>');
                });
            } else {
                kodeRekeningDropdown.append('<option value="">-- Pilih --</option>');
            }
        });

        // Trigger change event on Kode Kegiatan dropdown if it has a selected value initially
        $('#kode_kegiatan').trigger('change');
    });
</script>