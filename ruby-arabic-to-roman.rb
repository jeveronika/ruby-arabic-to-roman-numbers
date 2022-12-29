puts "Vložte číslo, které chcete převést: "
user_input = gets.chomp.to_i

def arabic_to_roman(number)
  # vytvoříme hash key:value, který přiřadí arabské číslo římské číslici:
  roman_numerals = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I"
  }

  # prázdný string pro ukládání hodnot z cyklu
  result = ""

  # cyklem projdeme hash pomocí while cyklu a vždycky připojíme odpovídající římské číslo k arabskému a přidáme do result prázdného stringu.

  roman_numerals.each do |key, value|
    while number >= key
      result += value
      number -= key
    end
  end

  # return result
  result
end

# výsledek převedeného čísla:
puts arabic_to_roman(user_input) 
