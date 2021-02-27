# frozen_string_literal: true
## Задача №1:
#
# Джон Макклейн пытается найти этаж на котором заложена бомба и у него есть список инструкций (в файле data/1.txt):
#
# (- Джон должен подняться на этаж выше
# ) - Джон должен опуститься на этаж ниже
#
# Поиск начинается с нулевого этажа. 
#
# На каком этаже находится бомба?
#
## Требования к решению:
# - Входные данные находятся в файле data/1.txt
# - Результат должен быть выведен в консоль командой puts
#
#
## Решение

file_path = './data/1.txt'

if File.exist?(file_path)
  file = File.new(file_path, 'r:UTF-8')
  instruction = file.read
  puts instruction.count('(') - instruction.count(')')
else
  puts 'File not found'
end
