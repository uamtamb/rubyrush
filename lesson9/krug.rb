def area(radius)
    return area=Math::PI*(radius**2)
end
print "Введите радиус первого круга: "
radius=STDIN.gets.to_f
puts "Площадь первого круга #{area(radius).round(2)}"
print "Введите радиус второго круга: "
radius=STDIN.gets.to_f
puts "Площадь второго круга #{area(radius).round(2)}"