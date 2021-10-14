   
  <form class="form-alta" action="filtrar" method="POST"> 
    <label>Filtrar</label>
    <div class="contenedorFiltro">
                      <button type="submit" class="fas fa-search btn-filtroB" name="filtrar" id="filtrar" ></button>
    <select name="marca" id="marca" class="form-select form-select-lg mb-3 selectFiltro" aria-label=".form-select-lg example">
                     
                     {foreach from=$marcas item=$marca}
                      <option value="{$marca->id_marca}">{$marca->nombre} </option>
                      {{/foreach}}
     </select>
     </form>
    </div>
    </form>