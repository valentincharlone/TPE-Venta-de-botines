{* SLIDER CON CSS:
<div class="slider">
    <ul> 
        <li><img src="img/botines4.jpg" class="img4"></li> 
        <li><img src="img/botines3.jpg" class="img3"></li> 
        <li><img src="img/botines2.jpg" class="img2"></li> 
        <li><img src="img/botines1.jpg" class="img1"></li> 
    </ul>
</div> *}


{* SLIDER CON BOOTSTRAP *}
  <div id="miCarousel" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button data-bs-target="#miCarousel" data-bs-slide-to="0" class="active"></button >
    <button data-bs-target="#miCarousel" data-bs-slide-to="1"></button >
    <button data-bs-target="#miCarousel" data-bs-slide-to="2"></button >
    <button data-bs-target="#miCarousel" data-bs-slide-to="3"></button >
  </div>
  <div class="carousel-inner">
    <div class="carousel-item ">
      <img class="d-block w-100 img4" src="img/botines4.jpg"alt="Fourth slide">
    </div>
    <div class="carousel-item active">
      <img class="d-block w-100 img1" src="img/botines1.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100 img2" src="img/botines2.jpg"alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100 img3" src="img/botines3.jpg"alt="Third slide">
    </div>
  </div>
  <button type="button" class="carousel-control-prev" data-bs-target="#miCarousel" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </button>
  <button type="button" class="carousel-control-next" data-bs-target="#miCarousel" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </button>
</div>
