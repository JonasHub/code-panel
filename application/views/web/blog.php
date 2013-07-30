  <!-- content -->
  <section id="page">
    <header class="page-header">
                            <div class="container">
                                <div class="row">
                                    <div class="span12">
                                        <h1>Blog</h1>
                                        <span style="color:#FFF">Descubra las últimas novedades y trabajos realizados</span>
                                    </div>
                                </div>
                            </div>
                        </header>
    <!-- main content -->
    <!-- content -->
    <section class="content  blog">
      <div class="container">
        <div class="row">
          <!-- Sidebar -->
          <aside class="span4">
            <section class="widget">
              <h3>Categorias</h3>
              <ul class="iconsList">
                <li><a href="#"><i class="icon-right-open-mini"></i> Solace of a lonely highway</a></li>
                <li><a href="#"><i class="icon-right-open-mini"></i> Write with purpose</a></li>
                <li><a href="#"><i class="icon-right-open-mini"></i> Tree on a lake</a></li>
                <li><a href="#"><i class="icon-right-open-mini"></i> Don’t stop questioning</a></li>
                <li><a href="#"><i class="icon-right-open-mini"></i> Overheard this morning</a></li>
              </ul>
            </section>
            <section class="widget">
              <h3>Archivos</h3>
              <ul class="iconsList">
                <li><i class="icon-right-open-mini"></i> <a href="#">March 2012</a></li>
                <li><i class="icon-right-open-mini"></i> <a href="#">September 2011</a></li>
                <li><i class="icon-right-open-mini"></i> <a href="#">July 2011</a></li>
                <li><i class="icon-right-open-mini"></i> <a href="#">June 2011</a></li>
              </ul>
            </section>
            <section class="widget blogTags">
              <h3>TAGS</h3>
              <ul>
                <li><a href="#" class="w2">News</a></li>
                <li><a href="#" class="w1">category</a></li>
                <li><a href="#" class="w3">business</a></li>
                <li><a href="#" class="w3">economy</a></li>
                <li><a href="#" class="w1">lolcats</a></li>
                <li><a href="#" class="w2">design</a></li>
                <li><a href="#" class="w2">Videos</a></li>
                <li><a href="#" class="w1">Web</a></li>
                <li><a href="#" class="w3">Photos</a></li>
                <li><a href="#" class="w2">Music</a></li>
              </ul>
            </section>
          </aside>
          <!-- Sidebar -->
          <!-- post list -->
          <div class="span8">
          	<?php foreach($blog as $row_blog): ?>
            <article>
              <div class="postTitle clearfix">
                <div class="newsDate">
                  <h4>12</h4>
                  <span>Oct.</span></div>
                <h2><a href="blog-post.html"><?php echo $row_blog->nombre ?> </a></h2>
                <ul class="entry-meta">
                  <li class="entry-category"><i class="icon-tag"></i>category</li>
                  <li class="sep-meta"> / </li>
                  <li class="entry-author"><i class="icon-user"></i>Admin</li>
                  <li class="sep-meta"> / </li>
                  <li class="entry-comments"><i class="icon-comment"></i>12 comments</li>
                </ul>
              </div>
              <div class="postPic">
                <div class="imgWrapper"><a href="blog-post.html">
                	<?php foreach($thumb as $row_thumb): ?>
                		<img src="<?php echo $row_thumb->ruta; ?>" alt=""/>
                    <?php endforeach; ?>
                </a></div>
              </div>
              <section>
                <p><?php echo $row_blog->desc ?></p>
                <p> <a href="blog-post.html" class="btn btn-small">Leer más</a> </p>
              </section>
            </article>
            <hr>
            <?php endforeach; ?>
            
            <div>
              <nav class="pagination">
                
                  <?php echo $pagination; ?>
               
              </nav>
            </div>
          </div>
        </div>
      </div>
      <!-- blog content -->
    </section>
    <!-- content -->
    <!-- end main content -->
  </section>
  <!-- end content -->
