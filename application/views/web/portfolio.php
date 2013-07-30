 <!-- content -->
     <section id="page">

    <header class="page-header">
        <div class="container">
            <div class="row">
                <div class="span12">
                    <h1>Galerias</h1>
                </div>
            </div>
        </div>
    </header>

    <section id="pageContent">

    <div class="container clearfix">
       
       <div class="row">
            <nav id="filter" class="span12" style="float:left">
              <ul>
                <li class="filterTitle"><h3>Galerias:</h3></li>
                <li><a href="#" class="current" data-filter="*">Todas</a></li>
                <?php foreach($galeria as $row_galeria): ?>
                	<li><a href="#" data-filter=".<?php echo $row_galeria->galeria_id; ?>"><?php echo $row_galeria->nombre; ?></a></li>
                <?php endforeach; ?>
              </ul>
           </nav>
       </div>

    <div class="row">
        <div class="portfolio-items isotopeWrapper clearfix da-thumbs" id="4">
			
            <?php foreach($thumb as $row_thumb): ?>
            <article class="span3 isotopeItem <?php echo $row_thumb->galeria_id; ?> masoneryBloc">
                <a class="sizer" href="#">
                    <section class="imgWrapper"> <img src="<?php echo $row_thumb->ruta; ?>" alt=""/></section> 
                    <div>
                        <span class="iconWrapper iconLink"><i class="icon-plus"></i></span>                                        
                    </div>
                </a>
                <section class="hiddenInfo">
                    <h3><?php echo $row_thumb->nombre; ?></h3>
                    <p class="boxTextWrapper">
                    <?php echo $row_thumb->desc; ?>
                        
                    </p>
                </section>
            </article>
			<?php endforeach; ?>

        </div>
    </div>
</div>
</section> 

</section>
<!-- end content -->

                       