{include file='templates/usoComun/header.tpl'}
{include file='templates/usoComun/nav.tpl'}

<div class="container-details">
    <h1 class="mb-4 tituloDetail">{$titulo}</h1>
            <div class="container-detail">
                <h2 class="container-categoria">Categoria: {$boot->categoria}</h2>
            <hr>
                <h2 class="container-talle">Talle: {$boot->talle}</h2>
            <hr>              
                <h2 class="container-precio">Precio: {$boot->precio}</h2>
            <hr>        
                <h2 class="container-descripcion">Descripcion: {$boot->descripcion}</h2>
            <hr>
            </div>
</div>
        <a class="home1" href="home" > Volver </a>
        <hr>

{include file='templates/usoComun/footer.tpl'}