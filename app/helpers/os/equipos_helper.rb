module Os::EquiposHelper
def hg_card_equipos(ce)
  "<div class='card'  style='width: 35.5rem;'>
    <h5 class='card-header'><strong>EQUIPO</strong></h5>
    <div class='card-body'>
      <h5 class='card-title'></h5>

    <p class='card-text'>
    <p>

    <strong>Tipo equipo:</strong>
          #{ce.TipoEquipo.tipo }
...
      <strong>Modelo:</strong>
      #{ce.Modelo.modelo}

    </p>


        <strong>N serie:</strong>
        #{ce.n_serie}

...

        <strong>Marca:</strong>
        #{ce.Marca.marca}



  </p>

      <a href='' class='btn btn-primary'>Agregar mas equipos</a>
    </div>
  </div>".html_safe
end

end
