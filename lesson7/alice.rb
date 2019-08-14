names=[]
input_names=nil
print "Введите имя: "
while input_names != "" do
    input_names=gets.chomp
    names<<input_names
end
for item in names do
    puts "C нами #{item}"
    sleep 1
    if item=='Элис'
        puts "Элис, кто такая #{item}?"
        sleep 1
        break
    end
end
puts 'Что это за девочка и где она живет?'
sleep 1
puts 'А вдруг она не курит? А вдруг она не пьёт?'
sleep 1
puts 'А мы с такими рожами возьмем да и припрёмся к Элис... :)'