games_arr=["камень","ножницы","бумага"]
print "Выбирите вариант: 1. камень, 2. ножницы, 3. бумага "
user_games=gets.to_i
puts "Вы выбрали "+games_arr[user_games.to_i-1].to_s
pc_games=rand(1..3)
puts "Комп выбрал "+games_arr[pc_games.to_i-1].to_s
if user_games==pc_games
    puts "Ничья!"
elsif user_games==1&&pc_games==2 
    puts "Победа!"
elsif user_games==2&&pc_games==3 
    puts "Победа!"
elsif user_games==3&&pc_games==1 
    puts "Победа!"
else
    puts "Проиграл!"
end