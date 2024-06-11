<?php
class Add_data_model extends CI_Model
{
    public $_table = 'data_transaksi';

    function __construct()
    {
        parent::__construct();
        $this->load->database(); // Load database untuk penggunaan Query Builder

    }

    public function create($insertData)
    {
        $result = $this->db->insert($this->_table, $insertData);
        return $result; // Mengembalikan hasil dari operasi penambahan data ke tabel
    }

    public function get()
      {
         return $this->db->get($this->_table)->result(); // Mengembalikan semua data
      }

    // public function get_kode_kegiatan(){
    //     $this->db->select('id', 'kode_kegiatan');
    //     $this->db->from('table_referensi_kode_kegiatan');
    //     $query = $this->db->get();
    //     return $query->result_array();
    // }

    
    
    // public function get_data_by_id($id) {
    //     $query = $this->db->get_where('data_transaksi', array('id' => $id));
    //     return $query->row();
    // }

    // // Fungsi untuk menyimpan pembaruan data
    // public function update_data($id, $data) {
    //     $this->db->where('id', $id);
    //     $this->db->update('data_transaksi', $data);
    // }

    public function get_data_by_id($id) {
        $query = $this->db->get_where('data_transaksi', array('id' => $id));
        return $query->row();
    }
    
    // Fungsi untuk menyimpan pembaruan data
    public function update_data($id, $data) {
        $this->db->where('id', $id);
        $this->db->update('data_transaksi', $data);
    }
   
}
?>
