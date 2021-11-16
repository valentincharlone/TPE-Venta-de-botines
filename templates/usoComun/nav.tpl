<div class="arribaNav">
    <h1><img src="https://adl-foundation.adidas.com/flags/1-0-0/ar.svg" alt="ar flag" title="ar flag" aria-label="ar flag" class="argentina">
    AR$ <span>|</span>  <a href = "botines" class="futbolNav"> Futbol</a>
    </h1>
{if !empty($userEmail) && ($logueado)}
    <div class="perfilYcerrar">
            <div class="usuario-logOut">
                <a class="nav-link login"> {$userEmail}</a>
            </div>
            <div class="usuario-logOut">
                <a href="logOut" class="nav-link logOut"> Cerrar sesión</a>
            </div>
    </div>
</div>
{else}
            <div class="inicioYregistro">
                <a href = "login" class="nav-link login"> Iniciar sesión </a>
            </div>
            <div>
                <a href = "register" class="nav-link register"> Registrarme </a>
            </div>
</div>
    {/if}

{if !empty($userEmail) && ($logueado) && ($admin)}
<div class="contenedor">
    <div class="logo">
        <header>
            <h1><a class="aLogo" href="home">BOOTS</a></h1>
        </header>
     </div>  
    <div>  
        <nav>
            <ul class="nav justify-content-center">
                <li class="nav-item">
                    <a href = "home" class="nav-link"> Home </a>
                </li>
                <li class="nav-item">
                    <a href = "botines" class="nav-link"> Botines </a>
                </li>
                <li class="nav-item">
                    <a href = "createBoot" class="nav-link"> Agregar botin </a>
                </li>
                 <li class="nav-item">
                    <a href = "marcas" class="nav-link"> Marcas </a>
                </li>
                <li class="nav-item">
                    <a href = "usuarios" class="nav-link"> Usuarios </a>
                </li>
            </ul>
        </nav>
        {else}
<div class="contenedor">
    <div class="logo">
        <header>
            <h1><a class="aLogo" href="home">BOOTS</a></h1>
        </header>
     </div>  
    <div>  
        <nav>
            <ul class="nav justify-content-center">
                <li class="nav-item">
                    <a href = "home" class="nav-link"> Home </a>
                </li>
                <li class="nav-item">
                    <a href = "botines" class="nav-link"> Botines </a>
                </li>
            </ul>
        </nav>
        {/if}
    </div>
</div>