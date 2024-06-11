<div class="row">
    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                <p class="panel-title">manage data
                    <a href="<?php echo base_url('admin/add_data/create_form'); ?>" class="btn btn-success">
                        <i class="glyphicon glyphicon-plus"></i> Add New Data
                    </a>
                </p>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-12 col-sm-12 table-responsive">
                        <table id="manage_all" class="table table-bordered table-hover table-responsive">
                            <thead>
                                <tr>
                                    <th>no</th>
                                    <th>Nama Penyedia</th>
                                    <th>NPWP</th>
                                    <th>No Pesanan</th>
                                    <th>Nama Bank</th>
                                    <th>Bagian</th>
                                    <th>Kode Kegiatan</th>
                                    <th>Kode Rekening</th>
                                    <th>Jumlah Pengajuan</th>
                                    <th>Potongan PPH</th>
                                    <th>Biaya Kirim Uang</th>
                                    <th>Jumlah Diterima</th>
                                    <th>Keterangan</th>
                                    <th>Jenis SPJ</th>
                                    <th>#</th>
                                </tr>
                            </thead>

                            <tbody>
                                <?php if (isset($query) && !empty($query)) : ?>
                                    <?php foreach ($query as $row) : ?>
                                        <tr>
                                            <td><?php echo $row->id; ?></td>
                                            <td><?php echo $row->nama_penyedia; ?></td>
                                            <td><?php echo $row->npwp; ?></td>
                                            <td><?php echo $row->no_pesanan; ?></td>
                                            <td><?php echo $row->nama_bank; ?></td>
                                            <td><?php echo $row->bagian; ?></td>
                                            <td><?php echo $row->kode_kegiatan; ?></td>
                                            <td><?php echo $row->kode_rekening; ?></td>
                                            <td><?php echo $row->jumlah_pengajuan; ?></td>
                                            <td><?php echo $row->potongan_pph; ?></td>
                                            <td><?php echo $row->biaya_kirim_uang; ?></td>
                                            <td><?php echo $row->jumlah_diterima; ?></td>
                                            <td><?php echo $row->keterangan; ?></td>
                                            <td><?php echo $row->jenis_spj; ?></td>
                                            <td style='text-align:center;'>
                                                <a data-toggle='tooltip' class='btn btn-primary btn-xs edit'>
                                                    <i class='fa fa-pencil-square-o'></i> </a>

                                            </td>

                                        </tr>


                                    <?php endforeach; ?>
                                <?php else : ?>
                                    <tr>
                                        <td colspan="12">No data available</td>
                                    </tr>
                                <?php endif; ?>


                            <tfoot>
                            </tfoot>
                        </table>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="modalUser" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-keyboard="false">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <p class="modal-title" id="myModalLabel"></p>
            </div>

            <div class="modal-body">
                <div id="modal_data"></div>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">
                    Close
                </button>
            </div>
        </div>
    </div>
</div>


<style>
    @media screen and (min-width: 768px) {
        #modalUser .modal-dialog {
            width: 75%;
            border-radius: 5px;
        }
    }

    .btn-group .btn {
        min-width: 70px;
    }
</style>

<script>
    function create() {

        $("#modal_data").empty();
        $('.modal-title').text('Add Data');

        $.ajax({
            type: 'POST',
            url: BASE_URL + 'admin/add_data/create_form',
            success: function(msg) {
                $("#modal_data").html(msg);
                $('#modalUser').modal('show');
            },
            error: function(result) {
                $("#modal_data").html("Sorry Cannot Load Data");
            }
        });

    }


    $(document).ready(function() {
        $("#manage_all").on("click", ".edit", function(e) {
            e.preventDefault();
            var id = $(this).closest('tr').find('td:first').text();
            editData(id);
        });

        function editData(id) {
            $.ajax({
                url: BASE_URL + 'admin/add_data/edit_data/' + id,
                type: 'GET',
                success: function(response) {
                    $('#modal_data').html(response);
                    $('.modal-title').text('Edit Data');
                    $('#modalUser').modal('show');
                },
                error: function() {
                    alert('Failed to load edit form');
                }
            });
        }
    });
</script>