{include file='templates/usoComun/header.tpl'}
{include file='templates/usoComun/nav.tpl'}
{if !empty($userEmail) && ($logueado == true)}
<div class="contenedorFormNewMark">
    <form class="form-alta" action="insertMark" method="POST"> 
                <label>Nueva marca:</label> 
                <input type="text"  name="newMark" class="nuevaMarca">
                <input type="submit" name="nuevaMarca" class="btn-nuevaMarca">
    </form>
</div>
<div class="containerForecahMarcas">
{foreach from=$marcas item=$marca}
    <div class="contenedorMarcasYbtn">
            <div>
                <h2 class="allMarks">{$marca->nombre}</h2>
            </div>
            <div class="botonesByE2">
                <a class="btn btn-primary btn-sm borrar2" href="deleteMark/{$marca->id_marca}">Borrar</a>
                <a class="btn btn-secondary btn-sm editar2" href="showFormMark/{$marca->id_marca}">Editar</a>
            </div>
    </div>
{/foreach}
</div>
{/if}














{include file='templates/usoComun/footer.tpl'}