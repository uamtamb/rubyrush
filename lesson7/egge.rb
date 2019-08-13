#массив яиц, 0 - целое яйцо, другое значение битое
eggs=[0,0,0,0,1,1,0,0,1,23,0,2,0,25,0,0,1,0]
#массив схорошими яйцами
good_eggs=[]
#счетчик плохий яиц (их колличество)
broken_count=0
#каждый элемент цикла eggs помещаем в переменную item
for item in eggs do
#если item не равен 0 то
    if (item !=0)
#увеличиваем число в broken_count на 1
        broken_count += 1
#инче помещаем значение из item в массив good_eggs
    else
        good_eggs << item        
    end
end
#выводим на экран массив яиц, массив хороших яиц, количество битых яиц
puts eggs.to_s
puts good_eggs.to_s
puts broken_count.to_s