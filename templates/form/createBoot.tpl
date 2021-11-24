{include file='templates/usoComun/header.tpl'}
{include file='templates/usoComun/nav.tpl'}
{if ($logueado) && ($admin)}
    <h2 class="agregarBotin">AGREGAR BOTIN:</h2>
    <div class="col-md-4 formAgregarBotin">
        <form class="form-alta" action="insertBoot" method="POST" enctype="multipart/form-data">
            <div class="formMitad">
                <div class="formPrimeros">
                    <input type="file" name="input_name" id="imageToUpload" required>
                    <label>Marca:</label> <select name="marca" id="marca" <select class="form-select form-select-lg mb-3"
                        aria-label=".form-select-lg example">>
                        {foreach from=$marcas item=$marca}
                            <option value="{$marca->id_marca}">{$marca->nombre} </option>
                        {{/foreach}}
                    </select>
                    <label>Modelo:</label> <input class="form-control" type="text" name="modelo" id="modelo">
                    <label>Categoria:</label><select name="categoria" id="categoria" <select
                        class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">>
                        <option value="Pasto sintetico">Pasto sintetico </option>
                        <option value="Terreno blando">Terreno blando</option>
                        <option value="Terreno firme">Terreno firme</option>
                        <option value="Futsal">Futsal </option>
                    </select>
                </div>
                <div class="formSegundos">
                    <label>Talle:</label> <select name="talle" id="talle" <select class="form-select form-select-lg mb-3"
                        aria-label=".form-select-lg example">>
                        <option value="37">37 </option>
                        <option value="37.5">37.5 </option>
                        <option value="38">38 </option>
                        <option value="38.5">38.5 </option>
                        <option value="39">39 </option>
                        <option value="39.5">39.5 </option>
                        <option value="40">40 </option>
                        <option value="40.5">40.5 </option>
                        <option value="41">41 </option>
                        <option value="41.5">41.5 </option>
                        <option value="42">42 </option>
                        <option value="42.5">42.5 </option>
                        <option value="43">43 </option>
                    </select>
                    <label>Descripcion:</label><textarea class="form-control" rows="2" cols="50" type="text"
                        name="descripcion" id="descripcion"></textarea>
                    <label class="input-group mb-3">Precio:</label> <input class="form-control" placeholder="$"
                        type="number" name="precio" id="precio" required>
                    <input type="submit" class="btn btn-primary btn-form" value="Guardar">
                </div>
            </div>
        </form>
    </div>
{/if}


{include file='templates/usoComun/footer.tpl'}