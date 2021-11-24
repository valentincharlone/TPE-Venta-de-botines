{include file='templates/usoComun/header.tpl'}
{include file='templates/usoComun/nav.tpl'}

<h1 class="mb-4 tituloDetail">{$titulo}</h1>
<div class="container-details">
    {if ($boot->imagen)}
        <div>
            <img class="img-details" src="{$boot->imagen}" />
        </div>
    {else}
        <div>
            <img class="botinSinFoto" src="img/botines/botinSinFoto.png" />
        </div>
    {/if}
    <div class="container-detail">
        <h2 class="container-categoria">Categoria: {$boot->categoria}</h2>

        <h2 class="container-talle">Talle: {$boot->talle}</h2>

        <h2 class="container-precio">Precio: ${$boot->precio}</h2>

        <h2 class="container-descripcion">Descripcion: {$boot->descripcion}</h2>

    </div>
</div>



{if ($logueado)}
    <div class="Contenedorcomentarios">
        <form class="form-comentario" method="POST" id="formComentario" data-img={$fotoPerfil} data-user={$userEmail}
            data-id={$id} data-fecha={$fecha}>

            <div class="nombreUsuarioYFoto">
                <img class="fotoPerfilComentario" src="{$fotoPerfil}" />
                <h3>{$userEmail}:</h3>
            </div>
            <div class="estrellas">
                <p class="clasificacion">
                    <input id="radio1" type="radio" name="estrellas" value="5" class="puntaje">
                    <label for="radio1">★</label>
                    <input id="radio2" type="radio" name="estrellas" value="4" class="puntaje">
                    <label for="radio2">★</label>
                    <input id="radio3" type="radio" name="estrellas" value="3" class="puntaje">
                    <label for="radio3">★</label>
                    <input id="radio4" type="radio" name="estrellas" value="2" class="puntaje">
                    <label for="radio4">★</label>
                    <input id="radio5" type="radio" name="estrellas" value="1" class="puntaje">
                    <label for="radio5">★</label>
                </p>
            </div>
                <div>
                    <textarea class="text-area-comentario" rows="4" cols="100" type="text" name="comentario"
                        id="comentario"></textarea>
                </div>
                <div>
                    <button type="button" id="agregarComentario" class="btn btn-outline-success btn-eliminar">comentar</button>
                </div>
                <div>
            </div>

        </form>
    </div>
{/if}
{* escondo el valor del id_botin. para saber los comentarios de que botin tiene que mostrar,
no los puedo sacar del form, pq si no esta logueado el input no existiria*}
<input id="id_botin" data-id={$id} value={$id} hidden />
{* con el input de admin, lo obtengo con vueJS y me sirve para despues preguntar con v-if
             y si admin es ==1 muestro el boton, sino no *}
<input id="esAdmin" value="{$admin}" hidden>


<div>
    {include file='templates/filtroPuntaje.tpl'}
</div>

<div>
    {include file='templates/vue/comentarios.tpl'}
</div>

<a class="vovler" href="botines/page/1"> Volver </a>
<script src="js/app.js"></script>
{include file='templates/usoComun/footer.tpl'}