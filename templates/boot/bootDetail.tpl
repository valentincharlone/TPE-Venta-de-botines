{include file='templates/usoComun/header.tpl'}
{include file='templates/usoComun/nav.tpl'}

    <h1 class="mb-4 tituloDetail">{$titulo}</h1>
<div class="container-details">
            {*DA ERROR AL HACER EL INNER JOIN, NOS MEZCLA LAS TABLAS Y HAY VECES QUE NOS DEVUELVE CUALQUIER DATO, POR ESO USAMOS CONSULTA COMUN
                <h2 class="container-categoria">Marca: {$boot->nombre}</h2>
            <hr> *}
        {if ($boot->imagen)}
            <div>
                <img class="img-details" src="{$boot->imagen}"/>
            </div>
        {else}
            <div>
                <img class="botinSinFoto" src="img/botines/botinSinFoto.png"/>
            </div>
        {/if}
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
 

    
    <div class="Contenedorcomentarios">
            {if ($logueado)}
                <form class="form-comentario" action="insertComent" method="POST">
                <div>
                <h3>Realizar comentario:</h3>
                 {if $fotoPerfil}
                 <div class="nombreUsuarioYFoto">
                    <img class="fotoPerfilComentario" src="{$fotoPerfil} "/> <h3>{$userEmail}</h3>
                {else}
                    <img class="fotoPerfil" src="img/fotosPerfil/sinFotoPerfil.jpg"/><h3>{$userEmail}</h3>
                    </div>
                {/if}
                
                <p class="clasificacion">
                    <input id="radio1" type="radio" name="estrellas" value="5">
                    <label for="radio1">★</label>
                    <input id="radio2" type="radio" name="estrellas" value="4">
                    <label for="radio2">★</label>
                    <input id="radio3" type="radio" name="estrellas" value="3">
                    <label for="radio3">★</label>
                    <input id="radio4" type="radio" name="estrellas" value="2">
                    <label for="radio4">★</label>
                    <input id="radio5" type="radio" name="estrellas" value="1">
                    <label for="radio5">★</label>
                </p>

                      {* <label class="label-puntaje">Puntaje</label> <select name="puntaje" id="puntaje" <select  aria-label=".form-select-lg example">>
                      <option value="1">⭐ </option>
                      <option value="2">⭐⭐ </option>
                      <option value="3">⭐⭐⭐ </option>
                      <option value="4">⭐⭐⭐⭐ </option>
                      <option value="5">⭐⭐⭐⭐⭐ </option>
                    </select> *}
                </div>
                <div>
                    <textarea class="text-area-comentario" rows="4" cols="100" type="text" name="comentario" id="comentario"></textarea>
                </div>
                <div>
                    <input type="submit" class="btn btn-outline-success" value="comentar">
                </div>
                </form>
            {/if}
    </div>
    <div>
        {include file='templates/vue/comentarios.tpl'}
    </div>

        <a class="vovler" href="botines"> Volver </a>
<script src="js/app.js">
{include file='templates/usoComun/footer.tpl'}