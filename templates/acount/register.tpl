{include file='templates/usoComun/header.tpl'}
{include file='templates/usoComun/nav.tpl'}

            <h2 class="h2iniciarSesion">{$titulo}</h2>
<div class="containerUser">
    <div class="row mt-4">
        <div class="col-md-4">
            <form class="form-alta" action="insertRegister" method="POST">
                    <input placeholder="Nombre" type="text" name="nombre" id="nombre" required>
                    <input placeholder="Apellido" type="text" name="apellido" id="apellido" required>
                    <input placeholder="Nombre de usuario" type="text" name="nombre_usuario" id="nombre_usuario" required>
                    <input placeholder="Correo electronico" type="text" name="email" id="email" required>
                    <input placeholder="Contraseña" type="password" name="password" id="password" required>
                    <input type="submit" class="btn btn-primary sumbit" value="Crear cuenta">
            </form>
        </div>
    </div>
    <div>
    <img src="img/messi.jpeg" class="img-messi">
    </div>
</div>



{include file='templates/usoComun/footer.tpl'}