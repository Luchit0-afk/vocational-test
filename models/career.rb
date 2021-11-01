class Career < Sequel::Model
	one_to_many :surveys
	one_to_many :outcomes

	def associateLink
		link = ""
		agronomia = "https://www.unrc.edu.ar/unrc/carreras/ayv_ingenieria_agronomica.htm"
		computacion = "https://www.unrc.edu.ar/unrc/carreras/exa_lic_ciencias_computacion.php"
		economia = "https://www.unrc.edu.ar/unrc/carreras/eco_lic_economia.htm"
		edFisica = "https://www.unrc.edu.ar/unrc/carreras/hum_prof_educacion_fisica.php"
		filosofia = "https://www.unrc.edu.ar/unrc/carreras/hum_lic_en_filosofia.php"
		fisica = "https://www.unrc.edu.ar/unrc/carreras/exa_prof_fisica.php"
		geologia = "https://www.unrc.edu.ar/unrc/carreras/exa_lic_geologia.php"
		historia = "https://www.unrc.edu.ar/unrc/carreras/hum_lic_historia.php"
		literatura = "https://www.unrc.edu.ar/unrc/carreras/ProgAsig5.php?n=%2FBpLfBDYxXmQaxDePIM%2Bvqvf5cLyAysalAWtwPjvud4%3D"
		matematica = "https://www.unrc.edu.ar/unrc/carreras/exa_lic_matematica.php"
		medicina = "https://fcm.unc.edu.ar/"
		periodismo = "https://www.unrc.edu.ar/unrc/carreras/hum_comunicacion_social.php"
		quimica = "https://www.unrc.edu.ar/unrc/carreras/exa_lic_quimica.php"
		sociologia = "https://sociales.unc.edu.ar/licenciaturasociologia"
		veterinaria = "https://www.unrc.edu.ar/unrc/carreras/ayv_medicina_veterinaria.htm"
		arquitectura = "https://faud.unc.edu.ar/carrera-de-arquitectura/"
		arte = "https://artes.unc.edu.ar/"
		if self.name == "Agronomia" then
			link = agronomia
		elsif self.name == "Arquitectura" then
			link = arquitectura
		elsif self.name == "Arte" then
			link = arte
		elsif self.name == "Computación" then
			link = computacion
		elsif self.name == "Economía" then
			link = economia
		elsif self.name == "Educacion Fisica" then
			link = edFisica
		elsif self.name == "Filosofía" then
			link = filosofia
		elsif self.name == "Fisica" then
			link = fisica
		elsif self.name == "Geología" then
			link = geologia
		elsif self.name == "Historia" then
			link = historia
		elsif self.name == "Literatura" then
			link = literatura
		elsif self.name == "Matemáticas" then
			link = matematica
		elsif self.name == "Medicina" then
			link = medicina
		elsif self.name == "Periodismo" then
			link = periodismo
		elsif self.name == "Química" then
			link = quimica
		elsif self.name == "Sociología" then
			link = sociologia
		elsif self.name == "Veterinaria" then
			link = veterinaria
		end 

		return link
	end
end