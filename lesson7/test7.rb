print "Введите N: "
chislo=[]
chislo_N=gets.chomp
item=1
sum=0
while item<=chislo_N.to_i do
    chislo<<item
    sum += item
    item += 1
end
puts chislo.to_s
puts 'Сумма чисел: ' + sum.to_s

#Максимальное из произвольных
arr=[]
print "Введите велечину массива: "
size_arr=gets.to_i
a=1
while a<=size_arr do
    arr<<rand(0..100)
    a+=1    
end
puts arr.to_s
max=0
for b in arr do
    if max<b
    max=b    
    end
end
print "Самое большое число #{max}"

#Инвертирование массива циклом
arr1=[]
arr2=[]
puts "\nВведите длинну массива" 
arr_N=gets.to_i
element=1
while element<=arr_N do
arr1<<rand(0..7)
element+=1
end
puts arr1.to_s
for int in arr1 do
    arr2.unshift(int)
end
puts arr2.to_s

#Проверка ввода пользователя
puts "\nВы решили прогуляться в Южном Бутово и наткнулись на спортивных ребят
1. Попытаться убежать
2. Продолжать идти"
#скрытый ввод
#require 'io/console'
#password = STDIN.noecho(&:gets).chomp
#puts password
choice=gets.chomp
while choice !="1" && choice !="2" do
    puts "Введено не верное значение, повторите: "
    choice=gets.chomp
end
if choice=="1"
    #abort - завершает программу в любом месте и выводит строку
	abort "Ребя без труда догнали вас и побили. Не знаю, за что"
else
	puts "Один из ребят вышел и спросил \"Сиги есть?\"
1. Дать прикурить
2. -- Не курю"
	choice=gets.chomp
    while choice !="1" && choice !="2" do
        puts "Введено не верное значение, повторите: "
        choice=gets.chomp
    end
    if choice=="1"
		abort "Прикурив ребята отправились дальше"
	else abort "Ребята расстроились и побили вас. Теперь понятно за что"
	end
end