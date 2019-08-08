name1=["Гена","Георгий","Миша"]
name2=["Катя","Лиза","Маша"]
basket=[]
name=name1+name2
puts name.to_s

mass_number=["1","2","3","4","5"]
puts mass_number.reverse.to_s
puts mass_number.to_s
mass_number.reverse!
puts mass_number.to_s

auto=[
    'Ford',
    'Mercedes',
    'Maybach',
    'Citroen',
    'Mazda',
    'Toyota',
    'Lexus',
    'Nissan'
  ]
puts "У нас всего " + auto.size.to_s + " машин, вам какую?"
number=gets.chomp.to_i - 1
if (number>=8 || number<=8)
    puts auto[number]
else
    puts 'Извините, машины с таким номером у нас нет :('
end