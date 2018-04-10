<?php 
 
if (!defined('BASEPATH')) exit('No direct script access allowed'); 
class Tampil_grafik extends CI_Controller 
 
    { 
    function __construct() 
        { 
        parent::__construct(); 
        $this->load->model('Grafik'); 
 
        // $this->load->library('form_validation'); 
 
        $this->load->helper('string'); 
        } 
 
    public 
 
    function index() 
        { 
        $this->load->view('Tampil_grafik'); 
        } 
 
    public 
 
    function getdata() 
        { 
        $data = $this->Grafik->get_all_krs(); 
 
        //         //data to json 
 
        $responce->cols[] = array( 
            "id" => "", 
            "label" => "Topping", 
            "pattern" => "", 
            "type" => "string" 
        ); 
        $responce->cols[] = array( 
            "id" => "", 
            "label" => "Total", 
            "pattern" => "", 
            "type" => "number" 
        ); 
        foreach($data as $cd) 
            { 
            $responce->rows[]["c"] = array( 
                array( 
                    "v" => "$cd->nama_makul", 
                    "f" => null 
                ) , 
                array( 
                    "v" => (int)$cd->ini/1/6, 
                    "f" => null 
                ) 
            ); 
            } 
 
        echo json_encode($responce); 
        } 
    }