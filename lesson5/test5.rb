print "Введите число 1: "
#.to_i переводим строку которая получилась поссле ввода gets в число int
a=gets.to_i
print "Введите число 2: "
b=gets.to_i
print "Введите число 3: "
c=gets.to_i
d=(a+b+c)/3
puts d

#конвертор валют
print "Сколько сейчас стоит 1 доллар в рублях? "
dol=gets.to_f
print "Сколько  у вас рублей? "
sum_rub=gets.to_f
sum_dol=sum_rub/dol
puts "Ваши запасы равны: \$ " + sum_dol.round(2).to_s

#выбор валют
puts "Какая у вас на руках валюта?
1. Рубли
2. Доллары"
val=gets.to_i
if (val>2&&val<1)
	puts "error"
	exit
end
if val==2
	print "Сколько сейчас стоит 1 доллар? "
	dol=gets.to_f
	print "Сколько у вас долларов? "
	sum_dol=gets.to_f
	sum_rub=sum_dol*dol
	puts "Ваши запасы на сегодня равны: " +sum_rub.round(2).to_s+ " руб."
else
	print "Сколько сейчас стоит 1 доллар? "
	dol=gets.to_f
	print "Сколько у вас рублей? "
	sum_rub=gets.to_f
	sum_dol=sum_rub/dol
	puts "Ваши запасы на сегодня равны: " +sum_dol.round(2).to_s+ "$."
end