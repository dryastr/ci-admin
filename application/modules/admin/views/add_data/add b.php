<form action='<?php echo base_url('admin/add_data/create')?>' id='create' action="" enctype="multipart/form-data" method="post"accept-charset="utf-8">
    <div class="box-body">
        <div id="status"></div>
        <div class="form-group col-md-4 col-sm-12">
            <label for="nama_penyedia">Nama Penyedia</label>
            <input type="text" class="form-control" id="nama_penyedia" name="nama_penyedia" value="" placeholder="" required>
            <span id="error_nama_penyedia" class="has-error"></span>
        </div>
        <div class="form-group col-md-4 col-sm-12">
            <label for="npwp">NPWP</label>
            <input type="text" class="form-control" id="npwp" name="npwp" value="" placeholder="" required>
            <span id="error_npwp" class="has-error"></span>
        </div>
        <div class="form-group col-md-4 col-sm-12">
            <label for=""> No Pesanan </label>
            <input type="text" class="form-control" id="no_pesanan" name="no_pesanan" value="" placeholder="" required>
            <span id="error_no_pesanan" class="has-error"></span>
        </div>


        <div class="form-group col-md-4 col-sm-12">
            <label for="nama_bank">Nama Bank</label>
            <select name="nama_bank" id="nama_bank" class="form-control" required>
                <option value="">-- Pilih --</option>
                <option value="BRI">BRI</option>
                <option value="DKI">DKI</option>
            </select>
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
        </div>

        <div class="form-group col-md-4 col-sm-12">
            <label for="kode_kegiatan">Kode Kegiatan</label>
            <select name="kode_kegiatan" id="kode_kegiatan" class="form-control" required>
                <option value="">-- Pilih --</option>
                <?php
                if ($this->db->table_exists('table_referensi_kode_kegiatan')) {
                    $query = $this->db->get('table_referensi_kode_kegiatan');
                    if ($query->num_rows() > 0) {
                        foreach ($query->result() as $kode_kegiatan) {
                            echo '<option value="' . $kode_kegiatan->kode_kegiatan . '">' . $kode_kegiatan->kode_kegiatan . '</option>';
                        }
                    } else {
                        echo '<option value="">Data kosong</option>';
                    }
                } else {
                    echo '<option value="">Tabel table_referensi_kode_kegiatan tidak ditemukan</option>';
                }
                ?>
            </select>
        </div>
            


        <div class="form-group col-md-4 col-sm-12">
            <label for="kode_rekening">Kode Rekening</label>
            <select name="kode_rekening" id="kode_rekening" class="form-control" required>
                <option value="">-- Pilih --</option>
                <?php
                if ($this->db->table_exists('table_referensi_kode_rekening')) {
                    $query = $this->db->get('table_referensi_kode_rekening');
                    if ($query->num_rows() > 0) {
                        foreach ($query->result() as $kode_rekening) {
                            echo '<option value="' . $kode_rekening->kode_rekening . '">' . $kode_rekening->kode_rekening . '</option>';
                        }
                    } else {
                        echo '<option value="">Data kosong</option>';
                    }
                } else {
                    echo '<option value="">Tabel table_referensi_kode_rekening tidak ditemukan</option>';
                }
                ?>
            </select>
        </div>
        <div class="form-group col-md-4 col-sm-12">
            <label for=""> Jumlah Pengajuan </label>
            <input type="text" class="form-control" id="jumlah_pengajuan" name="jumlah_pengajuan" value="" placeholder="" required>
            <span id="error_jumlah_pengajuan" class="has-error"></span>
        </div>
        
        <div class="form-group col-md-4 col-sm-12">
            <label for=""> Potongan PPH </label>
            <select class="form-control" id="potongan_pph" name="potongan_pph" required>
                <option value="21%">21%</option>
                <option value="22%">22%</option>
                <option value="33%">33%</option>
            </select>
            <span id="error_potongan_pph" class="has-error"></span>
        </div>
        <div class="form-group col-md-4 col-sm-12">
            <label for=""> Biaya Kirim Uang </label>
            <input type="text" class="form-control" id="biaya_kirim_uang" name="biaya_kirim_uang" value="" placeholder="" required>
            <span id="error_biaya_kirim_uang" class="has-error"></span>
        </div>
        <div class="form-group col-md-4 col-sm-12">
            <label for=""> Jumlah Diterima </label>
            <input type="text" class="form-control" id="jumlah_diterima" name="jumlah_diterima" value="" placeholder="" required>
            <span id="error_jumlah_diterima" class="has-error"></span>
        </div>
        <div class="clearfix"></div>
        <div class="form-group col-md-12">
            <label for=""> Keterangan </label>
            <textarea class="form-control" id="keterangan" name="keterangan" rows="3" required></textarea>
            <span id="error_keterangan" class="has-error"></span>
        </div>
        <div class="form-group col-md-4 col-sm-12">
            <label for=""> Jenis SPJ </label>
            <select class="form-control" id="jenis_spj" name="jenis_spj" required>
                <option value="SPJ-LSG">SPJ-LSG</option>
                <option value="SPJ-LS BARANG JASA KIRIM">SPJ-LS BARANG JASA KIRIM</option>
                <option value="SPJ-UP/UG/TU">SPJ-UP/UG/TU</option>
            </select>
            <span id="error_jenis_spj" class="has-error"></span>
        </div>
        <div class="form-group col-md-12">
            <input type="submit" id="submit" name="submit" value="Save" class="btn btn-primary">
            <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
            <!-- <small><img id="loader" src="<?php echo site_url( 'assets/images/loadingg.gif' ); ?>"/></small> -->

      </div>
    </div>
    <!-- /.box-body -->
