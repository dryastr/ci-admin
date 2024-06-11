<!DOCTYPE html>
<html lang="en">
<head>
  <title>Import CSV File Data into MySQL Database using PHP</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.24/css/dataTables.bootstrap.min.css">

  <style type="text/css">
    .panel-heading a{float: right;}
    #importFrm{margin-bottom: 20px;display: none;}
    #importFrm input[type=file] {display: inline;}
  </style>
</head>
<body>

<div class="container-fluid">
    <h2 class="text-center">Import CSV File Data</h2>
    <div class="row">
        <div class="col-xs-12">
            <?php if(!empty($status)){
                echo '<div class="alert alert-danger">'.$status.'</div>';
            } ?>
            <div class="panel panel-default">
                <div class="panel-heading">
                    data transaksi
                    <a href="javascript:void(0);" onclick="$('#importFrm').slideToggle();" class="pull-right">Import data by csv</a>
                </div>
                <div class="panel-body">
                    <form action="<?php echo site_url("admin/excel/upload_file");?>" method="post" enctype="multipart/form-data" id="importFrm">
                        <input type="file" name="file" />
                        <input type="submit" class="btn btn-primary" name="importSubmit" value="IMPORT">
                    </form>
                    <div class="table-responsive">
                        <table class="table table-bordered" id="myTable">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nama Penyedia</th>
                                    <th>Nama Bank</th>
                                    <th>Kode Kegiatan</th>
                                    <th>No Pesanan</th>
                                    <th>npwp</th>
                                    <th>Bagian</th>
                                    <th>Kode Rekening</th>
                                    <th>Jumlah Pengajuan</th>
                                    <th>Potongan PPH</th>
                                    <th>Biaya Kirim Uang</th>
                                    <th>Jumlah Diterima</th>
                                    <th>Keterangan</th>
                                    <th>Jenis SPJ</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                //get rows query
                                $query = $this->db->query("SELECT * FROM data_transaksi ORDER BY id")->result();
                                if(count($query)>0){
                                    foreach($query as $row){ ?>
                                        <tr>
                                            <td><?php echo $row->id; ?></td>
                                            <td><?php echo $row->nama_penyedia; ?></td>
                                            <td><?php echo $row->nama_bank; ?></td>
                                            <td><?php echo $row->kode_kegiatan; ?></td>
                                            <td><?php echo $row->no_pesanan; ?></td>
                                            <td><?php echo $row->npwp; ?></td>
                                            <td><?php echo $row->bagian; ?></td>
                                            <td><?php echo $row->kode_rekening; ?></td>
                                            <td><?php echo $row->jumlah_pengajuan; ?></td>
                                            <td><?php echo $row->potongan_pph; ?></td>
                                            <td><?php echo $row->biaya_kirim_uang; ?></td>
                                            <td><?php echo $row->jumlah_diterima; ?></td>
                                            <td><?php echo $row->keterangan; ?></td>
                                            <td><?php echo $row->jenis_spj; ?></td>
                                        </tr>
                                <?php   } 
                                } else { ?>
                                    <tr><td colspan="12">No member(s) found.....</td></tr>
                                <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.24/js/dataTables.bootstrap.min.js"></script>
<script>
    $(document).ready(function() {
        $('#myTable').DataTable();
    });
</script>

</body>
</html>
