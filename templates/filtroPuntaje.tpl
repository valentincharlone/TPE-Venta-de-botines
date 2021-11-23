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
      <form class="form-alta" method="POST"> 
        <label class="labelFiiltroPuntaje">Ver comentarios con:</label>
        <input name="id" value={$id} hidden/>
        <div class="contenedorFiltro">
                        <button type="button" class="fas fa-search btn-filtroP" name="filtrar" id="comentariosPorEstrellas" ></button>
            <select name="puntaje" id="puntaje" class="form-select form-select-lg mb-3 selectFiltroP" aria-label=".form-select-lg example">
                            <option value="1">⭐</option>
                            <option value="2">⭐⭐</option>
                            <option value="3">⭐⭐⭐</option>
                            <option value="4">⭐⭐⭐⭐</option>
                            <option value="5">⭐⭐⭐⭐⭐</option>
            </select>
        </div>
    </form>
      </form>
      <form class="form-alta" method="POST"> 
        <label class="labelFiiltroPuntaje">Ver comentarios por horario:</label>
        <input name="id" value={$id} hidden/>
        <div class="contenedorFiltro">
                        <button type="button" class="fas fa-search btn-filtroP" name="filtrar" id="comentariosPorEstrellas" ></button>
            <select name="hora" id="hora" class="form-select form-select-lg mb-3 selectFiltroP" aria-label=".form-select-lg example">
                            <option value="nuevo">mas nuevo a mas antiguo</option>
                            <option value="antiguo">mas antiguo a mas nuevo</option>
            </select>
        </div>
    </form>