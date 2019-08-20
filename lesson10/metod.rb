#метод ввода слова
def get_slovo
    slovo=ARGV[0].downcase #вводим слово в качестве параметра
    if (slovo==nil || slovo==" ") #если слово nil или пусто
        abort "Вы не ввели слово" #выводим Вы не ввели слово
    end
    return slovo.split("") #разбиваем слово на буквы
end

#метод ввода буквы
def get_user_input
    bukva=""
    while bukva=="" do
        bukva=STDIN.gets.chomp.downcase
    end
    return bukva
end

#метод проверки результата
def check_result(user_input, slovo, good_bukva, bad_bukva)
    if (good_bukva.include?(user_input)||bad_bukva.include?(user_input))
        return 0
    end
    if slovo.include? user_input #если в слове есть введенная буква, заносим ее в массив good_bukva
        good_bukva << user_input
        if slovo.uniq.size == good_bukva.size #если количество уникальных букв загажанного слова равно количеству букв в массиве good_bukva
            #uniq - из исходного массива выбираем не повторяющиеся элементы
            #[М О Л О К О].uniq > [М О Л К]
            #size - возвращает размер, [М О Л К].size - 4
            return 1
        else
            return 0
        end
    else
        bad_bukva << user_input
        return -1
    end
end

def slivo_for_print(slovo, good_bukva)
    result=""
    for bukva in slovo do
        if good_bukva.include? bukva
            result+=bukva+" "
        else
            result+="__ "
        end
    end
    return result
end

def sklonenie (number, odin, dva, seven)
    if (number==nil || !number.is_a?(Numeric))
        number=0
    end
    ostatok=number%10
    if (ostatok == 1)
        return odin
    end
    if (ostatok >= 2 && ostatok <= 4)
        return dva
    end
    if (ostatok > 4 || ostatok == 0)
        return seven
    end
end

#метод вывод результата
#1. выводит загаданное слово
#2. информация об ошибках и уже названные буквы
#3. ошибок более 7 - сообщить о поражении
#4. слово угадано сообщить о победе
def print_status(slovo, good_bukva, bad_bukva, error)
    puts "\n Слово: " + slivo_for_print(slovo, good_bukva)
    puts "Ошибки #{error}: #{bad_bukva.join(", ")}"
    if error>=7
        puts "Вы проиграли :("
    else
        if slovo.uniq.size==good_bukva.size
            puts "Поздравляем! Вы выйграли!\n\n"
        else
            number=(7-error)
            puts "У вас осталось: " + number.to_s + sklonenie(number," попытка"," попытки"," попыток")
        end
    end
end
#Отчищаем экран
def cls
    system "clear" or system "cls"

end
