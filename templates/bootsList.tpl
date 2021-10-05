{include file='templates/header.tpl'}
{include file='templates/nav.tpl'}

<div class="container">
        <div class="col-md-8">
            <h1>{$titulo}</h1>
            

            <ul class="list-group">
                {foreach from=$boots item=$boot}
                    <li>
                            <a href="viewBoot/{$boot->id_botin}">{$boot->modelo}</a> 
                                                |{$boot->talle} 
                                                |{$boot->precio} 
                            <a class="btn btn-danger" href="deleteBoot/{$boot->id_botin}">Borrar</a>
                            <a class="btn btn-success" href="updateBoot/{$boot->id_botin}">Editar</a>
                    </li>
                {/foreach}
            </ul>
        </div>
    </div>



{include file='templates/footer.tpl'}