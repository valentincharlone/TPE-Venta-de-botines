{include file='templates/usoComun/header.tpl'}
{include file='templates/usoComun/nav.tpl'}

<div class="container">
    <h1 class="mb-4">{$titulo}</h1>
    <h2>Categoria: {$boot->categoria}</h2>
    <h2>Talle: {$boot->talle}</h2>
    <h2>Precio: {$boot->precio}</h2>
    <h2>Descripcion: {$boot->descripcion}</h2>
</div>
    <a href="home" > Volver </a>

{include file='templates/usoComun/footer.tpl'}