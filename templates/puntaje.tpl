{include file='templates/usoComun/header.tpl'}
{include file='templates/usoComun/nav.tpl'}

<div class="container-details">


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
                <h2 class="container-precio">Precio: ${$boot->precio}</h2>
            <hr>        
                <h2 class="container-descripcion">Descripcion: {$boot->descripcion}</h2>
            <hr>
            </div>

</div>
 

    
            {* {if ($logueado)}
    <div class="Contenedorcomentarios">
                <form class="form-comentario" method="POST">
            
                 <div class="nombreUsuarioYFoto">
                    <img class="fotoPerfilComentario" src="{$fotoPerfil}"/> <h3>{$userEmail}:</h3>
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
                        <textarea class="text-area-comentario" rows="4" cols="100" type="text" name="comentario" id="comentario"></textarea>
                    </div>
                    <div>
                        <button type="button" id="agregarComentario" class="btn btn-outline-success btn-eliminar">comentar</button>
                    </div>
                     <div>
                        <input class="foto-perfil" data-img={$fotoPerfil} value={$fotoPerfil} hidden >
                         <input class="nameUsuario "data-user={$userEmail} value={$userEmail} hidden >
                        <input id="id_botin" data-id={$id} value={$id} hidden/>
                    </div>
                    
                </form>
    </div>
            {/if}
            {* Si no esta logueado, paso el id del botin asi se pueden mostrar los comentarios *}
            <input id="id_botin" data-id={$id} value={$id} hidden/>
            {* al no estar logueado no se puede ejecutar la funcion en js, pq el boton no existe, entonces lo pongo
            pero escondido, entonces js si me reconoce el id. y puede mostrarme los comentarios *}
             <button type="button" id="agregarComentario" class="btn btn-outline-success btn-eliminar" hidden>comentar</button>
             {* con el input de admin, lo obtengo con vueJS y me sirve para despues preguntar con v-if
             y si admin es ==1 muestro el boton, sino no *}
            <input id="esAdmin" value="{$admin}" hidden> 
 *}
<div>
        <h1>Comentarios</h1>
                                                    <div class="promedioPuntaje">
                                                                <h1>Promedio puntaje</h1>
                                                                    <h2>⭐</h2>
                                                                {* <p>{{promedioPuntaje}}</p> *}
                                                                
                                                        </div>
    <ul id="lista-comentarios" class="list-group">
        {foreach from=$puntajes item=$puntaje}
            <li class="list-group-item">
        <div class="contenedorComentarios">
                <div class="fotoUsuario">
                    <img class="fotoPerfilComentarios" src="{$puntaje->fotoPerfil}"/> 
                </div>
                <div class="usuarioUsuario">
                        <div class="nombreUsuarioComentario">
                        {$puntaje->usuario} 
                        </div>
                        <div class="puntajeComentario">
                            Calificacion:{$puntaje->puntaje} 
                        </div>
                        <div>
                            <p>{$puntaje->comentario}</p>
                        </div>
                </div>
        </div>
                {* <button v-if="admin==1" v-on:click="deleteComment(comentario.id)" class="btn btn-success btn-borrar">BORRAR</button> *}
            </li>
            {/foreach}
        </ul>
    </div>
</div>

        <a class="vovler" href="botines"> Volver </a>
<script src="js/app.js">
{include file='templates/usoComun/footer.tpl'}