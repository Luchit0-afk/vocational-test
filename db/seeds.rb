#Clean dataSet
Outcome.all.map  { |o| o.destroy }
Career.all.map   { |c| c.destroy }
Choice.all.map   { |e| e.destroy }
Question.all.map { |q| q.destroy }


# Careers
Agronomia = Career.create(name: 'Agronomia')
Arquitectura = Career.create(name: 'Arquitectura')
Arte = Career.create(name: 'Arte')
Computacion = Career.create(name: 'Computación')
Economia = Career.create(name: 'Economía')
EducacionFisica = Career.create(name: 'Educacion Fisica')
Filosofia = Career.create(name: 'Filosofía')
Fisica = Career.create(name: 'Fisica')
Geologia = Career.create(name: 'Geología')
Historia = Career.create(name: 'Historia')
Literaruta = Career.create(name: 'Literaruta')
Matematicas = Career.create(name: 'Matemáticas')
Medicina = Career.create(name: 'Medicina')
Periodismo = Career.create(name: 'Periodismo')
Quimica = Career.create(name: 'Química')
Sociologia = Career.create(name: 'Sociología')
Veterinaria = Career.create(name: 'Veterinaria')

# Questions
Q1 = Question.create(name: 'Q1', description: 'Me trasladaría a una zona agrícola - ganadera para ejercer mi profesión.',number: 1,type: 'Multiple-Choice')
Q2 = Question.create(name: 'Q2', description: 'Tengo buena memoria y no me cuesta estudiar y retener fórmulas y palabras técnicas.',number: 2,type: 'Multiple-Choice')
Q3 = Question.create(name: 'Q3', description: 'Me gusta escribir. En general mis trabajos son largos y están bien organizados.',number: 3,type: 'Multiple-Choice')
Q4 = Question.create(name: 'Q4', description: 'Sé quien es Steven Hawking: Conozco y me atraen sus descubrimientos.',number: 4,type: 'Multiple-Choice')
Q5 = Question.create(name: 'Q5', description: 'Me actualizo respecto de los avances tecnológicos y me intereso por investigar y conocer',number: 5,type: 'Multiple-Choice')
Q6 = Question.create(name: 'Q6', description: 'Sé quien es Andy Warhol y a qué movimiento artístico pertenece. Me apasiona conocer acerca del arte y sus exponentes.',number: 6,type: 'Multiple-Choice')
Q7 = Question.create(name: 'Q7', description: 'En general me intereso por las dificultades que ha tenido que atravesar la humanidad y cómo lo ha superado.',number: 7,type: 'Multiple-Choice')
Q8 = Question.create(name: 'Q8', description: 'Me apasiona leer y no me importa si el libro que elijo tiene muchas páginas, para mí es un gran entretenimiento.',number: 8,type: 'Multiple-Choice')
Q9 = Question.create(name: 'Q9', description: 'Me atrae conocer los procesos y las áreas que hacen funcionar a las empresas.',number: 9,type: 'Multiple-Choice')
Q10 = Question.create(name: 'Q10', description: 'Me siento identificado con el pensamiento de algunos filósofos y escritores.',number: 10,type: 'Multiple-Choice')
Q11 = Question.create(name: 'Q11', description: 'Me encanta estudiar el cuerpo humano y conocer cómo funciona. Además, no me impresiona la sangre.',number: 11,type: 'Multiple-Choice')
Q12 = Question.create(name: 'Q12', description: 'Si pudiera elegir, pasaría mucho tiempo diseñando novedosos objetos o edificios en mi computadora.',number: 12,type: 'Multiple-Choice')
Q13 = Question.create(name: 'Q13', description: 'Si mi blog fuera temático, trataría acerca de:',number: 13,type: 'Multiple-Choice')
Q14 = Question.create(name: 'Q14', description: 'Integraría un equipo de trabajo encargado de producir un audiovisual sobre:',number: 14,type: 'Multiple-Choice')
Q15 = Question.create(name: 'Q15', description: 'Sería importante destacarme como:',number: 15,type: 'Multiple-Choice')

# Choices

C1Q1 = Choice.create(text: 'Si' , question: Q1)
C2Q1 = Choice.create(text: 'No' , question: Q1)

C1Q2 = Choice.create(text: 'Si' , question: Q2)
C2Q2 = Choice.create(text: 'No' , question: Q2)

C1Q3 = Choice.create(text: 'Si' , question: Q3)
C2Q3 = Choice.create(text: 'No' , question: Q3)

C1Q4 = Choice.create(text: 'Si' , question: Q4)
C2Q4 = Choice.create(text: 'No' , question: Q4)

C1Q5 = Choice.create(text: 'Si' , question: Q5)
C2Q5 = Choice.create(text: 'No' , question: Q5)

C1Q6 = Choice.create(text: 'Si' , question: Q6)
C2Q6 = Choice.create(text: 'No' , question: Q6)

C1Q7 = Choice.create(text: 'Si' , question: Q7)
C2Q7 = Choice.create(text: 'No' , question: Q7)

C1Q8 = Choice.create(text: 'Si' , question: Q8)
C2Q8 = Choice.create(text: 'No' , question: Q8)

C1Q9 = Choice.create(text: 'Si' , question: Q9)
C2Q9 = Choice.create(text: 'No' , question: Q9)

C1Q10 = Choice.create(text: 'Si' , question: Q10)
C2Q10 = Choice.create(text: 'No' , question: Q10)

