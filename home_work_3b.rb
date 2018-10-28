puts"введите число 1 , если хотите высчитать время выплаты ипотеки в зависимости от суммы долга и ежемесячной выалаты,"
print"введите число 0 , если хотите найти ежемесячную выплату от времени выплаты:"
change=gets.to_i
if (change==1)
puts"Введите сумму долга на начало периода:"
sum=gets.to_f
puts"Введите сумму, которую вы можете выплачивать каждый месяц:"
evrm=gets.to_f
puts "введите месячный процент(к примеру 1.01-1%;1.2-20%):"
mp=gets.to_f
month=0
puts"Количество прошедших лет|Сумма долга на начало периода|Сумма процентов за период|Общая сумма платежа|Сумма погашения основного кредита"
if(sum*(mp-1)-evrm>0)
  puts 'вы не сможете оплатить кредит'  
end
if(sum*(mp-1)-evrm==0)
  puts 'вы не сможете оплатить кредит'  
end
if(sum*(mp-1)-evrm<0)
while(sum!=0 and sum>0)
sum=sum*mp-evrm
month+=1;
puts "#{(month/12).round(0)} год.#{((month%12).round(0)).round(5)}|#{sum} руб.|#{evrm} руб.|#{sum*mp-evrm} руб."
if(sum<0)
month=month+(-sum/evrm)
end
end
end
puts "вы оплатите ипотеку за #{(month/12).round(0)} лет/год/года и за #{(month%12).round(5) }месяцев/месяц"
end
if(change==0)
puts"Введите сумму долга на начало периода:"
sum2=gets.to_f
puts"Введите время оплаты долга в месяцах:"
time=gets.to_f
puts "введите месячный процент(к примеру 1.01-1%;1.2-20%):"
mp2=gets.to_f
pay=0.to_f
b=0.to_f
while b<time
pay=(mp2*(1+mp2)**b/(1+mp2)**b-1)*sum2
puts "#{(b/12).round(0)} год.#{((b%12).round(0)).round(5)}|#{sum2} руб.|#{pay} руб.|#{sum2*mp2-pay} руб."
sum2=sum2-sum2*mp2-pay
b=b+1
end




end


