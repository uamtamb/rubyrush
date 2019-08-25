#Программы к уроку 4
require_relative 'Napps.rb'
puts "0. Выход из программы"
puts "1. Вывести большее из чисел"
puts "2. Среднее арифметическое двух чисел"
puts "3. Четное ли число?"
puts "4. Сегодня выходной?"
print "Введите номер программы: "
app=gets
while app!=0 do
    app=Napp(app).to_i
    if app==1
        #Вывести большее из чисел
        puts "Вывести большее из чисел"
        print "Введите число 1: "
        num1=gets.to_f
        print "Введите число 2: "
        num2=gets.to_f
        if num1>num2
            puts "Наибольшее число #{num1.to_s}"
        elsif num1<num2
            puts "Наибольшее число #{num2.to_s}"
        else
            puts 'Числа равны'
        end
        app=nil
        
    elsif app==2
        #Среднее арифметическое двух чисел
        puts "Среднее арифметическое двух чисел"
        print "Введите число 1: "
        num_a=gets.to_f
        print "Введите число 2: "
        num_b=gets.to_f
        average=(num_a+num_b)/2
        puts "Среднее арифметическое #{average.to_s}"
        app=nil
    
    elsif app==3
        #Четное ли число?
        puts "Четное ли число?"
        print "Введите число: "
        num=gets.to_f
        if num.round%2==1
        # if num%2==1
            puts "#{num.round} - число не четное "
        else
            puts "#{num.round} -число четное"
        end
        app=nil

    elsif app==4
        #Сегодня выходной?
        puts "Сегодня выходной?"
        time = Time.now # в переменную time сохраняем текущие дату и время
        week_day = time.wday # в переменную week_day сохраняем день недели 0-6, где 0 первый день недели - воскресенье
        if week_day == 0 || week_day == 6
            puts 'Сегодня выходной!'
        else
            puts 'Сегодня будний день, за работу!'
        end
        print "Введите номер программы: "
        app=nil

    elsif app==0
        abort "Спасибо, до свидания!"

    else
        app=nil
    end
end
puts "Спасибо, до свидания!"
