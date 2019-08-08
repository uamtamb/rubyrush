puts "Загадано число от 0 до 16, отгадайте какое?"
chislo=rand(0..16).to_i
#puts chislo
#1
mychislo=gets.chomp.to_i
if mychislo==chislo
	puts "Ура, вы выиграли!"
	exit
else
	if mychislo>chislo
		puts "нужно меньше"
	else
		puts "нужно больше"
	end
	if (mychislo-chislo).abs<3
		puts "тепло"
	else
		puts "холодно"
	end
end
#2
mychislo=gets.chomp.to_i
if mychislo==chislo
	puts "Ура, вы выиграли!"
	exit
else
	if mychislo>chislo
		puts "нужно меньше"
	else
		puts "нужно больше"
	end
	if (mychislo-chislo).abs<3
		puts "тепло"
	else
		puts "холодно"
	end
end
#3
mychislo=gets.chomp.to_i
if mychislo==chislo
	puts "Ура, вы выиграли!"
	exit
else
	if mychislo>chislo
		puts "нужно меньше"
	else
		puts "нужно больше"
	end
	if (mychislo-chislo).abs<3
		puts "тепло"
	else
		puts "холодно"
	end
end
puts 'В этот раз вам не повезло. Было загадано число ' + chislo.to_s
  
