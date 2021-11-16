{include file='templates/usoComun/header.tpl'}
{include file='templates/usoComun/nav.tpl'}
<div class="container">
 {if !empty($userEmail) && ($logueado)}
    {foreach from=$marcaFiltro item=$m}
    <a href="viewBoot/{$m->id_botin}" class="hrefBotines">             
            <div class="col-md-8 contenedorDetalles">
                <div class="marca">{$m->nombre} </div>
                <div class="modelo">{$m->modelo}</div>
                <div class="talle"><p>Talle:  {$m->talle} </p></div>
                <div class="precio"><p class="fas fa-dollar-sign"></p></i> {$m->precio} </div>
                            <div class="botonesByE">
                                    <a class="btn btn-primary btn-sm borrar" href="deleteBoot/{$m->id_botin}">Borrar</a>
                                    <a class="btn btn-secondary btn-sm editar" href="showForm/{$m->id_botin}">Editar</a>
                                </div>
                </div>
                    </a>       
    {/foreach}
    {else}
     {foreach from=$marcaFiltro item=$m}
    <a href="viewBoot/{$m->id_botin}" class="hrefBotines">             
            <div class="col-md-8 contenedorDetalles">
                <div class="marca">{$m->nombre} </div>
                <div class="modelo">{$m->modelo}</div>
                <div class="talle"><p>Talle:  {$m->talle} </p></div>
                <div class="precio"><p class="fas fa-dollar-sign"></p></i> {$m->precio} </div>
                </div>
                    </a> 
                    {/foreach}
{/if}
<a class="vovler" href="botines"> Volver </a>
</div>
{include file='templates/usoComun/footer.tpl'}