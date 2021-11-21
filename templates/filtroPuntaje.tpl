    <form class="form-alta" method="POST"> 
        <label class="labelFiiltroPuntaje">Ordenar comentarios por puntaje:</label>
        <input name="id" value={$id} hidden/>
        <div class="contenedorFiltro">
                        <button type="button" class="fas fa-search btn-filtroP" name="filtrar" id="filtrarComentarios" ></button>
            <select name="orden" id="order" class="form-select form-select-lg mb-3 selectFiltroP" aria-label=".form-select-lg example">
                            <option value="ASC">menor a mayor </option>
                            <option value="DESC">mayor a menor</option>
            </select>
        </div>
    </form>