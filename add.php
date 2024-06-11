<?php

    include 'connectDB.php';
    $query = 'SELECT * FROM table_referensi_kode_kegiatan';
    $kode_kegiatan = mysqli_query($conn, $query);
    $count_kegiatan = 0;

?>

<script>  
    function updateOptions(selectedKegiatan) {            
        var rekeningSelect = document.getElementById("kode_rekening_"+selectedKegiatan);   
        var rekeningRevealed;     
        
        count_loop = 0;
        while(count_loop <= document.getElementById("count_kegiatan").innerHTML){
            var checkRekSelect = document.getElementById("kode_rekening_"+count_loop);            
            if(!checkRekSelect.hidden){
                rekeningRevealed = checkRekSelect;
                rekeningRevealed.hidden = true;
            }
            count_loop += 1;
        }

        rekeningRevealed = document.getElementById("kode_rekening_"+selectedKegiatan);

        rekeningSelect.hidden = false;
    }
</script>

<body>
    <h2><b>Add</b></h2>
    <hr>
    <br>
    <p><b>Kode Kegiatan</b></p>
    <select name="" id="kode_kegiatan" onchange="updateOptions(this.value);">   
        <option value="0">-- Pilih --</option>     
        <?php
        while($row = $kode_kegiatan->fetch_assoc()) {
            echo '<option value="'.$row['id'].'">'.$row['kode_kegiatan'].'</option>';
            $count_kegiatan += 1;
        }
        ?>
    </select>
    <p id='count_kegiatan' hidden><?= $count_kegiatan ?></p>
    <br>
    <p><b>Kode Rekening</b></p>
    <select name="" id="kode_rekening_0">        
        <option value="">-- Pilih Kode Kegiatan --</option>
    </select>
    <?php

    $count_loop = 1;    
    while($count_loop != $count_kegiatan + 1){
        $query = "SELECT * FROM table_referensi_kode_rekening WHERE id IN (SELECT id_rekening FROM table_klasifikasi_kode WHERE id_kegiatan = ".$count_loop.");";
        $result = mysqli_query($conn, $query);  ?>

        <select name="" id="kode_rekening_<?= $count_loop ?>" hidden>        
            <?php
            while($row = $result->fetch_assoc()) {
                echo '<option value="'.$row['id'].'">'.$row['kode_rekening'].'</option>';                
            }
            ?>            
        </select>
        <?php        
        $count_loop += 1;
    }
    ?>
</body>