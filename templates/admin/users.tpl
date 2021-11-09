{include file='templates/usoComun/header.tpl'}

{include file='templates/usoComun/nav.tpl'}
        <h1 class="tituloUsuarios">{$titulo}</h1>
<div class="contenedorUsuarios">
    {if !empty($userEmail) && ($logueado == true) }
    <div>
        <ul class="liUsuarios">
            {foreach from=$usuarios item=$usuario}
            <li class="usuario"> 
                {$usuario->nombre_usuario} 
                    <a class="btn btn-primary btn-sm" href="deleteUser/{$usuario->id}">Eliminar usuario</a>
                    <a class="btn btn-secondary btn-sm" href="doAdmin/{$usuario->id}">Hacer administrador</a>
            </li>
            {/foreach}
        </ul>
    {/if}
</div>