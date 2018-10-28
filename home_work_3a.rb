puts"Введите сумму долга на начало периода:"
sum=gets.to_f
puts"Введите сумму, которую вы можете выплачивать каждый месяц:"
evrm=gets.to_f
puts "введите месячный процент(к примеру 1.01-1%;1.2-20%):"
mp=gets.to_f
month=0
if(sum*(mp-1)-evrm>0 or sum*(mp-1)-evrm=0)
  puts 'вы не сможете оплатить кредит'  
end
if(sum*(mp-1)-evrm<0)
while(sum!=0 and sum>0)
sum=sum*mp-evrm
month+=1;
if(sum<0)
month=month+(-sum/evrm)
end
end
end


puts "вы оплатите ипотеку за #{(month/12).round(0)} лет/год/года и за #{(month%12).round(5) }месяцев/месяц"