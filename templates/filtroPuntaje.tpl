    <form class="form-alta" action="puntaje" method="POST"> 
        <label>Ordenar comentarios por puntaje</label>
        <input name="id" value={$id} hidden/>
        <div class="contenedorFiltro">
                        <button type="submit" class="fas fa-search btn-filtroB" name="filtrar" id="filtrar" ></button>
            <select name="orden" id="" class="form-select form-select-lg mb-3 selectFiltro" aria-label=".form-select-lg example">
                            <option value="ASC">asc </option>
                            <option value="DESC">desc</option>
            </select>
        </div>
    </form>