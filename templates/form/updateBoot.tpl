{include file='templates/usoComun/header.tpl'}
{include file='templates/usoComun/nav.tpl'}

{if !empty($userEmail) && ($admin) }

    <h2 class="agregarBotin">MODIFICAR BOTIN:</h2>
    <div class="col-md-4 formAgregarBotin">
        <form class="form-alta" action="insertUpdateBoot" method="POST" enctype="multipart/form-data">
            <div class="formMitad">
                <div class="formPrimeros">
                    <input type="file" name="input_name" id="imageToUpload">
                    <label>Marca:</label> <select name="marca" id="marca" <select class="form-select form-select-lg mb-3"
                        aria-label=".form-select-lg example">>
                        {foreach from=$marcas item=$marca}
                            <option value="{$marca->id_marca}" {if $boot->id_marca_fk == $marca->id_marca} selected {/if}>
                                {$marca->nombre} </option>
                        {/foreach}
                    </select>

                    <label>Modelo:</label> <input class="form-control" type="text" name="modelo" id="modelo"
                        value="{$boot->modelo}">
                    <label>Categoria:</label><select name="categoria" id="categoria" <select
                        class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">>
                        <option value="Pasto sintetico" {if $boot->categoria =="Pasto sintetico"}selected {/if}>Pasto
                            sintetico </option>
                        <option value="Terreno blando" {if $boot->categoria =="Terreno blando"}selected {/if}>Terreno blando
                        </option>
                        <option value="Terreno firme" {if $boot->categoria =="Terreno firme"}selected {/if}>Terreno firme
                        </option>
                        <option value="Futsal" {if $boot->categoria =="Futsal"}selected {/if}>Futsal </option>
                    </select>
                </div>
                <div class="formSegundos">
                    <label>Talle:</label> <select name="talle" id="talle" <select class="form-select form-select-lg mb-3"
                        aria-label=".form-select-lg example">>
                        <option value="37" {if $boot->talle ==37}selected {/if}>37 </option>
                        <option value="37.5" {if $boot->talle ==37.5}selected {/if}>37.5 </option>
                        <option value="38" {if $boot->talle ==38}selected {/if}>38 </option>
                        <option value="38.5" {if $boot->talle ==38.5}selected {/if}>38.5 </option>
                        <option value="39" {if $boot->talle ==39}selected {/if}>39 </option>
                        <option value="39.5" {if $boot->talle ==39.5}selected {/if}>39.5 </option>
                        <option value="40" {if $boot->talle ==40}selected {/if}>40 </option>
                        <option value="40.5" {if $boot->talle ==40.5}selected {/if}>40.5 </option>
                        <option value="41" {if $boot->talle ==41}selected {/if}>41 </option>
                        <option value="41.5" {if $boot->talle ==41.5}selected {/if}>41.5 </option>
                        <option value="42" {if $boot->talle ==42}selected {/if}>42 </option>
                        <option value="42.5" {if $boot->talle ==42.5}selected {/if}>42.5 </option>
                        <option value="43" {if $boot->talle ==43}selected {/if}>43 </option>
                    </select>
                    <label>Descripcion:</label><textarea class="form-control" rows="2" cols="50" type="text"
                        name="descripcion" id="descripcion"> {$boot->descripcion} </textarea>
                    <label class="input-group mb-3">Precio:</label> <input class="form-control" placeholder="$"
                        type="number" name="precio" id="precio" value="{$boot->precio}" required>
                    <input type="submit" class="btn btn-primary btn-form" value="Guardar">
                    <input type="text" name="id_botin" value="{$id_botin}" hidden>
                </div>
            </div>
        </form>

    </div>
{else}
    <h1 class="errorPermiso"> NO TENES PERMISO PARA ACCEDER A ESTA SECCIÓN!</h1>
    <img src="img/error.jpg" class="img-error">
{/if}


{include file='templates/usoComun/footer.tpl'}