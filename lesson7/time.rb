# encoding: utf-8

# Условие true — постоянное (константа), не зависит ни от каких переменных,
# а значит все время имеет одно и то же значение. В независимости от значений
# других переменных программы.
#
# То есть цикл будет повторяться вечно. По определению.
#
# Никогда не делайте так, пока не станете знатоком программирования!

while true do
    # Выводим текущее время, используя возможности объектов типа Time в руби
    print "\r" + Time.now.strftime('%H:%M:%S')
  
    # Ждем 1 секунду
    sleep 1
  end
  
  # Программа никогда не дойдет до сюда, потому что не выйдет из цикла
  puts 'Я строка, до которой никогда не дойдет программа :('
  
  # PS:
  # В консоли прервать вечную программу можно комбинацией клавишь Ctrl+C
  #
  # Вечная программа не обязательно значит зависшая. Иногда это нормальное
  # поведение. Например, если это какой-нибудь сервер, который ждет запрос извне.
  