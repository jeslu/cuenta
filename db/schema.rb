# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20181230194144) do

  create_table "al_autos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "marca"
    t.string "model"
    t.text "foto"
    t.string "placa"
    t.bigint "cliente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "al_empleados", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "nombre"
    t.string "apellido_p"
    t.string "apellido_m"
    t.string "direccion"
    t.bigint "telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "al_horarios", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "dia"
    t.datetime "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "al_serv_categorias", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "categoria"
    t.bigint "tipo_id"
    t.integer "activo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "al_serv_tipos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "tipo"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "al_servicios", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.bigint "categoria_id"
    t.text "descripcion"
    t.decimal "costo", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "al_solicitud_servicios", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "folio"
    t.bigint "clave_serv"
    t.bigint "cliente_id"
    t.bigint "servicio_id"
    t.bigint "empledo_id"
    t.bigint "auto_id"
    t.bigint "horario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profile_fields", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude", limit: 24
    t.float "longitude", limit: 24
  end

end