C1Q11 = Choice.create(text: 'Si' , question: Q11)
C2Q11 = Choice.create(text: 'No' , question: Q11)

C1Q12 = Choice.create(text: 'Si' , question: Q12)
C2Q12 = Choice.create(text: 'No' , question: Q12)

C1Q13 = Choice.create(text: 'La importancia de la expresión artística en el desarrollo de la identidad de los pueblos' , question: Q13)
C2Q13 = Choice.create(text: 'La arquelogía urbana como forma de aprender acerca de la historia cultural de una ciudad.' , question: Q13)
C3Q13 = Choice.create(text: 'La tecnología satelital en un proyecto para descubrir actividad volcánica para prevenir catástrofes climáticas.' , question: Q13)
C4Q13 = Choice.create(text: 'Ninguna de las opciones.' , question: Q13)

C1Q14 = Choice.create(text: 'La práctica de deportes y su influencia positiva en el estado de ánimo de las personas.' , question: Q14)
C2Q14 = Choice.create(text: 'Los pensadores del siglo XX y su aporte a la gestión de las organizaciones.' , question: Q14)
C3Q14 = Choice.create(text: 'Las mascotas y su incidencia en la calidad de vida de las personas no videntes.' , question: Q14)
C4Q14 = Choice.create(text: 'El uso de la PC como herramienta para el control de los procesos industriales.' , question: Q14)
C5Q14 = Choice.create(text: 'Procesos productivos de una empresa' , question: Q14)
C6Q14 = Choice.create(text: 'Ninguna de las opciones.' , question: Q14)

C1Q15 = Choice.create(text: 'Director de una investigación técnico científica' , question: Q15)
C2Q15 = Choice.create(text: 'Gerente general de una empresa reconocida por su responsabilidad social.' , question: Q15)
C3Q15 = Choice.create(text: 'Un deportista famoso por su destreza física y su ética profesional.' , question: Q15)
C4Q15 = Choice.create(text: 'Experto en la detección precoz de enfermedades neurológicas en niños.' , question: Q15)
C5Q15 = Choice.create(text: 'Un agente de prensa audaz, número uno en el ranking de notas a celebridades.' , question: Q15)
C6Q15 = Choice.create(text: 'Ninguna de las opciones.' , question: Q15)


#Outcomes

O1C1Q1 = Outcome.create(choice: C1Q1, career: Veterinaria)
O2C1Q1 = Outcome.create(choice: C1Q1, career: Agronomia)

O1C1Q2 = Outcome.create(choice: C1Q2, career: Fisica)
O2C1Q2 = Outcome.create(choice: C1Q2, career: Matematicas)
O3C1Q2 = Outcome.create(choice: C1Q2, career: Quimica)
O4C1Q2 = Outcome.create(choice: C1Q2, career: Computacion)

O1C1Q3 = Outcome.create(choice: C1Q3, career: Literaruta)
O2C2Q3 = Outcome.create(choice: C1Q3, career: Historia)

O1C1Q4 = Outcome.create(choice: C1Q4, career: Fisica)

O1C1Q5 = Outcome.create(choice: C1Q5, career: Computacion)

O1C1Q6 = Outcome.create(choice: C1Q6, career: Arte)

O1C1Q7 = Outcome.create(choice: C1Q7, career: Historia)

O1C1Q8 = Outcome.create(choice: C1Q8, career: Literaruta)
O2C1Q8 = Outcome.create(choice: C1Q8, career: Historia)

O1C1Q9 = Outcome.create(choice: C1Q9, career: Economia)

O1C1Q10 = Outcome.create(choice: C1Q10, career: Filosofia)
O2C1Q10 = Outcome.create(choice: C1Q10, career: Historia)

O1C1Q11 = Outcome.create(choice: C1Q11, career: Medicina)

O1C1Q12 = Outcome.create(choice: C1Q12, career: Computacion)
O2C1Q12 = Outcome.create(choice: C1Q12, career: Arquitectura)

O1C1Q13 = Outcome.create(choice: C1Q13, career: Sociologia)
O2C2Q13 = Outcome.create(choice: C2Q13, career: Historia)
O3C3Q13 = Outcome.create(choice: C3Q13, career: Computacion)
O4C3Q13 = Outcome.create(choice: C3Q13, career: Geologia)

O1C1Q14 = Outcome.create(choice: C1Q14, career: EducacionFisica)
O2C2Q14 = Outcome.create(choice: C2Q14, career: Filosofia)
O3C2Q14 = Outcome.create(choice: C2Q14, career: Historia)
O4C3Q14 = Outcome.create(choice: C3Q14, career: Veterinaria)
O5C4Q14 = Outcome.create(choice: C4Q14, career: Computacion)
O6C5Q14 = Outcome.create(choice: C5Q14, career: Economia)

O1C1Q15 = Outcome.create(choice: C1Q15, career: Fisica)
O2C1Q15 = Outcome.create(choice: C1Q15, career: Quimica)
O3C1Q15 = Outcome.create(choice: C1Q15, career: Computacion)
O4C2Q15 = Outcome.create(choice: C2Q15, career: Economia)
O5C3Q15 = Outcome.create(choice: C3Q15, career: EducacionFisica)
O6C4Q15 = Outcome.create(choice: C4Q15, career: Medicina)
O7C5Q15 = Outcome.create(choice: C5Q15, career: Periodismo)

