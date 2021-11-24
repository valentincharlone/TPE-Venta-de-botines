{include file='templates/usoComun/header.tpl'}
{include file='templates/usoComun/nav.tpl'}

{if !empty($userEmail) && ($logueado)}
    <h2 class="agregarBotin">MODIFICAR MARCA:</h2>
    <div class="col-md-4 formAgregarBotin">
        <form class="form-alta" action="insertUpdateMark" method="POST">
            <label>{$marca->nombre} pasara a llamarse :</label>
            <input type="text" class="form-" name="renameMark">
            <input type="submit">
            <input type="text" name="id_marca" value="{$id_marca}" hidden>
        </form>




    </div>
{/if}


{include file='templates/usoComun/footer.tpl'}