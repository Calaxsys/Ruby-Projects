print 'Please enter the string you would like to encrypt: '
phrase = gets.chomp
print 'Please enter a number to use as the shift factor: '
shift = gets.chomp.to_i
result = ''

phrase.each_char do |char|
  base = char.ord < 91 ? 65 : 97
  if char.ord.between?(65, 90) || char.ord.between?(97, 122)
    rotation = (((char.ord - base) + shift) % 26) + base
    result += rotation.chr
  else
    result += char
  end
end
puts result