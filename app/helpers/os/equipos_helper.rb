module Os::EquiposHelper
def hg_card_equipos(ce)
  "<div class='card'>
    <h5 class='card-header'>EQUIPO</h5>
    <div class='card-body'>
      <h5 class='card-title'>computadoras..</h5>
      <p class='card-text'>


        <strong>N serie:</strong>
        #{ce.n_serie}



        <strong>Marca:</strong>
        #{ce.Marca.marca}


      <p>
        <strong>Modelo:</strong>
        #{ce.Modelo.modelo}
      
        <strong>Tipo equipo:</strong>
        #{ce.TipoEquipo.tipo }
      </p>
  </p>

      <a href='' class='btn btn-primary'>Agregar mas equipos</a>
    </div>
  </div>".html_safe
end

end
