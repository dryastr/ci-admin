<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Add_data extends Admin_Base_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Add_data_model');

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
        // $this->load->view('admin/add_data/manage', $this->data);
        $this->get_all(); // Panggil fungsi get_all untuk mendapatkan data
    }

    public function create_form()
    {
        $this->data['groups'] = $this->ion_auth->groups()->result();
        $this->data['breadcrumbs'] = 'Manage data';
        $this->data['title'] = 'Manage data';
        $this->load->view('admin/add_data/add', $this->data);
    }

    public function create()
    {
        $this->load->library('form_validation');
        $this->form_validation->set_rules('nama_penyedia', 'Nama Penyedia', 'required');
        $this->form_validation->set_rules('npwp', 'NPWP', 'required');
        $this->form_validation->set_rules('no_pesanan', 'No Pesanan', 'required');
        $this->form_validation->set_rules('nama_bank', 'Nama Bank', 'required');
        $this->form_validation->set_rules('bagian', 'Bagian', 'required');
        $this->form_validation->set_rules('kode_kegiatan', 'Kode Kegiatan', 'required');
        $this->form_validation->set_rules('kode_rekening', 'Kode Rekening', 'required');
        $this->form_validation->set_rules('jumlah_pengajuan', 'Jumlah Pengajuan', 'required|numeric');
        $this->form_validation->set_rules('potongan_pph', 'Potongan PPH', 'required|numeric');
        $this->form_validation->set_rules('biaya_kirim_uang', 'Biaya Kirim Uang', 'required|numeric');
        $this->form_validation->set_rules('jumlah_diterima', 'Jumlah Diterima', 'required|numeric');
        $this->form_validation->set_rules('keterangan', 'Keterangan', 'required');
        $this->form_validation->set_rules('jenis_spj', 'Jenis SPJ', 'required');

        if ($this->form_validation->run() == FALSE) {
            $this->create_form();
        } else {
            $data = array(
                'nama_penyedia' => $this->input->post('nama_penyedia'),
                'npwp' => $this->input->post('npwp'),
                'no_pesanan' => $this->input->post('no_pesanan'),
                'nama_bank' => $this->input->post('nama_bank'),
                'bagian' => $this->input->post('bagian'),
                'kode_kegiatan' => $this->input->post('kode_kegiatan'),
                'kode_rekening' => $this->input->post('kode_rekening'),
                'jumlah_pengajuan' => $this->input->post('jumlah_pengajuan'),
                'potongan_pph' => $this->input->post('potongan_pph'),
                'biaya_kirim_uang' => $this->input->post('biaya_kirim_uang'),
                'jumlah_diterima' => $this->input->post('jumlah_diterima'),
                'keterangan' => $this->input->post('keterangan'),
                'jenis_spj' => $this->input->post('jenis_spj')
            );

            $this->Add_data_model->create($data);
            redirect(base_url('admin/add_data/'));
        }
    }

    public function get_all()
    {
        // Mengambil data dari model
        $data['query'] = $this->Add_data_model->get();

        // Memuat view dan meneruskan data
        $this->load->view('admin/add_data/manage', $data);
    }
    public function edit_data($id)
    {
        $this->setOutputMode(NORMAL);
        if ($this->input->is_ajax_request()) {
            // Ambil data berdasarkan ID dari model
            $data['query'] = $this->Add_data_model->get_data_by_id($id);
            // Tampilkan view untuk mengedit data dengan data yang telah diambil
            $this->load->view('admin/add_data/edit', $data);
        } else {
            redirect('admin/dashboard');
        }
    }

    public function update_data()
    {
        $id = $this->input->post('id');
        // Mengambil data dari form edit
        $data = array(
            'nama_penyedia' => $this->input->post('nama_penyedia'),
            'nama_bank' => $this->input->post('nama_bank'),
            'kode_kegiatan' => $this->input->post('kode_kegiatan'),
            'npwp' => $this->input->post('npwp'),
            'bagian' => $this->input->post('bagian'),
            'no_pesanan' => $this->input->post('no_pesanan'),
            'kode_rekening' => $this->input->post('kode_rekening'),
            'jumlah_pengajuan' => $this->input->post('jumlah_pengajuan'),
            'potongan_pph' => $this->input->post('potongan_pph'),
            'biaya_kirim_uang' => $this->input->post('biaya_kirim_uang'),
            'jumlah_diterima' => $this->input->post('jumlah_diterima'),
            'keterangan' => $this->input->post('keterangan'),
            'jenis_spj' => $this->input->post('jenis_spj'),
            'edit_date' => $this->input->post('edit_date'),
            'edit_by' => $this->input->post('edit_by')

        );
        // Memanggil model untuk melakukan pembaruan data
        $this->load->model('Add_data_model');
        $this->Add_data_model->update_data($id, $data);
        // Redirect ke halaman yang sesuai setelah pembaruan berhasil
        redirect('admin/add_data/');
    }

    // public function edit_data($id) {
    //     $this->setOutputMode(NORMAL);
    //     if ($this->input->is_ajax_request()) {
    //         // Ambil data berdasarkan ID dari model
    //         $data['query'] = $this->Add_data_model->get_data_by_id($id);
    //         // Tampilkan view untuk mengedit data dengan data yang telah diambil
    //         $this->load->view('admin/add_data/edit', $data);
    //     } else {
    //         redirect('admin/dashboard');
    //     }
    // }



    // // Fungsi untuk menyimpan pembaruan data
    // public function update_data() {
    //     $id = $this->input->post('id');
    //     // Mengambil data dari form edit
    //     $data = array(
    //         'nama_penyedia' => $this->input->post('nama_penyedia'),
    //         'nama_bank' => $this->input->post('nama_bank'),
    //         'kode_kegiatan' => $this->input->post('kode_kegiatan'),
    //         'npwp' => $this->input->post('npwp'),
    //         'bagian' => $this->input->post('bagian'),
    //         'no_pesanan' => $this->input->post('no_pesanan'),
    //         'kode_rekening' => $this->input->post('kode_rekening'),
    //         'jumlah_pengajuan' => $this->input->post('jumlah_pengajuan'),
    //         'potongan_pph' => $this->input->post('potongan_pph'),
    //         'biaya_kirim_uang' => $this->input->post('biaya_kirim_uang'),
    //         'jumlah_diterima' => $this->input->post('jumlah_diterima'),
    //         'keterangan' => $this->input->post('keterangan'),
    //         'jenis_spj' => $this->input->post('jenis_spj')
    //     );
    //     // Memanggil model untuk melakukan pembaruan data
    //     $this->Add_data_model->update_data($id, $data);
    //     // Redirect ke halaman yang sesuai setelah pembaruan berhasil
    //     redirect('admin/add_data/');
    // }
    public function delete($id)
    {
        $this->Add_data_model-- > delete($id);
        redirect(base_url('admin/add_data/'));
    }
}
