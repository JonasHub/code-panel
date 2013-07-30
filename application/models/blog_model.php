<?php 

class Blog_model extends CI_Model {
function __construct()
{
	parent::__construct();
	$this->load->helper(array('form', 'url'));
}
function lista_blog()//devuelve todos los blogs para paginacion
{
    $resultado = $this->db->get('blog');
    return $resultado->result();
}

function blog($limit,$start)//devuelve todos los blogs para paginacion
{
	$this->db->limit($limit,$start);
    $resultado = $this->db->get('blog');
    return $resultado->result();
}

function count_blog()//devuelve el total de filas
{
	$query = $this->db->count_all('blog');
	return $query;
}

function blog_id($id)//devuelve todos los blogs por id
{
	$this->db->where('blog_id', $id);
    $query = $this->db->get('blog');
    return $query->result();
}

function alta_blog()
{
	$this->nombre = $this->input->post('nombre');
	$this->fecha_alta = $this->input->post('fecha_alta');
	$this->galeria_id = $this->input->post('galeria_id');
	$this->desc = $this->input->post('desc');
	$this->db->insert('blog', $this);
	return true;
}

function actualiza_blog()
{
	$data = array(
               'nombre' => $this->input->post('nombre'),
			   'fecha_alta' => $this->input->post('fecha_alta'),
			   'desc' => $this->input->post('desc'),
               'galeria_id' => $this->input->post('galeria_id')
            );

	$this->db->where('blog_id', $this->input->post('blog_id'));
	$this->db->update('blog', $data); 
	return true;
}//end actualiza

function borra_blog($blog_id)
{
	$this->db->where('blog_id', $blog_id);
	$this->db->delete('blog'); 
	return true;
}


}//model

?>