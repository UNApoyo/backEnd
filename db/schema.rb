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

ActiveRecord::Schema.define(version: 20170331163542) do

  create_table "carrera_investigacions", force: :cascade do |t|
    t.integer  "carrera_id"
    t.integer  "grupo_investigacion_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["carrera_id"], name: "index_carrera_investigacions_on_carrera_id"
    t.index ["grupo_investigacion_id"], name: "index_carrera_investigacions_on_grupo_investigacion_id"
  end

  create_table "carrera_materia", force: :cascade do |t|
    t.integer  "carrera_id"
    t.integer  "materia_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["carrera_id"], name: "index_carrera_materia_on_carrera_id"
    t.index ["materia_id"], name: "index_carrera_materia_on_materia_id"
  end

  create_table "carreras", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "creditos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "codigo"
  end

  create_table "enfoque_materia", force: :cascade do |t|
    t.integer  "enfoque_id"
    t.integer  "materia_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["enfoque_id"], name: "index_enfoque_materia_on_enfoque_id"
    t.index ["materia_id"], name: "index_enfoque_materia_on_materia_id"
  end

  create_table "enfoques", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estudiantes", force: :cascade do |t|
    t.integer  "porcentaje_carrera"
    t.integer  "creditos_disponibles"
    t.integer  "creditos_aprobados"
    t.integer  "creditos_inscritos"
    t.integer  "creditos_pendientes"
    t.integer  "materia_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["materia_id"], name: "index_estudiantes_on_materia_id"
  end

  create_table "grupo_investigacions", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "historia_academicas", force: :cascade do |t|
    t.decimal  "calificacion"
    t.integer  "materia_id"
    t.integer  "estudiante_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["estudiante_id"], name: "index_historia_academicas_on_estudiante_id"
    t.index ["materia_id"], name: "index_historia_academicas_on_materia_id"
  end

  create_table "materia", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "creditos"
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "area"
    t.integer  "codigo"
  end

  create_table "materia_investigacions", force: :cascade do |t|
    t.integer  "materia_id"
    t.integer  "grupo_investigacion_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["grupo_investigacion_id"], name: "index_materia_investigacions_on_grupo_investigacion_id"
    t.index ["materia_id"], name: "index_materia_investigacions_on_materia_id"
  end

  create_table "profesor_grados", force: :cascade do |t|
    t.integer  "profesor_id"
    t.integer  "trabajo_grado_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["profesor_id"], name: "index_profesor_grados_on_profesor_id"
    t.index ["trabajo_grado_id"], name: "index_profesor_grados_on_trabajo_grado_id"
  end

  create_table "profesor_investigacions", force: :cascade do |t|
    t.integer  "profesor_id"
    t.integer  "grupo_investigacion_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["grupo_investigacion_id"], name: "index_profesor_investigacions_on_grupo_investigacion_id"
    t.index ["profesor_id"], name: "index_profesor_investigacions_on_profesor_id"
  end

  create_table "profesors", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "oficina"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trabajo_grados", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
