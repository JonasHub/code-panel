<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Inicio extends CI_Controller {


	public function Inicio()
	    {
	        parent::__construct();
	        $this->load->helper('url');
	        $this->load->helper('form');
	        $this->load->library('cart');
	        $this->load->library('form_validation');
	        $this->load->library('javascript');
			$this->load->library('email');
			$this->load->library('pagination');
			
			$this->load->model('cliente_model');
			$this->load->model('archivo_model');
			$this->load->model('galeria_model');
			$this->load->model('thumb_model');
			$this->load->model('blog_model');
			
			$this->load->library('session');
	    } 
	 
	public function index(){
			$data['active'] = 'active';
			$this->load->view('web/header', $data);
			$this->load->view('web/index');
			$this->load->view('web/footer');
		}//End Index
	public function servicios(){
		    $data['active_servicios'] = 'active';
			$this->load->view('web/header', $data);
			$this->load->view('web/servicios');
			$this->load->view('web/footer');
		}//End servicios
	public function archivos($cliente_id){
			$cliente_id = $cliente_id;
		    $data['active_servicios'] = 'active';
			$data['archivo'] = $this->archivo_model->archivo_cliente($cliente_id);
			$this->load->view('web/header', $data);
			$this->load->view('web/archivos',$data);
			$this->load->view('web/footer');
		}//End servicios
	public function portfolio(){
			$data['active_portfolio'] = 'active';
			$data['galeria'] = $this->galeria_model->galeria();
			$data['thumb'] = $this->thumb_model->thumb();
			$this->load->view('web/header', $data);
			$this->load->view('web/portfolio',$data);
			$this->load->view('web/footer');
		}//End portfolio
	public function blog(){
			$data['active_blog'] = 'active';
			$cantidad = $this->blog_model->count_blog();
			$desde = ($this->uri->segment(3)) ? $this->uri->segment(3) : 0;
			
			$this->load->library('pagination');
			$config['base_url'] = base_url().'inicio/blog/';
			$config['total_rows'] = $cantidad;
			$config['per_page'] = '2';
			
			$config['full_tag_open'] = '<ul>';
			$config['full_tag_close'] = '</ul>';
			$config['first_link'] = 'Primero';
			$config['first_tag_open'] = '<li>';
			$config['first_tag_close'] = '</li>';
			$config['last_link'] = 'Último';
			$config['last_tag_open'] = '<li>';
			$config['last_tag_close'] = '</li>';
			$config['next_link'] = '&gt';
			$config['next_tag_open'] = '<li>';
			$config['next_tag_close'] = '</li>';
			$config['prev_link'] = '&lt';
			$config['prev_tag_open'] = '<li>';
			$config['prev_tag_close'] = '</li>';
			$config['cur_tag_open'] = '<li class="active"><a>';
			$config['cur_tag_close'] = '</a></li>';
			$config['num_tag_open'] = '<li>';
			$config['num_tag_close'] = '</li>';
			
			$data['blog'] = $this->blog_model->blog($config['per_page'],$desde);
			$data['thumb'] = $this->thumb_model->primer_thumb_galeria();
			$this->pagination->initialize($config);
			$data['pagination'] =  $this->pagination->create_links(); 
			
			//print_r($data['thumb']);
			
			$this->load->view('web/header', $data);
			$this->load->view('web/blog', $data);
			$this->load->view('web/footer');
		}//End Blog
	public function contacto(){
			$data['active_contacto'] = 'active';
			$this->load->view('web/header', $data);
			$this->load->view('web/contacto');
			$this->load->view('web/footer');
		}//End contacto
	
	public function envio_email(){
			$this->email->from('jonasgr@jonasgr.com.es', 'Jonas');
			$this->email->to('jonasgr@jonasgr.com.es');
			$this->email->cc('tecnico@meigasoft.es');
			$this->email->bcc('tecnico@meigasoft.es');
			$this->email->subject('Email de Prueba');
			$this->email->message('Probando la Clase Email.');
			$this->email->send();
			echo $this->email->print_debugger();
		}
	
	public function login(){
			$mail = $this->input->post('mail');
			$pass = $this->input->post('pass');
			$datos = $this->cliente_model->verificar_cliente($mail,$pass);
			foreach($datos as $row):
					$cliente_id = $row->cliente_id; 
					$nombre = $row->nombre;
					$datasession = array(
					  'cliente_id'  => $cliente_id,
					  'nombre'  => $nombre,
					  'login_ok' => TRUE
					);
					$this->session->set_userdata($datasession);
			endforeach;	
			
			$data['active'] = 'active';
			$this->load->view('web/header', $data);
			$this->load->view('web/index');
			$this->load->view('web/footer');
			

		}//loguear
	
	
	
	public function add() {//añadir al carro
		$this->load->library('cart');
		if($this->session){
				$product = $this->articulo_model->articulo_maestro($this->input->post('product_id'));
				foreach ($product as $key) {
					$datos = array(
					'id' => $this->input->post('product_id'),
					'qty' => 1,
					'name' => $key->nombre,
					'price' => $key->precio
					);
					$this->cart->insert($datos);
					redirect('inicio/portada');
				}
		}//existe sesion
		else{
			redirect('inicio/login');
			}
	}//add
	
	public function update(){
		
		if($this->input->post('del') == 0){
			$data = array(
			'rowid' => $this->input->post('rowid'),
			'qty' => 0
			);
		}
		else{
			$data = array(
			'rowid' => $this->input->post('rowid'),
			'qty' => $this->input->post('qty')
			);	
		}
		
		$this->cart->update($data);
		redirect('inicio/ver_cesta');
			
		}//update
	
	

}//Inicio

/* End of file incio.php */
/* Location: ./application/controllers/inicio.php */