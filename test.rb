iii=0
words = File.readlines('noun_dictionary.txt').each { |l| l.chomp! }
human=gets.to_str
while iii!=words.size
if words[iii]==human
proverka=true
end
iii=iii+1
end
if proverka==true
    puts "yes"
end