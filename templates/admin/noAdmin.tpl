{include file='templates/usoComun/header.tpl'}

{include file='templates/usoComun/nav.tpl'}
<h1 class="tituloUsuarios">{$titulo}</h1>
<div class="contenedorUsuarios">
    {if !empty($userEmail) && ($logueado == true) }
        <div>
            <ul class="liUsuarios">
                {foreach from=$usuarios item=$usuario}
                    <li class="usuario">
                        {if $usuario->fotoPerfil}
                            <img class="fotoListaUsuarios" src="{$usuario->fotoPerfil} " />
                        {else}
                            <img class="fotoListaUsuarios" src="img/fotosPerfil/sinFotoPerfil.jpg" />
                        {/if}
                        {$usuario->nombre_usuario}
                        <a class="btn btn-primary btn-sm" href="deleteUser/{$usuario->id}">Eliminar usuario</a>
                        <a class="btn btn-secondary btn-sm" href="doAdmin/{$usuario->id}">Hacer administrador</a>
                    </li>
                {/foreach}
            </ul>
        {/if}
    </div>

{include file='templates/usoComun/footer.tpl'}