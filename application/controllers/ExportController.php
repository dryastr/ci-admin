<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ExportController extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->database();
        $this->load->helper('url');
    }

    public function exportDataTransaksi() {
        // Load PhpSpreadsheet
        require 'vendor/autoload.php';
        $spreadsheet = new \PhpOffice\PhpSpreadsheet\Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();

        // Set header di Excel
        $sheet->setCellValue('A1', 'Nama Penyedia');
        $sheet->setCellValue('B1', 'Nama Bank');
        $sheet->setCellValue('C1', 'Kode Kegiatan');
        $sheet->setCellValue('D1', 'No Pesanan');
        $sheet->setCellValue('E1', 'Kode Rekening');
        $sheet->setCellValue('F1', 'Jumlah Pengajuan');
        $sheet->setCellValue('G1', 'Potongan PPH');
        $sheet->setCellValue('H1', 'Biaya Kirim Uang');
        $sheet->setCellValue('I1', 'Jumlah Diterima');
        $sheet->setCellValue('J1', 'Keterangan');
        $sheet->setCellValue('K1', 'Jenis SPJ');
        $sheet->setCellValue('L1', 'NPWP');
        $sheet->setCellValue('M1', 'Bagian');

        // Fetch data dari database
        $query = $this->db->get('data_transaksi');
        $dataTransaksi = $query->result();

        // Isi data di Excel
        $row = 2;
        foreach ($dataTransaksi as $data) {
            $sheet->setCellValue('A' . $row, $data->nama_penyedia);
            $sheet->setCellValue('B' . $row, $data->nama_bank);
            $sheet->setCellValue('C' . $row, $data->kode_kegiatan);
            $sheet->setCellValue('D' . $row, $data->no_pesanan);
            $sheet->setCellValue('E' . $row, $data->kode_rekening);
            $sheet->setCellValue('F' . $row, $data->jumlah_pengajuan);
            $sheet->setCellValue('G' . $row, $data->potongan_pph);
            $sheet->setCellValue('H' . $row, $data->biaya_kirim_uang);
            $sheet->setCellValue('I' . $row, $data->jumlah_diterima);
            $sheet->setCellValue('J' . $row, $data->keterangan);
            $sheet->setCellValue('K' . $row, $data->jenis_spj);
            $sheet->setCellValue('L' . $row, $data->npwp);
            $sheet->setCellValue('M' . $row, $data->bagian);
            $row++;
        }

        // Menulis file Excel ke output
        $writer = \PhpOffice\PhpSpreadsheet\IOFactory::createWriter($spreadsheet, 'Xlsx');
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment;filename="data_transaksi.xlsx"');
        header('Cache-Control: max-age=0');
        $writer->save('php://output');
        exit;
    }
}
