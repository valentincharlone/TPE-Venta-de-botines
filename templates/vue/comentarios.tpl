{literal}
<div id="app">
<h1>{{titulo}}</h1>
                                                <div class="promedioPuntaje">
                                                            <h1>Promedio puntaje</h1>
                                                                <h2>⭐</h2>
                                                            <p>{{promedioPuntaje}}</p>
                                                            
                                                    </div>
  <ul id="lista-comentarios" class="list-group">
        <li v-for="comentario in comentarios" class="list-group-item">
    <div class="contenedorComentarios">
            <div class="fotoUsuario">
                <img class="fotoPerfilComentarios" :src="comentario.fotoPerfil"/> 
            </div>
            <div class="usuarioUsuario">
                    <div class="nombreUsuarioComentario">
                    {{comentario.usuario}} 
                    </div>
                    <div class="puntajeComentario">
                        Calificacion:{{comentario.puntaje}} 
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