# Метод - меню выбора программ
def Napp (apps)
    puts "\nПрограмма № #{apps}"
    if (apps==nil || apps==" " || apps!=0 || apps!=1 || apps!=2 || apps!=3 || apps!=4)
        puts "НЕ ВЕРНО! Введите значение 1,2,3,4 или 0"
        puts "0. Выход из программы"
        puts "1. Вывести большее из чисел"
        puts "2. Среднее арифметическое двух чисел"
        puts "3. Четное ли число?"
        puts "4. Сегодня выходной?"
        print "Введите номер программы: "
        apps=STDIN.gets
    end
    return apps
end
