{include file='templates/header.tpl'}
{include file='templates/nav.tpl'}

<div class="col-md-4">
            <h2>Crear Botin</h2>
            <form class="form-alta" action="createBoot" method="POST"> 
            <label>Marca:</label> <select name="marca" id="marca">
                    <option value="1">Adidas </option>
                    <option value="2">Nike </option>
                    <option value="3">Puma </option>
                    <option value="4">Lotto </option>
                  </select>  
               <label>Modelo:</label> <input placeholder="modelo" type="text" name="modelo" id="modelo" required>
                 <label>Categoria:</label><select name="categoria" id="categoria">
                    <option value="Pasto sintetico">Pasto sintetico </option>
                    <option value="Terreno blando">Terreno blando</option>
                    <option value="Terreno firme">Terreno firme</option>
                    <option value="Futsal">Futsal </option>
                  </select>  
                 <label>Talle:</label> <select name="talle" id="talle">
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
                <label>Descripcion:</label><textarea placeholder="descripcion" rows="5" cols="50" type="text" name="descripcion" id="descripcion"></textarea>
               <label>Precio:</label> <input placeholder="$" type="number" name="precio" id="precio" required>
                <input type="submit" class="btn btn-primary" value="Guardar">
            </form>
</div>


<div class="container">
        <div class="col-md-8">
            <h1>{$titulo}</h1>
            

            <ul class="list-group">
                {foreach from=$boots item=$boot}
                    <li>
                            <a href="viewBoot/{$boot->id_botin}">{$boot->modelo}</a> 
                                                |{$boot->talle} 
                                                |{$boot->precio} 
                            <a class="btn btn-danger" href="deleteBoot/{$boot->id_botin}">Borrar</a>
                            <a class="btn btn-success" href="updateBoot/{$boot->id_botin}">Editar</a>
                    </li>
                {/foreach}
            </ul>
        </div>
    </div>



{include file='templates/footer.tpl'}