{include file='templates/usoComun/header.tpl'}
{include file='templates/usoComun/nav.tpl'}

            <h2 class="h2iniciarSesion">{$titulo}</h2>
<div class="containerUser">
    <div class="row mt-4">
        <div class="col-md-4">
            <form class="form-alta" action="access" method="POST">
                <input placeholder="Correo electronico" type="text" name="email" id="email" required>
                <input placeholder="Contraseña" type="password" name="password" id="password" required>
                <input type="submit" class="btn btn-primary sumbit" value="Login">
            </form>
        </div>
    </div>
    <h4 class="alert-danger">{$error}</h4>
</div>



{include file='templates/usoComun/footer.tpl'}