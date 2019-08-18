season=ARGV[0]
season=season.downcase
temp=ARGV[1]
if (season == nil && season !="лето" && season !="осень" && season !="зима"&& season !="весна")
    puts 'Введите время года - Лето или Осень или Зима или Весна'
    season=STDIN.gets.to_s.downcase
else
    season=season.to_s
end
if (temp == nil)
    puts 'Введите температуру'
    temp=STDIN.gets.to_f
else
    temp=temp.to_f
end

# Осталось проверить все условия и вывести соответствующий текст
if season == "лето"
    # Летом свой диапазон температур
    if temp >= 15 && temp <= 35
      puts 'Скорее идите в парк, соловьи поют!'
    else
      puts 'Увы, даже летом для соловьев сейчас неподходящие условия'
    end
  else
    # Любое другое время года
    if temp >= 22 && temp <= 30
      puts 'Скорее в парк! Там поют соловьи!'
    else
      puts 'Сейчас соловьи молчат, греются или прохлаждаются :)'
    end
  end