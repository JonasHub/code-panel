<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin extends CI_Controller {
	 

	public function __construct()
	    {
	        parent::__construct();
			$this->load->model('cliente_model');
	        $this->load->helper(array('form', 'url'));
	        $this->load->library('form_validation');
	    } 
		
		public function index($enl = '')
		{
			
			if ($enl == ''){
				$enlace = 'body';
			}
			else{
			$enlace = $enl;
			}
			$this->load->view('admin/header');
			$this->load->view('admin/'.$enlace);
			$this->load->view('admin/footer');
		}
	
		public function loguear(){
				$mail = $this->input->post('mail');
				$pass = $this->input->post('pass');
				$cliente = $this->cliente_model->cliente();
				//print_r($cliente);
				
				foreach($cliente as $cliente_row){
						if($mail == $cliente_row->mail && $pass == $cliente_row->pass){
							$datasession = array(
							'usuario'  => $cliente_row->nombre,
							'login_ok' => TRUE
							);
							$this->load->library('session');
							$this->session->set_userdata($datasession);
							redirect('admin/index/body');
						}
						else{
							$data['error'] = "Usuario incorecto";
							redirect('admin/index/login');
							}
				}//end foreach
			}//loguear
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */