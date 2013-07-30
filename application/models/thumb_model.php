<?php 

class Thumb_model extends CI_Model {
function __construct()
{
	parent::__construct();
	$this->load->helper(array('form', 'url'));
	
}
function thumb()//devuelve todas las imagenes
{
	$query = $this->db->get('thumb');
	return $query->result();
}

function thumb_id($id)//devuelve todas las imagenes por id
{
	$this->db->where('thumb_id', $id);
    $query = $this->db->get('thumb');
    return $query->result();
    
}

function thumb_galeria($galeria_id)//devuelve thumbs en galeria
{
	$this->db->select('*');
	$this->db->from('thumb');
	$this->db->join('galeria', 'galeria.galeria_id = thumb.galeria_id');
	$this->db->where('thumb.galeria_id', $galeria_id); 

	$query = $this->db->get();
	return $query->result();
}

function primer_thumb_galeria()//devuelve el primer thumb en galeria
{
	$this->db->select('*');
	$this->db->from('thumb');
	$this->db->join('galeria', 'galeria.galeria_id = thumb.galeria_id');
	//$this->db->where('thumb.galeria_id', $galeria_id);
	$this->db->limit(1); 

	$query = $this->db->get();
	return $query->result();
}

function alta_thumb($data,$ruta)
{
	foreach($data as $row):
		//$ruta = $row['file_path'];
	$tipo = $row['file_ext'];
	$this->nombre = $this->input->post('nombre');
	$this->ruta = base_url().$ruta.$row['file_name'];
	$this->tipo = $tipo;
	$this->db->insert('thumb', $this);
	return true;
	endforeach;
}

function alta_thumb_galeria($data,$ruta,$galeria_id)
{
	
	foreach($data as $row):
	$tipo = $row['file_ext'];
	$this->nombre = $this->input->post('nombre');
	$this->ruta = base_url().$ruta.$row['file_name'];
	$this->tipo = $tipo;
	$this->file_name = $row['file_name'];
	$this->galeria_id = $galeria_id;
	$this->db->insert('thumb', $this);
	return true;
	endforeach;
}

function actualiza_thumb()
{
	$data = array(
               'nombre' => $this->input->post('nombre'),
               'mail' => $this->input->post('mail')
            );

	$this->db->where('thumb_id', $this->input->post('thumb_id'));
	$this->db->update('thumb', $data); 
	return true;
}//end actualiza

function borra_thumb()
{
	$this->db->where('thumb_id', $this->input->post('thumb_id'));
	$this->db->delete('thumb'); 
	return true;
}

function asigna_thumb()//asignar imagen a galeria
{
	foreach($this->input->post('thumb') as $row):
		//print_r($row);
		$this->db->select('archivo_id, cliente_id');//comprobar si esta asignado
		$this->db->from('archivo_cliente');
		$this->db->where('archivo_id', $row);
		$this->db->where('cliente_id', $this->input->post('cliente'));
		$db_results = $this->db->get();
		$num_rows = $db_results->num_rows();
		//print_r($num_rows);
		if($num_rows > 0){//ya esta asignado
			return false;
			}
		else{
		$this->archivo_id = $row;
		$this->cliente_id = $this->input->post('cliente');
		$this->db->insert('archivo_cliente', $this);
		}
	endforeach;
	
	return true;
	
}//End asigna archivo



}//model

?>