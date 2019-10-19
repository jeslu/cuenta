module Os::ServiciosHelper
  def hg_card_servicios(cs)
  "<div class='card'>
    <h5 class='card-header'><strong>Servicio</strong></h5>
    <div class='card-body'>
      <h5 class='card-title'></h5>
      <div class 'table-responsive'>
      <table class='table'>

        <thead>
          <tr>
            <th scope='col'>Servicio</th>
            <th scope='col'>Costo</th>
            <th scope='col'>Descripcion</th>
            <th scope='col'>Handle</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>  #{cs.servicio}</td>
            <td>  #{cs.costo}</td>
            <td>     #{cs.descripcion}</td>
            <td>@mdo</td>
          </tr>
        </tbody>
      </table>
      </div>



      <a href='' class='btn btn-primary'>Agregar servicio</a>
    </div>
  </div>".html_safe
  end
end
