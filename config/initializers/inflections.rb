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
   inflect.irregular 'cliente', 'clientes'
   inflect.irregular 'producto_marca', 'producto_marcas'
   inflect.irregular 'producto_umedida','producto_umedidas'
   inflect.irregular 'producto_categoria','producto_categorias'
   inflect.irregular 'producto_catalogo','producto_catalogos'
   inflect.irregular 'cuenta', 'cuentas'


 end