</form>

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
//     $(document).ready(function () {
//     $('#create').validate({
//         rules: {
//             nama_penyedia: {
//                 required: true
//             },
//             nama_bank: {
//                 required: true
//             },
//             kode_kegiatan: {
//                 required: true
//             },
//             no_pesanan: {
//                 required: true
//             },
//             kode_rekening: {
//                 required: true
//             },
//             jumlah_pengajuan: {
//                 required: true,
//                 number: true // Ensure it's a valid number
//             },
//             potongan_pph: {
//                 required: true
//             },
//             biaya_kirim_uang: { // Add validation for biaya_kirim_uang
//                 required: true,
//                 number: true
//             },
//             jumlah_diterima: {
//                 required: true,
//                 number: true
//             },
//             keterangan: {
//                 required: true
//             },
//             jenis_spj: {
//                 required: true
//             }
//         },
//         messages: {
//             nama_penyedia: {
//                 required: 'Please enter Nama Penyedia'
//             }
//         },
//         submitHandler: function (form) {
//         var myData = new FormData($("#create")[0]);
//         console.log("Data yang dikirim:", myData); // Tambahkan console log di sini

//         $.ajax({
//             url: '<?php echo base_url('admin/add_data/create'); ?>',
//             type: 'POST',
//             data: myData,
//             dataType: 'json',
//             cache: false,
//             processData: false,
//             contentType: false,
//             beforeSend: function () {
//                 $('#loader').show();
//                 $("#submit").prop('disabled', true); // disable button
//             },
//             success: function (data) {
//                 if (data.status === 'success') {
//                     reload_table();
//                     notify_view(data.status, data.message);
//                     $('#loader').hide();
//                     $("#submit").prop('disabled', false); // enable button
//                     $("html, body").animate({scrollTop: 0}, "slow");
//                     $('#modalUser').modal('hide'); // hide bootstrap modal
//                 } else if (data.status === 'error') {
//                     if (data.errors) {
//                         $.each(data.errors, function (key, val) {
//                             $('#error_' + key).html(val);
//                         });
//                     }
//                     $("#status").html(data.message); // Change '#status' to '#status'
//                     $('#loader').hide();
//                     $("#submit").prop('disabled', false); // enable button
//                     $("html, body").animate({scrollTop: 0}, "slow");
//                 }
//             }
//         });
//     }
//     });
// });
</script>


