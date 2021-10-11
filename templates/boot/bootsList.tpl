{include file='templates/usoComun/header.tpl'}
{include file='templates/usoComun/nav.tpl'}

<div class="tituloYfiltro">
            <h1>{$titulo}</h1>
    
        {include file='templates/filter.tpl'}     
  
  </div>      
<div class="container">
     {if !empty($userEmail) }
                    {foreach from=$boots item=$boot}
        <div class="col-md-8 contenedorDetalles">
                        <a href="viewBoot/{$boot->id_botin}" class="hrefBotines">             
            <div class="modelo">
                {$boot->modelo}
            </div>
            <div class="talle"><p>Talle:  {$boot->talle} </p></div>
            <div class="precio"><p class="fas fa-dollar-sign"></p></i> {$boot->precio} </div>
                        <div class="botonesByE">
                                <a class="btn btn-primary btn-sm borrar" href="deleteBoot/{$boot->id_botin}">Borrar</a>
                                <a class="btn btn-secondary btn-sm editar" href="showForm/{$boot->id_botin}">Editar</a>
                            </div>
                  </a>       
            </div>
             {/foreach}
            {else}
             {foreach from=$boots item=$boot}
              <div class="col-md-8 contenedorDetalles">
                        <a href="viewBoot/{$boot->id_botin}" class="hrefBotines">             
            <div class="modelo">
                {$boot->modelo}
            </div>
            <div class="talle"><p>Talle:  {$boot->talle} </p></div>
            <div class="precio"><p class="fas fa-dollar-sign"></p></i> {$boot->precio} </div>
                  </a>       
            </div>

                    {/foreach}
         {/if}
                
    </div>
  



{include file='templates/usoComun/footer.tpl'}