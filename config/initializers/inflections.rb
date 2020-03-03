# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
 ActiveSupport::Inflector.inflections do |inflect|
   # MODULO AUTOLAVADO

   inflect.irregular 'auto','autos'
   inflect.irregular 'empleado','empleados'
   inflect.irregular 'horario','horarios'
   inflect.irregular 'serv_tipo','serv_tipos'
   inflect.irregular 'servicio','servicios'
   inflect.irregular 'serv_categoria','serv_categorias'
   inflect.irregular 'solicitud_servicio','solicitud_servicios'
   # MODULO CUENTA
   inflect.irregular 'cuenta_cliente', 'cuenta_clientes'
   inflect.irregular 'cuenta', 'cuentas'
   inflect.irregular 'cuenta_pago', 'cuenta_pagos'
   inflect.irregular 'cuenta_detalle', 'cuenta_detalles'
   # MODULO PRODUCTOS
   inflect.irregular 'marca', 'marcas'
   inflect.irregular 'modelo', 'modelos'
   inflect.irregular 'umedida','umedidas'
   inflect.irregular 'categoria','categorias'
   inflect.irregular 'catalogo','catalogos'
   # MODULO ORDEN DE servicios
   inflect.irregular 'modelo', 'modelos'
   inflect.irregular 'os_equipo','os_equipos'
   inflect.irregular 'os_tipo_equipo','os_tipo_equipos'
   inflect.irregular 'os_servicio','os_servicios'
   inflect.irregular 'os_orden_servicio','os_orden_servicios'
   inflect.irregular 'servicio_orden', 'servicio_ordens'

   inflect.irregular 'cliente', 'clientes'
 end
