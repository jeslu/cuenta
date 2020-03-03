class Os::OrdenServicio < ApplicationRecord
  self.table_name = "os_orden_servicios"
  belongs_to :User, :class_name => "User", :foreign_key => "user_id"
  belongs_to :Cliente, :class_name => "Cliente", :foreign_key => "cliente_id"
  #has_many :ServicioOrdens, :class_name => "Os::ServicioOrden", :foreign_key => "orden_servicio_id"
  has_many :Equipos, :class_name => "Os::Equipo", :foreign_key => "orden_servicio_id"
  has_many :ServicioOrdens, :class_name => "Os::ServicioOrden", :foreign_key => "orden_servicio_id"
  has_many :Servicios, :through => :ServicioOrdens



  def get_total
  self.Servicios.sum(:costo)
  end



# CREAR PDF DE Orden Servicio
def get_json
  #permite utlizar cualquier tipo de objetos
  datos = Hash.new
  datos = {
    :os => self,
    :cliente => self.Cliente,
    :user => self.User,
    :equipos => self.Equipos


    }



    json_files_path = Rails.application.config.json_files_path
    file_json = "orden_servicio_#{self.id}.json"

    file = File.new(json_files_path + file_json, "w")
    file.puts(datos.to_json)
    file.close
  end

end
