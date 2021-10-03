{include file='templates/header.tpl'}

<div class="container">
        <div class="col-md-8">
            <h1>{$titulo}</h1>

            <ul class="list-group">
                {foreach from=$boots item=$boot}
                    <li class="list-group-item">
                            <a href="viewBoots/{$boot->id_botin}">{$boot->modelo}</a> | {$boot->talle|truncate:30} | {$boot->precio} 

                            
                            {*ACOMODAR DATOSSSS}
                            {* <a class="btn btn-danger" href="deleteTask/{$task->id_tarea}">Borrar</a>
                            
                                <a class="btn btn-success" href="updateTask/{$task->id_tarea}">Done</a> *}
                          
                                <!-- <a class="btn btn-success" href="updateTask/{$task->id_tarea}">Restore</a> -->
                            

                    </li>
                {/foreach}
            </ul>
        </div>
    </div>

</div>

{include file='templates/footer.tpl'}