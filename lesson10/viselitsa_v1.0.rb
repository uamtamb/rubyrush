require "/media/_dev/lesson10/metod.rb"
cls
puts "Игра виселица, версия 1.0"
slovo=get_slovo #загаданное слово
error=0 #счетчик ошибок
good_bukva=[] #массив с верными буквами
bad_bukva=[] #массив с буквами которых нет в слове
while error<7 do #цикл работает до 7 ошибок
    print_status(slovo, good_bukva, bad_bukva, error) #метод (текущее состояние)
    puts "Введите следующую букву"
    user_input=get_user_input #вводим букву
    result=check_result(user_input, slovo, good_bukva, bad_bukva) #метод проверки результата
    #значение метода результад выводим в переменную
    if (result==-1)
        error+=1
    elsif (result ==1)
        break
    end
end
print_status(slovo, good_bukva, bad_bukva, error)
