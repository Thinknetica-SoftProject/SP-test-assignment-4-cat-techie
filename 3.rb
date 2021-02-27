## Задача №3:
#
# Джон добрался до этажа с бомбой, но у него на пути стоит дверь с кодовым замком и рядом бумажка с инструкциями (файл data/3.txt)
#
# Чтобы узнать код от замка, ему нужно для каждой строки найти разницу между наибольшим и наименьшим числами и потом сложить полученные значения
#
## Требования к решению:
# - Входные данные находятся в файле data/3.txt (разделитель значений - символ табуляции)
# - Результат должен быть выведен в консоль командой puts
#
## Решение:

file_path = './data/3.txt'

result_code = 0
if File.exist?(file_path)
  file = File.new(file_path, 'r:UTF-8')
  instruction = file.read.split("\n")
  instruction.each do |line|
    nums = line.split("\t").map(&:to_i)
    result_code += nums.max - nums.min
  end
  puts result_code
else
  puts 'File not found'
end
