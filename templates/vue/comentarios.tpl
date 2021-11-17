{literal}
<div id="app">
<h1>{{titulo}}
  <ul id="lista-comentarios" class="list-group">
        <li v-for="comentario in comentarios" class="list-group-item">
            {{comentario.usuario}}: {{comentario.comentario}}
            <button  id={{comentario.id}} class="btn btn-success btn-borrar"  >BORRAR</button>
            Calificacion:{{comentario.puntaje}} 
        </li>
    </ul>
</div>



{/literal}