puts('Введите количество рублей')
rubles=gets.to_f
dollar_course=65.5
pound_course=86.5
d=rubles/dollar_course
pound=rubles/pound_course
printf "\033c"
print rubles
print'рублей'
print'='
print (d.round(2))
print'долларов'
print' или '
print (pound.round(2))
print'фунтов'
