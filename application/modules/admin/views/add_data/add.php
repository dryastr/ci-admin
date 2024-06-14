<!-- <?php

        $count_kegiatan = 0;

        ?>

<script>
function updateOptions(selectedKegiatan) {
    var rekeningSelect = document.getElementById("kode_rekening_" + selectedKegiatan);
    var rekeningRevealed;

    var count_loop = 0;
    var count_kegiatan = parseInt(document.getElementById("count_kegiatan").innerHTML); // Parse integer from innerHTML
    while (count_loop <= count_kegiatan) {
        var checkRekSelect = document.getElementById("kode_rekening_" + count_loop);
        if (checkRekSelect) { // Check if element exists
            if (!checkRekSelect.hidden) {
                rekeningRevealed = checkRekSelect;
                rekeningRevealed.required = false;
                rekeningRevealed.hidden = true;
                rekeningRevealed.setAttribute("class", "");
            }
        }
        count_loop += 1;
    }

    if (rekeningSelect) { // Check if element exists
        rekeningSelect.hidden = false;
        rekeningSelect.required = true;
        rekeningSelect.setAttribute("class", "form-control");
    }
}

</script> -->

<form action="<?php echo base_url('admin/add_data/create'); ?>" id="create" enctype="multipart/form-data" method="post" accept-charset="utf-8">
    <div class="box-body">
        <div id="status"></div>
        <div class="form-group col-md-4 col-sm-12">
            <label for="nama_penyedia">Nama Penyedia</label>
            <input type="text" class="form-control" id="nama_penyedia" name="nama_penyedia" value="" placeholder="" required>
            <span id="error_nama_penyedia" class="has-error"><?php echo form_error('nama_penyedia'); ?></span>
        </div>
        <div class="form-group col-md-4 col-sm-12">
            <label for="npwp">NPWP</label>
            <input type="text" class="form-control" id="npwp" name="npwp" value="" placeholder="" required>
            <span id="error_npwp" class="has-error"><?php echo form_error('npwp'); ?></span>
        </div>
        <div class="form-group col-md-4 col-sm-12">
            <label for="no_pesanan">No Pesanan</label>
            <input type="text" class="form-control" id="no_pesanan" name="no_pesanan" value="" placeholder="" required>
            <span id="error_no_pesanan" class="has-error"><?php echo form_error('no_pesanan'); ?></span>
        </div>

        <div class="form-group col-md-4 col-sm-12">
            <label for="nama_bank">Nama Bank</label>
            <select name="nama_bank" id="nama_bank" class="form-control" required>
                <option value="">-- Pilih --</option>
                <?php
                if ($this->db->table_exists('table_referensi_bank')) {
                    $query = $this->db->get('table_referensi_bank');
                    if ($query->num_rows() > 0) {
                        foreach ($query->result() as $kode_bank) {
                            echo '<option value="' . $kode_bank->nama_bank . '">' . $kode_bank->nama_bank . '</option>';
                        }
                    } else {
                        echo '<option value="">Data kosong</option>';
                    }
                } else {
                    echo '<option value="">Tabel table_referensi_bank tidak ditemukan</option>';
                }
                ?>
            </select>
            <span id="error_nama_bank" class="has-error"><?php echo form_error('nama_bank'); ?></span>
        </div>
        <div class="form-group col-md-4 col-sm-12">
            <label for="bagian">Bagian</label>
            <select name="bagian" id="bagian" class="form-control" required>
                <option value="">-- Pilih --</option>
                <option value="Bagian Umum">Bagian Umum</option>
                <option value="Bagian Pemerintahan">Bagian Pemerintahan</option>
                <option value="Bagian P2K">Bagian P2K</option>
                <option value="Bagian KKPP">Bagian KKPP</option>
                <option value="Bagian Hukum">Bagian Hukum</option>
                <option value="Bagian Kesra">Bagian Kesra</option>
                <option value="Bagian PKLH">Bagian PKLH</option>
            </select>
            <span id="error_bagian" class="has-error"><?php echo form_error('bagian'); ?></span>
        </div>

        <div class="form-group col-md-4 col-sm-12">
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
        <div class="form-group col-md-4 col-sm-12">
            <label for="kode_rekening">Kode Rekening</label>
            <select name="kode_rekening" id="kode_rekening" class="form-control" required>
                <option value="">-- Pilih --</option>
            </select>
        </div>

        <div class="form-group col-md-4 col-sm-12">
            <label for="jumlah_pengajuan">Jumlah Pengajuan</label>
            <input type="text" class="form-control" id="jumlah_pengajuan" name="jumlah_pengajuan" value="" placeholder="" required>
            <span id="error_jumlah_pengajuan" class="has-error"><?php echo form_error('jumlah_pengajuan'); ?></span>
        </div>

        <div class="form-group col-md-4 col-sm-12">
            <label for="potongan_pph">Potongan PPH</label>
            <select class="form-control" id="potongan_pph" name="potongan_pph" required>
                <option value="">-- Pilih --</option>
                <?php
                if ($this->db->table_exists('table_referensi_potongan')) {
                    $query = $this->db->get('table_referensi_potongan');
                    if ($query->num_rows() > 0) {
                        foreach ($query->result() as $potongan) {
                            echo '<option value="' . $potongan->nilai_potongan . '">' . $potongan->nilai_potongan . '</option>';
                        }
                    } else {
                        echo '<option value="">Data kosong</option>';
                    }
                } else {
                    echo '<option value="">Tabel table_referensi_potongan tidak ditemukan</option>';
                }
                ?>
            </select>
            <span id="error_potongan_pph" class="has-error"><?php echo form_error('potongan_pph'); ?></span>
        </div>
        <div class="form-group col-md-4 col-sm-12">
            <label for="biaya_kirim_uang">Biaya Kirim Uang</label>
            <input type="text" class="form-control" id="biaya_kirim_uang" name="biaya_kirim_uang" value="" placeholder="" required>
            <span id="error_biaya_kirim_uang" class="has-error"><?php echo form_error('biaya_kirim_uang'); ?></span>
        </div>
        <div class="form-group col-md-4 col-sm-12">
            <label for="jumlah_diterima">Jumlah Diterima</label>
            <input type="text" class="form-control" id="jumlah_diterima" name="jumlah_diterima" value="" placeholder="" required>
            <span id="error_jumlah_diterima" class="has-error"><?php echo form_error('jumlah_diterima'); ?></span>
        </div>
        <div class="clearfix"></div>
        <div class="form-group col-md-12">
            <label for="keterangan">Keterangan</label>
            <textarea class="form-control" id="keterangan" name="keterangan" rows="3" required></textarea>
            <span id="error_keterangan" class="has-error"><?php echo form_error('keterangan'); ?></span>
        </div>
        <div class="form-group col-md-4 col-sm-12">
            <label for="jenis_spj">Jenis SPJ</label>
            <select class="form-control" id="jenis_spj" name="jenis_spj" required>
                <option value="SPJ-LSG">SPJ-LSG</option>
                <option value="SPJ-LS BARANG JASA KIRIM">SPJ-LS BARANG JASA KIRIM</option>
                <option value="SPJ-UP/UG/TU">SPJ-UP/UG/TU</option>
            </select>
            <span id="error_jenis_spj" class="has-error"><?php echo form_error('jenis_spj'); ?></span>
        </div>
        <div class="form-group col-md-12">
            <input type="submit" id="submit" name="submit" value="Save" class="btn btn-primary">
            <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
        </div>
    </div>
</form>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    var potonganPPH = document.getElementById('potongan_pph');
    var biayaKirimUang = document.getElementById('biaya_kirim_uang');
    var jumlahPengajuan = document.getElementById('jumlah_pengajuan');
    var jumlahDiterima = document.getElementById('jumlah_diterima');

    potonganPPH.addEventListener('input', hitungJumlahDiterima); // Ganti event listener menjadi input
    biayaKirimUang.addEventListener('input', hitungJumlahDiterima);
    jumlahPengajuan.addEventListener('input', hitungJumlahDiterima);

    function hitungJumlahDiterima() {
        var potongan = 0;
        if (!isNaN(parseFloat(potonganPPH.value))) { // Validasi input potongan PPH
            potongan = parseFloat(potonganPPH.value) / 100 * parseFloat(jumlahPengajuan.value);
        }
        var biayaKirim = parseFloat(biayaKirimUang.value);
        var total = parseFloat(jumlahPengajuan.value) - potongan - biayaKirim;

        if (!isNaN(total) && total >= 0) {
            jumlahDiterima.value = total.toFixed(2);
        } else {
            jumlahDiterima.value = '0.00';
        }
    }

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