<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Admin_blog extends CI_Controller {
	
	public function __construct()
	{
		parent::__construct();
		$this->load->model('blog_model');
		$this->load->model('galeria_model');
		$this->load->library('form_validation');
	} 
	
    public function index()
    {
		$data['galeria'] = $this->galeria_model->galeria();
		$this->load->view('admin/header');
		$this->load->view('admin/formulario_blog',$data);
		$this->load->view('admin/footer');
    }
	
	public function listado_blogs()
	{
		$data['blog'] = $this->blog_model->lista_blog();
		$data['galeria'] = $this->galeria_model->galeria();
		$this->load->view('admin/header');
		$this->load->view('admin/tabla_blog', $data);
		$this->load->view('admin/footer');
	}//blog
	
	public function blog_id($id)
	{	
		$data['blog'] = $this->blog_model->blog_id($id);
		$data['galeria'] = $this->galeria_model->galeria();
		$this->load->view('admin/header');
		$this->load->view('admin/formulario_editar_blog', $data);
		$this->load->view('admin/footer');

	}//blog

	
	public function alta_blog(){
		
	$this->form_validation->set_rules('nombre', 'Nombre blog', 'required'); //forma directa de crear reglas
	
	if ($this->form_validation->run() == FALSE)// hay algun error en la validacion
		{
			$this->load->view('admin/header');
            $this->load->view('admin/formulario_blog');
            $this->load->view('admin/footer');
		}
	else
		{
		if ($this->blog_model->alta_blog()== true){
			$data['error'] = "Ok, todo correcto";
			$data['galeria'] = $this->galeria_model->galeria();
            $this->load->view('admin/header');
            $this->load->view('admin/formulario_blog', $data);
            $this->load->view('admin/footer');
			}
		else{
			$data['galeria'] = $this->galeria_model->galeria();
			$data['error'] = "Ha ocurrido algún error con la consulta";
            $this->load->view('admin/header');
            $this->load->view('admin/formulario_blog', $data);
            $this->load->view('admin/footer');
		}//End if
	}//End form validation
		
		
	}//End alta_blog
	
    public function actualiza_blog(){
	
	$this->form_validation->set_rules('nombre', 'Nombre blog', 'required'); //forma directa de crear reglas
	
	if ($this->form_validation->run() == FALSE)// hay algun error en la validacion
		{
			$data['blog'] = $this->blog_model->blog_id($this->input->post('blog_id'));
			$this->load->view('admin/header');
            $this->load->view('admin/formulario_editar_blog',$data);
            $this->load->view('admin/footer');
		}
	else
		{
		if ($this->blog_model->actualiza_blog()== true){//Si la modificacion es ok
			
			$data['blog'] = $this->blog_model->lista_blog();
            $this->load->view('admin/header');
            $this->load->view('admin/tabla_blog',$data);
            $this->load->view('admin/footer');
			}
		else{
			$data['error'] = "Ha ocurrido algún error con la consulta";//Error en modificacion
			
            $this->load->view('admin/header');
            $this->load->view('admin/formulario_editar_blog', $data);
            $this->load->view('admin/footer');
		}//End if
	}//End form validation
		
		
	}//End actualiza blog
	
    public function borra_blog($blog_id){
		
		if ($this->blog_model->borra_blog($blog_id)== true){
			$data['blog'] = $this->blog_model->blog();
            $this->load->view('admin/header');
            $this->load->view('admin/tabla_blog',$data);
            $this->load->view('admin/footer');
			}
		else{
			$data['error'] = "Ha ocurrido algún error con la consulta";
			$data['blog'] = $this->blog_model->blog_id($this->input->post('blog_id'));
            $this->load->view('admin/header');
            $this->load->view('admin/formulario_editar_blog', $data);
            $this->load->view('admin/footer');
		}//End if
		
	}//End actualiza blog
	


} 