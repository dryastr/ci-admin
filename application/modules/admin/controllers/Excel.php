<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Excel extends Admin_Base_Controller {

    public function __construct() {
        parent::__construct();

        $group = 'admin';
        if (!$this->ion_auth->in_group($group)) {
            $this->session->set_flashdata('message', 'You must be an administrator to view the users page.');
            redirect('admin/dashboard/access_denied');
        }
    }
    public function index()
	{
        $this->data['title'] = 'Manage data';
        $this->data['breadcrumbs'] = 'Manage data';
		$this->load->view('admin/excel/index');
	}
	public function upload_file(){
		$csvMimes = array('application/vnd.ms-excel','text/plain','text/csv','text/tsv');
	    if(!empty($_FILES['file']['name']) && in_array($_FILES['file']['type'],$csvMimes)){
	        if(is_uploaded_file($_FILES['file']['tmp_name'])){
	            
	            //open uploaded csv file with read only mode
	            $csvFile = fopen($_FILES['file']['tmp_name'], 'r');
	            
	            // skip first line
	            // if your csv file have no heading, just comment the next line
	            fgetcsv($csvFile);
	            
	            //parse data from csv file line by line
	            while(($line = fgetcsv($csvFile)) !== FALSE){
	                //check whether member already exists in database with same email
	                $result = $this->db->get_where("data_transaksi", array("nama_penyedia"=>$line[0]))->result();
	                if(count($result) > 0){
	                    //update member data
	                    $this->db->update("data_transaksi", array("nama_bank"=>$line[1], "kode_kegiatan"=>$line[2], "no_pesanan"=>$line[3], "kode_rekening"=>$line[4], "jumlah_pengajuan"=>$line[5], "potongan_pph"=>$line[6], "biaya_kirim_uang"=>$line[7], "jumlah_diterima"=>$line[8], "keterangan"=>$line[9], "jenis_spj"=>$line[10],"npwp"=>$line[11], "bagian"=>$line[12]), array("nama_penyedia"=>$line[0]));
	                }else{
	                    //insert member data into database
	                    $this->db->insert("data_transaksi", array("nama_penyedia"=>$line[0],"nama_bank"=>$line[1], "kode_kegiatan"=>$line[2], "no_pesanan"=>$line[3], "kode_rekening"=>$line[4], "jumlah_pengajuan"=>$line[5], "potongan_pph"=>$line[6], "biaya_kirim_uang"=>$line[7], "jumlah_diterima"=>$line[8], "keterangan"=>$line[9], "jenis_spj"=>$line[10], "npwp"=>$line[11], "bagian"=>$line[12] ));
	                }
	            }
	            
	            //close opened csv file
	            fclose($csvFile);

	            // $qstring["status"] = 'Success';
                redirect(base_url('admin/excel/index'));

	        }else{
	            $qstring["status"] = 'Error';
	        }
	    }else{
	        $qstring["status"] = 'Invalid file';
	    }
	    $this->load->view('admin/excel/index',$qstring);
	}
}