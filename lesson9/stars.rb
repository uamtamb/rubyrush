#Shooting for the stars
def stars(star_arr,number)
    while star_arr.size.to_i<number
        star_arr.push("*")
    end
end
star_arr=[]
print "Сколько звезд? "
number=STDIN.gets.to_i
stars(star_arr,number)
puts star_arr.join.to_s