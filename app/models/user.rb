class User < ApplicationRecord
  self.table_name = "users"
  # Include default devise modules. Others available are:

  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
 has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
 validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
 # Validate filename
  validates_attachment_file_name :avatar, matches: [/png\Z/, /jpe?g\Z/]
  # Explicitly do not validate
  do_not_validate_attachment_file_type :avatar
  #relaciones entre modelos
has_many :OrdenServicios, :class_name => "Os::OrdenServicio", :foreign_key => "user_id"
has_many :Clientes, :through => :OrdenServicios
has_many :CuentaClientes, :class_name => "Ct::CuentaCliente", :foreign_key => "user_id"
has_many :ProductoCatalogos, :class_name => "Producto::Catalogo", :foreign_key => "user_id"
end
