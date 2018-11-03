words = File.readlines('noun_dictionary.txt').each { |l| l.chomp! }
ugadalki=0
i=0
t=1
pobeda=0
kolvo_otgadannih=0
slovo=words[rand(words.size)]
slovosize=slovo.size.to_i
skritiebukvi=(1..slovo.size).to_a
kolvo_popitok=0
require "google/cloud/translate"

# Your Google Cloud Platform project ID
project_id = "translation-01-220716"
key_file = "My Project-cf8c099f9b91.json"

# Instantiates a client
translate = Google::Cloud::Translate.new project: project_id, keyfile: key_file

# The text to translate
text = slovo
# The target language
target = "ru"

# Translates some text into Russian
translation = translate.translate text, to: target

puts "Слово: #{text}"

puts "Перевод: #{translation}"


####################################################

begin
puts"введите букву"
bukva=gets
i=0
#################
while i!=slovosize
if slovo[i]==bukva
    skritiebukvi[i+1]=bukva
    ugadalki=ugadalki+1
else
skritiebukvi[i+1]="*"
end    
i=i+1
end
#################
puts"угадываемое слово"
while t<slovosize+1
print skritiebukvi[t]
t=t+1
end
puts skritiebukvi[t]
#################
if ugadalki>0
   puts "такая буква встречается #{ugadalki} раз" 
else 
puts "такой буквы нет"
end
#################
i=1
while i <skritiebukvi.size+1
if skritiebukvi[i]=="*"
    kolvo_otgadannih=kolvo_otgadannih+1
else
    kolvo_otgadannih=kolvo_otgadannih
end
i=i+1
end
#################
if kolvo_otgadannih ==i-1
   puts"Поздравляю , вы победили" 
   pobeda=1
else
kolvo_popitok=kolvo_popitok+1
end
#################
end while pobeda!=1
