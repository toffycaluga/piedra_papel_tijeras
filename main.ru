# seleccion juador 1
puts "Bienvenidos al jueo piedra, papel, tijeras"


opciones = ["piedra","papel","tijeras"]

jugador_uno =ARGV[0].chomp.downcase

# se crea una verificación para ver si escribio una opcion valida

verificador = false

# se verifica por medio de un circo para ver si la opcion corresponde
opciones.each do |opcion|
    if jugador_uno == opcion
        verificador= true
    end
end

if verificador 
    puts "el jugador uno eligio #{jugador_uno}"
    jugador_dos = opciones.sample
    puts "el jugador dos eligio #{jugador_dos}" 
    if jugador_uno == jugador_dos
        puts "es un empate😅"
    elsif (jugador_uno == 'piedra' && jugador_dos == 'tijeras')||(jugador_uno == 'papel' && jugador_dos == 'piedra')||(jugador_uno == 'tijeras' && jugador_dos == 'papel')
        puts "Ganaste jugador uno 🤩"
    else 
        puts "perdiste 😒"
    end
else
    puts "debes elejir una opcion entre piedra papel o tijeras"
end