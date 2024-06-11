<!DOCTYPE html>
<html lang="en">
<head>
  <title>Dashboard</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <!-- <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet"> -->
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.24/css/dataTables.bootstrap.min.css">

  <style type="text/css">
    .panel-heading a{float: right;}
    #importFrm{margin-bottom: 20px;display: none;}
    #importFrm input[type=file] {display: inline;}
  </style>
</head>
<body>
    <!-- Info boxes -->
<div class="row">
    <div class="col-md-3 col-sm-6 col-xs-12">
        <div class="info-box">
            <span class="info-box-icon bg-aqua"><i class="fa fa-edit"></i></span>

            <div class="info-box-content">
                <span class="info-box-text">Manual Input<br>
                    <?php echo date('d-m-Y'); ?></span>
                <span class="info-box-number"></span>
                <span><a href="<?php echo site_url('admin/add_data/'); ?>" class="small-box-footer">Next page<i
                                class="fa fa-arrow-circle-right"></i></a></span>
            </div>
            <!-- /.info-box-content -->
        </div>
        <!-- /.info-box -->
    </div>

    <div class="clearfix visible-sm-block"></div>

<div class="col-md-3 col-sm-6 col-xs-12">
    <div class="info-box">
        <span class="info-box-icon bg-green"><i class="fa fa-book"></i></span>

        <div class="info-box-content">
            <span class="info-box-text">Input By CSV</span>
            <span class="info-box-number"></span>
            <a href="<?php echo site_url('admin/excel/index'); ?>" class="small-box-footer">Next page<i
                        class="fa fa-arrow-circle-right"></i></a>
        </div>
        <!-- /.info-box-content -->
    </div>
    <!-- /.info-box -->
</div>
    <!-- /.col -->
    <div class="col-md-3 col-sm-6 col-xs-12">
        <div class="info-box">
            <span class="info-box-icon bg-red"><i class="fa fa-users"></i></span>

            <div class="info-box-content">
                <span class="info-box-text">Manage user</span>
                <span class="info-box-number"></span>
                <a href="<?php echo site_url('admin/user/'); ?>" class="small-box-footer">Next Page<i
                            class="fa fa-arrow-circle-right"></i></a>
            </div>
            <!-- /.info-box-content -->
        </div>
        <!-- /.info-box -->
    </div>
    <!-- /.col -->
</div>
<!-- /.row -->



<div class="container-fluid">
    <h2 class="text-center">Data Table</h2>
    <div class="d-flex justify-content-end align-items-center text-right mb-3" style="margin-bottom: 5px;">
        <a href="<?php echo site_url('export-data-transaksi'); ?>" class="btn btn-success mt-3">Cetak ke Excel</a>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <?php if(!empty($status)){
                echo '<div class="alert alert-danger">'.$status.'</div>';
            } ?>
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="myTable">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nama Penyedia</th>
                                    <th>Nama Bank</th>
                                    <th>Kode Kegiatan</th>
                                    <th>No Pesanan</th>
                                    <th>NPWP</th>
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
