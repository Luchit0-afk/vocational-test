# frozen_string_literal: true

class Career < Sequel::Model
  one_to_many :surveys
  one_to_many :outcomes

  def associate_link
    link = ''
    agronomia = 'https://www.unrc.edu.ar/unrc/carreras/ayv_ingenieria_agronomica.htm'
    computacion = 'https://www.unrc.edu.ar/unrc/carreras/exa_lic_ciencias_computacion.php'
    economia = 'https://www.unrc.edu.ar/unrc/carreras/eco_lic_economia.htm'
    ed_fisica = 'https://www.unrc.edu.ar/unrc/carreras/hum_prof_educacion_fisica.php'
    filosofia = 'https://www.unrc.edu.ar/unrc/carreras/hum_lic_en_filosofia.php'
    fisica = 'https://www.unrc.edu.ar/unrc/carreras/exa_prof_fisica.php'
    geologia = 'https://www.unrc.edu.ar/unrc/carreras/exa_lic_geologia.php'
    historia = 'https://www.unrc.edu.ar/unrc/carreras/hum_lic_historia.php'
    literatura = 'https://www.unrc.edu.ar/unrc/carreras/ProgAsig5.php?n=%2FBpLfBDYxXmQaxDePIM%2Bvqvf5cLyAysalAWtwPjvud4%3D'
    matematica = 'https://www.unrc.edu.ar/unrc/carreras/exa_lic_matematica.php'
    medicina = 'https://fcm.unc.edu.ar/'
    periodismo = 'https://www.unrc.edu.ar/unrc/carreras/hum_comunicacion_social.php'
    quimica = 'https://www.unrc.edu.ar/unrc/carreras/exa_lic_quimica.php'
    sociologia = 'https://sociales.unc.edu.ar/licenciaturasociologia'
    veterinaria = 'https://www.unrc.edu.ar/unrc/carreras/ayv_medicina_veterinaria.htm'
    arquitectura = 'https://faud.unc.edu.ar/carrera-de-arquitectura/'
    arte = 'https://artes.unc.edu.ar/'
    case name
    when 'Agronomia'
      link = agronomia
    when 'Arquitectura'
      link = arquitectura
    when 'Arte'
      link = arte
    when 'Computación'
      link = computacion
    when 'Economía'
      link = economia
    when 'Educacion Fisica'
      link = ed_fisica
    when 'Filosofía'
      link = filosofia
    when 'Fisica'
      link = fisica
    when 'Geología'
      link = geologia
    when 'Historia'
      link = historia
    when 'Literatura'
      link = literatura
    when 'Matemáticas'
      link = matematica
    when 'Medicina'
      link = medicina
    when 'Periodismo'
      link = periodismo
    when 'Química'
      link = quimica
    when 'Sociología'
      link = sociologia
    when 'Veterinaria'
      link = veterinaria
    end

    link
  end
end
