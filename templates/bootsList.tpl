{include file='templates/header.tpl'}
{include file='templates/nav.tpl'}

<div class="col-md-4">
            <h2>Crear Botin</h2>
            <form class="form-alta" action="createBoot" method="post">
                <input placeholder="modelo" type="text" name="modelo" id="modelo" required>
                <input placeholder="talle" type="number" name="talle" id="talle"> 
                <input placeholder="precio" type="number" name="precio" id="precio">
                <input placeholder="descripcion" type="text" name="descripcion" id="descripcion">
                <input placeholder="categoria" type="text" name="categoria" id="categoria">
                <input type="checkbox" name="done" id="done">
                <input type="submit" class="btn btn-primary" value="Guardar">
            </form>
</div>


<div class="container">
        <div class="col-md-8">
            <h1>{$titulo}</h1>

            <ul class="list-group">
                {foreach from=$boots item=$boot}
                    <li>
                            <a href="viewBoots/{$boot->id_botin}">{$boot->modelo}</a> 
                                                |{$boot->talle} 
                                                |{$boot->precio} 

                            
                            
                             {* <a class="btn btn-danger" href="deleteTask/{$task->id_tarea}">Borrar</a>
                            
                                <a class="btn btn-success" href="updateTask/{$task->id_tarea}">Done</a> *}
                          
                                <!-- <a class="btn btn-success" href="updateTask/{$task->id_tarea}">Restore</a> -->
                            

                    </li>
                {/foreach}
            </ul>
        </div>
    </div>



{include file='templates/footer.tpl'}