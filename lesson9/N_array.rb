#Создаем метод
def ferst_element(array, number) #Передаем в метод исходный массив и количество элементов длянового массивва
    new_array=[] #Созлаем пустой новый массив
    element=0 #Временный элемент
    while element<number #Пока временный элемент меньше длинны нового массива
        if array.size<=element #если длинна исходого массива менее или равна счетчику (временному элементу)
            break #прерываем цикл
        end
        new_array<<array[element] #в другом случае предаем элемент массива в новый
        element+=1 #счетчик элементов +1
    end
    return new_array
end
print "Оригинальный массив #{original_array=[1,2,3,4,5,6,7,8,9,10]}\n"
print "Сколько элементов отрезать от начала? "
number=STDIN.gets.to_i
puts "Результат отреза: "
puts ferst_element(original_array, number).to_s