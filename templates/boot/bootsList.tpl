{include file='templates/usoComun/header.tpl'}
{include file='templates/usoComun/nav.tpl'}

<div class="tituloYfiltro">
            <h1>{$titulo}</h1>
    
        {include file='templates/filter.tpl'}     
  
  </div>      
  
<div class="container">
                    {foreach from=$boots item=$boot}
                        <a href="botin/{$boot->id_botin}" class="hrefBotines">             
        <div class="col-md-8 contenedorDetalles">
            <div class="marca">
                    {$boot->nombre}
            </div>
             <div>
                {if $boot->imagen == NULL}
                        <img class="errorBotines" src="img/botines/botinSinFoto.png"/>
                    {else}
                        <img class="tamañoImagenBootList" src="{$boot->imagen}"/>
                {/if}
            </div>
            <div class="modelo">
                    {$boot->modelo}
            </div>
            <div class="talle"><p>Talle:  {$boot->talle} </p></div>
            <div class="precio"><p class="fas fa-dollar-sign"></p> {$boot->precio} </div>
        {if !empty($userEmail) && ($admin)}
                            <div class="botonesByE">
                                    <a class="btn btn-primary btn-sm borrar" href="deleteBoot/{$boot->id_botin}">Borrar</a>
                                    <a class="btn btn-secondary btn-sm editar" href="showForm/{$boot->id_botin}">Editar</a>
                                </div>
                {/if}
                </div>
                    </a>           
             {/foreach}
 </div>        

 <div class="paginado">
            {if $pageNumber >1}
            <a class="btn btn-primary btn-sm" href="botines/page/{$pageNumber - 1}">↢</a> 
            {/if}
            <button type="button" class="btn btn-light" disabled> {$pageNumber}</button>
            {if $pageNumber < $maxPageNumber}
            <a class="btn btn-primary btn-sm" type="button" href="botines/page/{$pageNumber + 1}">↣</a>
            {/if}
</div>
                
    
  



{include file='templates/usoComun/footer.tpl'}