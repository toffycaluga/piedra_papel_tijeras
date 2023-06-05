# seleccion juador 1
puts "Bienvenido al juego piedra, papel, tijeras"


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
    puts "has escogido: #{jugador_uno}"
    jugador_dos = opciones.sample
    puts "y yo escogi: #{jugador_dos}" 
    if jugador_uno == jugador_dos
        puts "es un empate !😅 \n veo que pensamos parecido😂, por que no lo vuelves a intentar"
    elsif (jugador_uno == 'piedra' && jugador_dos == 'tijeras')||(jugador_uno == 'papel' && jugador_dos == 'piedra')||(jugador_uno == 'tijeras' && jugador_dos == 'papel')
        puts "Has ganado!🤩 \n veo que tienes experiencia , pero quiero mi revancha! "
    else 
        puts "has perdido 😒 \n no siempre se puede ganar, vuelve a intentarlo!"
    end
else
    puts "debes elejir una opcion entre piedra papel o tijeras"
end