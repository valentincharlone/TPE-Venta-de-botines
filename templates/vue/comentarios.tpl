{literal}
<div id="app">
<h1>{{titulo}}</h1>
                                                <div class="promedioPuntaje">
                                                            <p>{{promedioPuntaje}}</p>
                                                                <h2>⭐</h2>
                                                            
                                                    </div>
<div>
        <p class="error">{{error}}</p>
</div>

  <ul id="lista-comentarios" class="list-group">
        <li v-for="comentario in comentarios" class="list-group-item">
    <div class="contenedorComentarios">
            <div class="fotoUsuario">
                <img class="fotoPerfilComentarios" :src="comentario.fotoPerfil"/> 
            </div>
            <div class="usuarioUsuario">
                    <div class="puntajeComentario" v-if="comentario.puntaje ==1">
                        <p class="usuarioPuntajeEstrellas">★✩✩✩✩</p>
                    </div>
                    <div class="puntajeComentario" v-if="comentario.puntaje ==2">
                        <p class="usuarioPuntajeEstrellas">★★✩✩✩</p>
                    </div>
                    <div class="puntajeComentario" v-if="comentario.puntaje ==3">
                        <p class="usuarioPuntajeEstrellas">★★★✩✩</p>
                    </div>
                    <div class="puntajeComentario" v-if="comentario.puntaje ==4">
                        <p class="usuarioPuntajeEstrellas">★★★★✩</p>
                    </div>
                    <div class="puntajeComentario" v-if="comentario.puntaje ==5">
                        <p class="usuarioPuntajeEstrellas">★★★★★</p>
                    </div>
                    <div class="nombreUsuarioComentario">
                    {{comentario.usuario}} 
                    </div>
                    <div>
                        <p>{{comentario.comentario}}</p>
                    </div>
            </div>
    </div>
            <button v-if="admin==1" v-on:click="deleteComment(comentario.id)" class="btn btn-success btn-borrar">BORRAR</button>
        </li>
    </ul>
</div>



{/literal}