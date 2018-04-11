<?php 
class Grafik extends CI_Model 
{ 
    function __construct() 
    { 
        parent::__construct(); 
    } 
    //get fruts data 
    public function get_all_krs() 
    { 
    	return $this->db->query("SELECT makul.nama_makul, makul.id_makul, krs.id_makul, mhs.nm, krs.id_krs, krs.nm, count(*) ini from krs,mhs,makul where krs.id_makul = makul.id_makul GROUP BY krs.id_makul, makul.id_makul")->result();
    
    }
    public function get_all_mhs() 
    { 
    	return $this->db->query("SELECT mhs.nm, mhs.gender, count(*) ini from mhs GROUP BY mhs.gender")->result();
    
    } 
    public function get_all_angkatan() 
    { 
    	return $this->db->query("SELECT mhs.nm, mhs.angkatan, count(*) ini from mhs GROUP BY mhs.angkatan")->result();
    
    } 
}