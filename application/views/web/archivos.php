  <!-- content -->
  <section id="page">
    <header class="page-header">
      <div class="container">
        <div class="row">
          <div class="span12">
            <h1>Archivos</h1>
          </div>
        </div>
      </div>
    </header>
    <section id="pageContent" class="container">
    <div class="row">
    	<div class="span12">
     
      <h2>Archivos</h2>
      <table class="table table-bordered table-striped">
        <colgroup>
        <col class="span1">
        <col class="span7">
        </colgroup>
        <thead>
          <tr>
            <th>Tipo</th>
            <th>Nombre</th>
          </tr>
        </thead>
        <tbody>
        <?php foreach($archivo as $row_archivo): ?>
          <tr>
            <td><code><?php echo $row_archivo->tipo; ?></code> </td>
            <td><?php echo $row_archivo->nombre; ?></td>
            <td> <a href="<?php echo $row_archivo->ruta; ?>" class="btn">Descargar</a></td>
          </tr>
        <?php endforeach; ?>
        </tbody>
      </table>
    
   	 </div>
    </div>
    </section> 
  </section>
  <!-- end content -->
  