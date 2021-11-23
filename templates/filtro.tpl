{include file='templates/usoComun/header.tpl'}
{include file='templates/usoComun/nav.tpl'}
<div class="container">
                   {foreach from=$marcaFiltro item=$m}
                        <a href="botin/{$m->id_botin}" class="hrefBotines">             
        <div class="col-md-8 contenedorDetalles">
            <div class="marca">
                    {$m->nombre}
            </div>
             <div>
                {if $m->imagen == NULL}
                        <img class="errorBotines" src="img/botines/botinSinFoto.png"/>
                    {else}
                        <img class="tamañoImagenBootList" src="{$m->imagen}"/>
                {/if}
            </div>
            <div class="modelo">
                    {$m->modelo}
            </div>
            <div class="talle"><p>Talle:  {$m->talle} </p></div>
            <div class="precio"><p class="fas fa-dollar-sign"></p> {$m->precio} </div>
        {if !empty($userEmail) && ($admin)}
                            <div class="botonesByE">
                                    <a class="btn btn-primary btn-sm borrar" href="deleteBoot/{$m->id_botin}">Borrar</a>
                                    <a class="btn btn-secondary btn-sm editar" href="showForm/{$m->id_botin}">Editar</a>
                                </div>
                {/if}
                </div>
                    </a>           
             {/foreach}
 </div>  
<a class="vovler" href="botines/page/1"> Volver </a>
</div>
{include file='templates/usoComun/footer.tpl'}