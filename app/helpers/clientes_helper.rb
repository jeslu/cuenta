module ClientesHelper

def hg_card_cliente(c)
  "<div class='card' style='width: 33.9rem;'>
    <div class='card-body'>
      <h5 class='card-title'>#{c.nombre}  #{c.apellido_p} #{c.apellido_m}</h5>
      <h6 class='card-subtitle mb-2 text-muted'>Cliente</h6>
      <h7 class='card-title'><strong>Direccion:</strong> <a href='' class='card-link'>#{c.direccion} </a></h7>
      <h7 class='card-title'><strong>Telefono:</strong> <a href='' class='card-link'> #{c.telefono} </a></h7>
       <p class='card-text'><small class='text-muted'>#{c.created_at.to_date}</small></p>
      <a href='' class='card-link'>edit </a>
      <a href='' class='card-link'>Eliminar</a>
    </div>
  </div>".html_safe
end
end
