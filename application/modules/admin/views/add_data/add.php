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
            <select name="kode_kegiatan" id="kode_kegiatan" class="form-control" onchange="updateOptions(this.value);" required>
                <option value="0">-- Pilih --</option>
                <?php
                if ($this->db->table_exists('table_referensi_kode_kegiatan')) {
                    $query = $this->db->get('table_referensi_kode_kegiatan');
                    if ($query->num_rows() > 0) {
                        foreach ($query->result() as $kode_kegiatan) {
                            echo '<option value="' . $kode_kegiatan->id . '">' . $kode_kegiatan->kode_kegiatan . '</option>';
                        }
                    } else {
                        echo '<option value="">Data kosong</option>';
                    }
                } else {
                    echo '<option value="">Tabel table_referensi_kode_kegiatan tidak ditemukan</option>';
                }
                ?>
            </select>
            <span id="error_kode_kegiatan" class="has-error"><?php echo form_error('kode_kegiatan'); ?></span>
        </div>
        <p id="count_kegiatan" hidden><?= $count_kegiatan ?></p>

        <div class="form-group col-md-4 col-sm-12">
            <label for="kode_rekening">Kode Rekening</label>
            <select name="kode_rekening" id="kode_rekening_0" class="form-control" required>
                <option value="">-- Pilih --</option>
                <?php
                $hostname = 'localhost';
                $username = 'root';
                $password = '';
                $database = 'admin_kominfo';
                $port = '3306';

                $conn = mysqli_connect($hostname, $username, $password, $database, $port);

                if (!$conn) {
                    die("Connection failed: " . mysqli_connect_error());
                }

                $query = "SELECT * FROM table_referensi_kode_rekening";
                $result = mysqli_query($conn, $query);

                if (mysqli_num_rows($result) > 0) {
                    while ($row = mysqli_fetch_assoc($result)) {
                        echo '<option value="' . $row['id'] . '">' . $row['kode_rekening'] . '</option>';
                    }
                } else {
                    echo '<option value="">Tidak ada data</option>';
                }
                ?>
            </select>
            <span id="error_kode_rekening" class="has-error"><?php echo form_error('kode_rekening'); ?></span>
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