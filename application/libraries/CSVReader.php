<?php

class CSVReader {
    private $file_path;
    private $file_data;
    private $num_of_rows;
    private $separator;

    public function __construct($file_path, $separator = ',') {
        $this->file_path = $file_path;
        $this->separator = $separator;
        $this->read_csv();
    }

    public function get_file_data(){
        return $this->file_data;
    }

    public function get_num_of_rows(){
        return $this->num_of_rows;
    }

    private function read_csv(){
        $file_handle = fopen($this->file_path, 'r');
        while (!feof($file_handle)) {
            $row = fgetcsv($file_handle, 0, $this->separator);
            if (!$row) continue;
            $this->file_data[] = $row;
            $this->num_of_rows++;
        }
        fclose($file_handle);
    }

    public function process_file_data(){
        $data = array();
        foreach ($this->file_data as $row){
            $data[] = array(
                'nama_penyedia' => $row[0],
                'nama_bank' => $row[1],
                'kode_kegiatan' => $row[2],
                'no_pesanan' => $row[3],
                'kode_rekening' => $row[4],
                'jumlah_pengajuan' => $row[5],
                'potongan_pph' => $row[6],
                'biaya_kirim_uang' => $row[7],
                'jumlah_diterima' => $row[8],
                'keterangan' => $row[9],
                'jenis_spj' => $row[10]
            );
        }
        return $data;
    }
}

?>
