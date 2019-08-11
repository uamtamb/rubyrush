#Наибольшее число
a=172.169
b=231.514
puts a
puts b
if (a>b)
	puts "Наибольшее число: " + a.to_s
end
if (a<b)
	puts "Наибольшее число: " + b.to_s
end
if (a==b)
	puts "Error"
end

# Среднее арифметическое
c=2308
d=13
e=(c+d)/2
puts "Среднее арефметическое " + c.to_s + " и " + d.to_s + " равно: " + e.to_s

#Четное число?
f=gets.chomp
e=f.to_f%2
puts e
if (e!=0)
	puts "Нечетное"
else
	puts "Четное"
end

#Сегодня выходной?
day=Time.now
if day.wday != 0&&6
	puts "Будни"
else puts "Выходной"
end

#Орел или решка
rnd=rand(2)
puts rnd
if rnd!=0
	puts "Орел"
else puts "Решка"
end

#Орел или решка 1 из 10
rnd=rand(0..10)
puts rnd
if rnd==10
	puts "Ребро"
else
	if rand(2)==1
		puts "Орел"
	else
		puts "Решка"
	end
end