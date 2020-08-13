require 'time'
data_nascimento = Time.parse("2001-05-27")

def age(dob)
    now = Time.now.to_date
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
end
count = 0
loop do
 if (count == 0)
  count += 1
  puts("Olá,digite um comando entre 1 a 6:")
 else
  puts("Deseja rodar novamente? Se sim digite o comando, se não insira um valor fora do intervalo: ")
 end
 comando = gets
 comando = comando.to_i
 break if comando < 1 or comando > 6 

  if comando == 1
    puts("Carlos Eduardo Pinheiro Santos")
  elsif comando == 2
    puts(data_nascimento.strftime("%d/%m/%Y"))
  elsif comando == 3
    idade = age(data_nascimento)
    puts(idade**3)
  elsif comando == 4
    puts ("Dígite uma palavra:")
    string = gets
    puts(string.reverse)
  elsif comando == 5
    puts ("Dígite uma palavra:")
    string = gets
    metade = ''
    tamanho = (string.length)/2
    cont = 0
    while tamanho > 0
      metade += string[cont]
      tamanho -= 1
      cont += 1
    end
    puts(metade)
  elsif comando == 6
    data_formatada = (data_nascimento.strftime("%d/%m/%Y"))
    somatorio = ''
    soma = 0
    count = 0
    while count < data_formatada.length
      if (data_formatada[count]).to_i != 0
        if(count != data_formatada.length-1)
         somatorio += data_formatada[count] + '+'
        else
          somatorio += data_formatada[count]
        end
      end
      soma += data_formatada[count].to_i
      count += 1
    end
    puts(data_formatada + " = " + somatorio + " = " + soma.to_s)
  else
    puts("Comando inválido")
  end
end