<script>
$(document).ready(function() {
    var kodeMapping = {
        '7.02.01.1.07.0005 Pengadaan Mebel': ['5.2.02.05.02.0001 Belanja Modal Mebel', '5.2.02.05.02.0005 Belanja Modal Alat Dapur', '5.2.02.05.02.0006 Belanja Modal Alat Rumah Tangga Lainnya (Home Use )', '5.2.02.05.02.0005 Belanja Modal Alat Dapur'],
        '7.02.01.1.07.0009 Pengadaan Gedung Kantor atau Bangunan Lainnya': ['5.2.03.01.01.0001 Belanja Modal Bangunan Gedung Kantor', '5.2.03.01.02.0002 Belanja Modal Rumah Negara Golongan II'],
        '7.02.01.1.09.0009 Pemeliharaan atau Rehabilitasi Gedung Kantor Lainnya': ['5.2.03.01.01.0001 Belanja Modal Bangunan Gedung Kantor', '5.2.03.01.02.0002 Belanja Modal Rumah Negara Golongan II'],
        '7.02.01.1.06.0009 Penyelenggaraan Rapat Koordinasi dan Konsultasi SKPD': ['5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat'],
        '7.02.02.6.03.0001 Peningkatan Kapasitas Lembaga Kemasyarakatan Kota Administrasi': ['5.1.02.01.01.0024 Belanja Alat/Bahan untuk Kegiatan Kantor-Alat Tulis Kantor' ,'5.1.02.01.01.0026 Belanja Alat/Bahan untuk Kegiatan Kantor- Bahan Cetak', '5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat',' 5.1.02.02.01.0003 Honorarium Narasumber atau Pembahas, Moderator, Pembawa Acara, dan Panitia'],
        '7.02.02.6.03.0002 Pengurusan Perkara di Pengadilan Tingkat Kota Administrasi': ['5.1.02.01.01.0027	Belanja Alat/Bahan untuk Kegiatan Kantor-Benda Pos', '5.1.02.02.01.0004	Honorarium Tim Pelaksana Kegiatan dan Sekretariat Tim Pelaksana Kegiatan'],
        '7.02.02.6.03.0003 Penyelesaian Sengketa Pertanahan Tingkat Kota Administrasi': ['5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat', '5.1.02.02.01.0003 Honorarium Narasumber atau Pembahas, Moderator, Pembawa Acara, dan Panitia'],
        '7.02.02.6.03.0004 Peningkatan Kesadaran Hukum dan Hak Asasi Manusia Tingkat Kota Administrasi': ['5.1.02.02.01.0003 Honorarium Narasumber atau Pembahas, Moderator, Pembawa Acara, dan Panitia','5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat'],
        '7.02.02.6.03.0005 Peningkatan dan Pembinaan Kota Peduli Hak Asasi Manusia (HAM) Kota Administrasi': ['5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat'],
        '7.02.02.6.03.0006 Penyusunan Laporan dan Evaluasi Kinerja Walikota Administrasi': ['5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat'],
        '7.02.02.6.03.0007 Penyusunan Laporan Instansi Pemerintah (LKIP) Kota Administrasi': ['5.1.02.01.01.0025 Belanja Alat/Bahan untuk Kegiatan Kantor- Kertas dan Cover', '5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat'],
        '7.02.02.6.03.0008 Pelaksanaan Koordinasi, Pemantauan dan Evaluasi dan Pembentukan Kewirausahaan Pada Kota Administrasi': ['5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat'],
        '7.02.02.6.03.0015 Pelaksanaan Partisipasi Kota Administrasi dalam Asosiasi Pemerintah Kota Seluruh Indonesia (APEKSI)':['5.1.02.02.01.0066 Belanja Registrasi/Keanggotaan'],
        '7.02.02.6.03.0016 Pembinaan dan Evaluasi Kecamatan dan Kelurahan Kota Administrasi':['5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat'],
        '7.02.02.6.03.0018 Pelaksanaan Rapim dan Rakorwil Kota Administrasi':['5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat'],
        '7.02.02.6.03.0020 Pelaksanaan Monitoring dan Evaluasi/Pembangunan/Rehab Total/Rehab Sedang Kantor Lurah Kota Administrasi':['5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat'],
        '7.02.02.6.03.0022 Pelaksanaan Koordinasi, Pemantauan dan Evaluasi Pembangunan dan Pemanfaatan Ruang Bangunan':['5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat'],
        '7.02.02.6.03.0024 Penyusunan dan Evaluasi Standar Operasional dan Prosedur Kota Administrasi':['5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat'],
        '7.02.02.6.03.0025 Pengendalian dan Evaluasi Penanganan Pengaduan Masyarakat Kota Administrasi':['5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat'],
        '7.02.02.6.03.0026 Pengendalian dan Evaluasi Pelayanan Publik Tingkat Kota Administrasi':['5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat'],
        '7.02.02.6.03.0027 Pelaksanaan Koordinasi Pengukuran Kepuasan Masyarakat Terhadap Pelayanan Publik di Kota Administrasi' :['5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat'],
        '7.02.02.6.03.0028 Pembinaan Administrasi Kepegawaian Kota Administrasi':['5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat'],
        '7.02.02.6.03.0039 Peningkatan Tugas dan Fungsi Dewan Kota Administrasi':['5.1.02.02.01.0004 Honorarium Tim Pelaksana Kegiatan dan Sekretariat Tim Pelaksana Kegiatan','5.1.02.02.01.0006 Honorarium Penyuluhan atau Pendampingan','5.1.02.01.01.0024 Belanja Alat/Bahan untuk Kegiatan Kantor-Alat Tulis Kantor','5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat', '5.1.02.01.01.0064 Belanja Pakaian Dinas Lapangan (PDL)','5.1.02.01.01.0076 Belanja Pakaian Olahraga','5.1.02.01.01.0026 Belanja Alat/Bahan untuk Kegiatan Kantor- Bahan Cetak','5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat', '5.1.02.01.01.0026 Belanja Alat/Bahan untuk Kegiatan Kantor- Bahan Cetak'],
        '7.02.02.6.03.0044 Penagihan Kewajiban Fasos Fasum dan Sinkronisasi Data SIPPT Kota Administrasi':['5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat'],
        '7.02.02.6.03.0045 Pelaksanaan Koordinasi, Pengendalian, Pemantauan, dan Evaluasi Kegiatan di Bawah Koordinasi Asisten Perekonomian dan Pembangunan Kota Administrasi':['5.1.02.01.01.0052 Belanja Makanan dan Minuman Rapat']

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
});
</script>
