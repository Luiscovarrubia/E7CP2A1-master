def cls
  system 'clear'
  end

  def inicializacion
      curso = {"Luis": [47, 'M', 'Recoleta'], "Miguel": [28, 'M', 'Independencia'], "Sandra": [20,'F','Satiago'], "Irene": [57,'F','Renca']}

      menu(curso)
  end


  def mostrar (curso_mostrar)

              cls
              curso_nuevo=curso_mostrar
              puts "CURSO ACTUAL"
          curso_nuevo.each do |key, value|
          print "Nombre: #{key}  edad:  #{value[0]} Genero: #{value[1]}  Comuna: #{value[2]} \n"
          end

              puts "El total de alumnos es:#{curso_nuevo.length}"
  end


  def mostrar_m_f (curso_mostrar_m_f)

    cls
    curso_nuevo=curso_mostrar_m_f
    machos=[]
    hembras=[]
curso_nuevo.each do |key, value|

  hembras << key if value[1]=='f'
  machos << key if value[1]=='m'

end
puts "ALUMNAS"
puts hembras
puts ""
puts "ALUMNOS"
puts machos
end

  def mostrar_suma_edad (curso_suma_edad)

          cls

          curso_nuevo=curso_suma_edad
          acumulador_edad=0
      curso_nuevo.each do |key, value|
        acumulador_edad=value[0].to_i+acumulador_edad
      end

    puts "La sumatoria de todas las edades de los alumnos es:
  #{acumulador_edad}"
    promedio_edades=acumulador_edad/curso_nuevo.length
    promedio_edades
  end

  def promedio_edad (curso_promedio)
    cls
          curso_nuevo=curso_promedio
          acumulador_edad=0
      curso_nuevo.each do |key, value|
        acumulador_edad=value[0].to_i+acumulador_edad
      end
      promedio_edades=acumulador_edad/curso_nuevo.length
      print "El promedio de edad del curso es: #{promedio_edades} \n"
  end

  def mostrar_comuna (curso_mostrar_comuna)

          cls
          curso_nuevo=curso_mostrar_comuna
          puts "LISTADO PROCEDENCIA DE ALUMNOS (COMUNAS):"

      curso_nuevo.each do |key, value|

         print "  #{value[2]} \n"

      end


  end

  def agregar(curso_agregar)
              cls
              new_curso=curso_agregar
              puts ""

              puts "Ingrese el nombre de nuevo alumno"
              new_nombre=gets.chomp.capitalize.to_sym
              puts "Ingrese la edad"
              new_edad=gets.chomp.to_i

      new_sex=''
      while new_sex!="M" && new_sex!="F" do
        puts "Ingrese genero del alumno (M o F) "
        new_sex=gets.chomp.capitalize.to_s
      end

              puts "Ingrese la comuna del alumno"
              new_comuna=gets.chomp.capitalize.to_s
              new_alumno=[new_nombre, new_edad,new_sex,new_comuna]
              #print new_alumno
              #new_curso = Hash[new_alumno.collect { |item| [new_nombre, new_edad] } ]
              new_curso[new_nombre]=new_edad,new_sex,new_comuna
              mostrar(new_curso)
              puts""
              opcion_si=""
              puts "Presione 1 para agregar nuevo alumno, cualquier tecla para regresar al menu"
              opcion_si=gets.chomp.to_i
         if opcion_si ==1

          agregar(new_curso)

        else
          mostrar(new_curso)
     end
  end

  def borrar (curso_borrar)

        curso=curso_borrar

        curso.each do |key, value|

        puts "#{key} " #"#{key} =  #{value}"

        end
                puts "Ingrese el nombre del alumno para elliminar del curso"
                alumno_editar=gets.chomp.capitalize.to_sym

      if curso.has_key?(alumno_editar)== true
            puts "EL ALUMNO EXISTE \n"
            sleep (1)

            puts "#{alumno_editar} SE ELIMINAR DEL CURSO \n"
            sleep (2)
            curso.delete(alumno_editar)
            #puts "INVENTARIO ACTUAL"
            #inventario.each do |key, value|
            #puts "#{key}=  #{value}  "
            #end
      else
            puts ""
            puts "EL ALUMNO NO EXISTE \n "
            puts ""
            sleep (2)


      end

            curso

  end

  def editar (curso_editar)
              curso=curso_editar
        curso.each do |key, value|
              puts "#{key} =  #{value}"
        end
              puts "Ingrese el nombre a editar"
              alumno_editar=gets.chomp.to_sym
         if curso.has_key?(alumno_editar)== true

              puts "El alumno que busca si existe sus datos son: \n"
              print "Edad:   #{(curso.fetch(alumno_editar))[0]}  \n"  #mostramos alumnos
              print "genero: #{(curso.fetch(alumno_editar))[1]}  \n"
              print "Comuna: #{(curso.fetch(alumno_editar))[2]}  \n"
              opcion_si=""
              puts "Presione 1 para modificar datos del alumno, cualquier tecla para regresar al menu"
              opcion_si=gets.chomp.to_i
                if opcion_si ==1
                        puts "ingrese nueva edad, la edad de :#{alumno_editar}  actual es: #{(curso.fetch(alumno_editar))[0]}"
                        new_edad=gets.chomp.to_i
                        (curso.fetch(alumno_editar))[0]=new_edad
                        puts "La nueva edad es: #{(curso.fetch(alumno_editar))[0]} "
                        new_genero=''
                    while new_genero !="M" && new_genero!="F" do
                          puts "Ingrese genero de  :#{alumno_editar} alumno (M o F) "
                          new_genero=gets.chomp.capitalize.to_s
                          (curso.fetch(alumno_editar))[1]=new_genero
                          puts "el nuevo genero es: #{(curso.fetch(alumno_editar))[1]} "
                    end

              puts "Ingrese nueva comuna del alumno:#{alumno_editar} la actual comuna es #{(curso.fetch(alumno_editar))[2]} "
              (curso.fetch(alumno_editar))[2]=gets.chomp.to_s
              puts "la nueva comuna es #{(curso.fetch(alumno_editar))[2]}"

              puts "Los datos actualizados del alumno #{alumno_editar} son :"
              print "Edad:   #{(curso.fetch(alumno_editar))[0]}  \n"  #mostramos alumnos
              print "genero: #{(curso.fetch(alumno_editar))[1]}  \n"
              print "Comuna: #{(curso.fetch(alumno_editar))[2]}  \n"
          else

     mostrar(curso)

  end


     puts "Alumno editado\n"


     else
     puts "el fue modificado \n "

      end
      curso
 end


  def curso_filtrar (curso_filtar)
    cls
    curso_filtro=curso_filtar
                max_edad=130
          while max_edad > 120 || max_edad < 5
          puts "Ingrese los limites para filtrar por edad:"
          puts "Edad maxima (topes 5 y 120 años)"
          max_edad=gets.chomp.to_i
          end

                min_edad=130
          while min_edad > max_edad
          puts "Edad minima, recuerde que debe ser menor de #{max_edad} años"
          min_edad=gets.chomp.to_i
          cls
          end
          puts "Los alumnos que coresponden a las edades filtradas son:"
          curso_filtro.each do |key, value|

            contador=0
           if value[0] <= max_edad && value[0]>=min_edad

            print " #{key}  #{value[0]} \n"

          end

          end

  end


  def  menu (curso1)

  #bodega
  menu_opcion =0
  while menu_opcion !=1 do
  puts ""
  puts "Ingrese la opcion deseada"
  puts "1 Para agregar alumno "
  puts "2 Para editar alumno "
  puts "3 Para eliminar alumno "
  puts "4 Mostrar alumnos  "
  puts "5 Mostrar comunas de procedencia "
  puts "6 Muestra una lista con todas las personas que tengan entre 20 y 25 años. "
  puts "7 Muestra la suma de las edades de todas las personas. "
  puts "8 Muestra el promedio de las edades del grupo. "
  puts "9 Muestra dos listas de personas, una por cada género. "
  puts "10 salir del sistema "


    opcion_menu=gets.chomp.to_i


    if opcion_menu >= 1 && opcion_menu <= 10
      if opcion_menu == 1
        agregar (curso1)


      elsif opcion_menu == 2


      editar(curso1)


      elsif opcion_menu == 3

        borrar (curso1)
        mostrar (curso1)


      elsif opcion_menu == 4

        mostrar(curso1)


      elsif opcion_menu == 5

        mostrar_comuna(curso1)

      elsif opcion_menu ==6

        curso_filtrar(curso1)


      elsif opcion_menu == 7

        mostrar_suma_edad(curso1)


      elsif opcion_menu ==8

        promedio_edad(curso1)


      elsif opcion_menu == 9

        mostrar_m_f(curso1)


      elsif opcion_menu == 10
        menu_opcion=1
        puts '#########################'
        puts '#  CERRANDO  APP        #'
        puts '#########################'
      end
    else

        puts '#########################'
        puts '#ESCRIBIR OPCION VEALIDA#'
        puts '#########################'
   end
  end
  end
  cls
  inicializacion