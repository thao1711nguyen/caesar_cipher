
def caesar_cipher(string, shift_factor) 
    #transfer each character of the string
    #check if the original one is upcase 
    #upcase the new character
    alphabet = ('a'..'z').to_a
    string_array = string.split('')
    string_array.reduce('') do |new_string, character|
        unless character.downcase.between?('a', 'z')
            new_character= character
        else
            is_upcase = character == character.upcase
            alphabet_order = alphabet.index(character.downcase)
            new_alphabet_order = alphabet_order + shift_factor
            
            
            
            new_alphabet_order > 25 ? new_alphabet_order = new_alphabet_order-26 : new_alphabet_order
            
            new_character = alphabet[new_alphabet_order]
            is_upcase ? new_character = new_character.upcase : new_character
        end 
        new_string + new_character
    end
end

p caesar_cipher('Hello Thao', 7)
 
