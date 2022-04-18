def solution_two(arr, x)
  checked = Set.new  
  arr = arr.sort.uniq
  
  arr.each do |a|
    arr.each do |b|
      checked.add([a,b]) if ( (a+b) == x )
    end
  end
  puts checked
  checked
end

solution_two([-2, -1, 0, 2, 4, 7, 8, 9, 9], 8)

=begin
Escreva um método Ruby que receba um array de números ordenados de forma ascendente e
uma variável numérica x e calcule, da forma mais eficiente possível, todas as combinações de pares de
números deste array cuja a soma é igual a x.
Exemplo: Dado um array = [-2, -1, 0, 2, 4, 7, 8, 9, 9] e x = 8 como entrada, a resposta do seu algoritmo deverá
ser um array [[-1, 9], [0, 8], [4, 4]] (não precisando ser necessariamente nesta ordem)
=end

