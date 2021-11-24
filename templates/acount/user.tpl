{include file='templates/usoComun/header.tpl'}
{include file='templates/usoComun/nav.tpl'}

<h2 class="h2iniciarSesion">{$titulo}</h2>
<div class="contenedorIngresar">
    <div class="row mt-4 containerUser">
        <div class="col-md-4 ">
            <form class="form-alta" action="verify" method="POST">
                <input placeholder="Correo electronico" type="text" name="email" id="email" required>
                <input placeholder="Contraseña" type="password" name="password" id="password" required>
                <h5 class="alert-danger">{$error}</h5>
                <input type="submit" class="submitUser btn-primary " value="Login">
            </form>

            <p class="noCuenta">No tienes cuenta ? click <span><a href="register">AQUÍ</a></span> para registrarte</p>
        </div>
    </div>
    <div>
        <img src="img/diego.jpg" class="img-diego">
    </div>
</div>



{include file='templates/usoComun/footer.tpl'}