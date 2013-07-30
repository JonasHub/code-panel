<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Admin_thumb extends CI_Controller {
	
	public function __construct()
	{
		parent::__construct();
		$this->load->model('thumb_model');
		$this->load->model('galeria_model');
		$this->load->library('form_validation');
		$this->load->library('image_lib');
		$this->load->helper('file');
	} 
	
    public function index()
    {
		$this->load->view('admin/header');
		$this->load->view('admin/formulario_thumb');
		$this->load->view('admin/footer');
    }
	
	public function listado_thumbs()
	{
		$data['thumb'] = $this->thumb_model->thumb();
		$data['galeria'] = $this->galeria_model->galeria();
		$this->load->view('admin/header');
		$this->load->view('admin/tabla_thumb', $data);
		$this->load->view('admin/footer');
	}
	
	
	public function thumb_id($id)
	{	
		$data['thumb'] = $this->thumb_model->thumb_id($id);
		$this->load->view('admin/header');
		$this->load->view('admin/formulario_editar_thumb', $data);
		$this->load->view('admin/footer');
	}

	
	public function alta_thumb(){//Utiliza el upload basico de codigniter para una sola imagen
		
	$config['upload_path'] = './uploads/thumb/';
	$config['allowed_types'] = 'gif|jpg|png|pdf';
	$config['max_size'] = '10000';
	$config['max_width'] = '1024';
	$config['max_height'] = '768';
	$this->load->library('upload', $config);
		
	$this->form_validation->set_rules('nombre', 'Nombre archivo', 'required'); //forma directa de crear reglas
	
	if ($this->form_validation->run() == FALSE)// hay algun error en la validacion
		{
			$this->load->view('admin/header');
            $this->load->view('admin/formulario_thumb');
            $this->load->view('admin/footer');
		}
	else
		{
			if ( ! $this->upload->do_upload())//error en subida
			{
				$error = array('error' => $this->upload->display_errors());
				$this->load->view('admin/header');
				$this->load->view('admin/formulario_thumb', $error);
				$this->load->view('admin/footer');
			}
			else//subida ok metemos los datos en la bd
			{
				$ruta = 'uploads/thumb/';
				$data = array('upload_data' => $this->upload->data());
				if ($this->thumb_model->alta_thumb($data,$ruta)== true){
					$data['error'] = "Ok, todo correcto";
					$this->load->view('admin/header');
					$this->load->view('admin/formulario_thumb', $data);
					$this->load->view('admin/footer');
				}
				else{
					$data['error'] = "Ha ocurrido algún error con la consulta";
					$this->load->view('admin/header');
					$this->load->view('admin/formulario_thumb', $data);
					$this->load->view('admin/footer');
				}//End if	
			}	
		
	}//End form validation
		
		
	}//End alta_thumb



	public function alta_multi_thumb(){//utiliza uploadiftfive para multisubidas html5
		
	$config['upload_path'] = './uploads/thumb/';
	$config['allowed_types'] = 'gif|jpg|png|pdf';
	$config['max_size'] = '10000';
	$config['max_width'] = '2000';
	$config['max_height'] = '2000';
	$this->load->library('upload', $config);

			if ( ! $this->upload->do_upload())//error en subida
			{
				$upload_error = $this->upload->display_errors();
            	echo json_encode($upload_error);
			}
			else//subida ok metemos los datos en la bd
			{
				$ruta = 'uploads/thumb/';
				$data = array('upload_data' => $this->upload->data());
				if ($this->thumb_model->alta_thumb($data,$ruta)== true){
					$data['error'] = "Ok, todo correcto";
					
					echo json_encode($data);
				}
				else{
					$data['error'] = "Ha ocurrido algún error con la consulta";
					echo json_encode($data);
				}//End if	
			}	
		
	}//End alta_thumb
	
	
	public function alta_thumb_galeria($galeria_id){//utiliza uploadiftfive para multisubidas html5
		
	$config['upload_path'] = './uploads/thumb/';
	$config['allowed_types'] = 'gif|jpg|png|pdf';
	$config['max_size'] = '10000';
	$config['max_width'] = '2000';
	$config['max_height'] = '2000';
	$this->load->library('upload', $config);

			if ( ! $this->upload->do_upload())//error en subida
			{
				$upload_error = $this->upload->display_errors();
            	echo json_encode($upload_error);
			}
			else//subida ok metemos los datos en la bd
			{
				$ruta = 'uploads/thumb/';
				$data = array('upload_data' => $this->upload->data());
				
				//$config['image_library'] = 'GD';
//				foreach($data as $datos):
//				$config['source_image'] = base_url().'uploads/thumb/'.$datos['file_name'];
//				$ruta = base_url().'uploads/thumb/'.$datos['file_name'];
//				endforeach;
//				$config['create_thumb'] = TRUE;
//				$config['maintain_ratio'] = TRUE;
//				$config['width'] = 75;
//				$config['height'] = 50;
//				$this->load->library('image_lib', $config);
//				$this->image_lib->resize(); 
				
				if ($this->thumb_model->alta_thumb_galeria($data,$ruta,$galeria_id)== true){
					echo json_encode($ruta);
				}
				else{
					echo json_encode($ruta);
				}//End if	
				
			}	
		
	}//End alta_thumb




    public function actualiza_thumb(){
	
	$this->form_validation->set_rules('nombre', 'Nombre thumb', 'required'); //forma directa de crear reglas
	
	if ($this->form_validation->run() == FALSE)// hay algun error en la validacion
		{
			$data['thumb'] = $this->thumb_model->thumb_id($this->input->post('thumb_id'));
			$this->load->view('admin/header');
            $this->load->view('admin/formulario_editar_thumb',$data);
            $this->load->view('admin/footer');
		}
	else
		{
		if ($this->thumb_model->actualiza_thumb()== true){//Si la modificacion es ok
			
			$data['thumb'] = $this->thumb_model->cliente();
            $this->load->view('admin/header');
            $this->load->view('admin/tabla_thumb',$data);
            $this->load->view('admin/footer');
			}
		else{
			$data['error'] = "Ha ocurrido algún error con la consulta";//Error en modificacion
			
            $this->load->view('admin/header');
            $this->load->view('admin/formulario_editar_thumb', $data);
            $this->load->view('admin/footer');
		}//End if
	}//End form validation
		
		
	}//End actualiza archivo
	
    public function borra_thumb(){
		
		if ($this->thumb_model->borra_thumb()== true){
			unlink('./uploads/thumb/'.$this->input->post('file_name'));
			$data['thumb'] = $this->thumb_model->thumb_galeria($this->input->post('galeria_id'));
            $this->load->view('admin/header');
            $this->load->view('admin/galeria_thumb',$data);
            $this->load->view('admin/footer');
			}
		else{
			$data['error'] = "Ha ocurrido algún error con la consulta";
			$data['thumb'] = $this->thumb_model->thumb_galeria($this->input->post('galeria_id'));
            $this->load->view('admin/header');
            $this->load->view('admin/galeria_thumb',$data);
            $this->load->view('admin/footer');
		}//End if
		
	}//End borra archivo
	
	 public function asigna_thumb(){
		
		if ($this->thumb_model->asigna_thumb()== true){
			$data['thumb'] = $this->thumb_model->thumb();
			$data['galeria'] = $this->galeria_model->galeria();
			$data['error'] = "Asignado correctamente";
            $this->load->view('admin/header');
            $this->load->view('admin/tabla_thumb',$data);
            $this->load->view('admin/footer');
			}
		else{
			$data['thumb'] = $this->thumb_model->thumb();
			$data['galeria'] = $this->galeria_model->galeria();
			$data['error'] = "Ya existe asignación";
            $this->load->view('admin/header');
            $this->load->view('admin/tabla_thumb', $data);
            $this->load->view('admin/footer');
		}//End if
		
	}//End borra archivo
	


} 