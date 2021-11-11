{include file='templates/usoComun/header.tpl'}
{include file='templates/usoComun/nav.tpl'}

    <h1 class="mb-4 tituloDetail">{$titulo}</h1>
<div class="container-details">
            {*DA ERROR AL HACER EL INNER JOIN, NOS MEZCLA LAS TABLAS Y HAY VECES QUE NOS DEVUELVE CUALQUIER DATO, POR ESO USAMOS CONSULTA COMUN
                <h2 class="container-categoria">Marca: {$boot->nombre}</h2>
            <hr> *}
            <div>
                <img class="img-details" src="{$boot->imagen}"/>
            </div>
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
        <a class="vovler" href="botines"> Volver </a>

{include file='templates/usoComun/footer.tpl'}