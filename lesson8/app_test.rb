name=ARGV[0]
version = "Тест \"Ревнивы ли вы\". Версия 0.1.\n\n"
if name==nil
    name='Таинственная персона'    
elsif name=="-v"
    puts version
    exit
end
puts "Добрый день #{name}, давайте пройдем тест!"
cvest=[
    'Если ваш партнер бросает взгляд на незнакомую женщину, вы устраиваете ' \
    'ему скандал прямо на улице?',
    'Если ваш партнер опаздывает на ужин, вы уверены, что он был с другой?',
    'Вы расспрашиваете его о работе, о коллегах?',
    'Вы считаете, что каждую свободную минуту должны проводить вместе?',
    'Он для вас — свет в окошке?',
    'Случается ли вам проверять его корреспонденцию и рыться в его вещах?',
    'Чем чаще он говорит о своих чувствах, тем меньше вы верите?',
    'Вы хотите, чтобы он интересовался только тем, чем интересуетесь вы?',
    'Вы всегда спрашиваете у него, куда он ходит и с кем встречается?',
    'Если вы на него обижены, то молчите по нескольку дней?',
    'Вас мучают мысли о его бывшей возлюбленной?',
    'Он утверждает, что не ревнует вас, потому что доверяет. Для вас это ' \
    'означает, что любовь прошла?'
]
res=[
  # 10 и более ответов «да»
  'Вы болезненно ревнивы. Не думайте, что если избранник вас любит, ' \
  'то он автоматически становится вашей собственностью. Вы считаете себя ' \
  'непривлекательной и боитесь, что он бросит вас ради какой нибудь ' \
  'красавицы. Вы ни в чем не уверены, особенно в нем. Задумайтесь над этим, ' \
  'потому что нельзя быть настолько ревнивой и агрессивной, это может ' \
  'привести к конфликтам и даже к разрыву отношений.',
  # 5–9 ответов «да»
  'Ваша ревность действует на вас мобилизующе, но не она одна управляет ' \
  'вашим поведением. В минуту слабости случается и вам устраивать скандалы. ' \
  'Но, успокоившись, вы понимаете, что для вашей ревности не было никаких ' \
  'оснований.',
  # Менее 5 ответов «да»
  'Вам совершенно незнакомо чувство ревности. Но тревога и беспокойство ' \
  'могут накапливаться со временем.Вы должны решать волнующие вас проблемы ' \
  'со своим партнером.'
]
otvet_da=0
for item in cvest do
    puts item
    otvet=nil
    while (otvet !="да" and otvet !="нет")
        puts "Введите да или нет!"
        otvet=STDIN.gets.chomp.downcase #преобразует ввод в нижний регистр
    end
    if otvet=="да"
        otvet_da+=1
    end
end
puts "#{name} колличество ответов да #{otvet_da.to_s}"
if otvet_da>=10
    puts res[0]
elsif otvet_da>=5
    puts res[1]
else
    puts res[2]
end
