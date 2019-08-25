# Метод - меню выбора программ
def Napps (apps)
    puts "Программа № #{apps}"
    while (apps==nil || apps==" ")
            puts "Вы не ввели слово"
            apps=STDIN.gets
            puts "12"
            return apps
    end
    return apps
    puts "213"
end
