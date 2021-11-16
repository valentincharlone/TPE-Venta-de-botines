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

    {* ACA VAN LOS COMENTARIOS CON JS!!!!!!!!! *}


    
    <div class="Contenedorcomentarios">
            {if ($logueado)}
                <form class="form-comentario" action="insertComent" method="POST">
                    <textarea class="text-area-comentario" rows="4" cols="140" type="text" name="comentario" id="comentario"></textarea>
                <div>
                      <label class="label-puntaje">Puntaje</label> <select name="puntaje" id="puntaje" <select  aria-label=".form-select-lg example">>
                      <option value="1">⭐ </option>
                      <option value="2">⭐⭐ </option>
                      <option value="3">⭐⭐⭐ </option>
                      <option value="4">⭐⭐⭐⭐ </option>
                      <option value="5">⭐⭐⭐⭐⭐ </option>
                    </select>
                </div>
                <div>
                    <input type="submit" class="btn btn-outline-success" value="comentar">
                </div>
                </form>
            {/if}
    </div>

        <a class="vovler" href="botines"> Volver </a>
{include file='templates/usoComun/footer.tpl'}