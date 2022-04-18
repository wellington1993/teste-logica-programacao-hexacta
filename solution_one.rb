# você pode usar os comandos puts ou print para fins de debug, ex.
# print "$var definido\n" if $var

def solution1(vetor)
  vetor = vetor.sort.uniq
  maior = vetor.last + 1
  maior = 1 if (maior < 1)

  vetor.each do |v|
    atual = v + 1
    if !vetor.include?(atual) && (atual >=1) && (atual <= maior)
      maior = atual 
    end
  end
  puts maior
  return maior  
end

solution1([1, 3, 6, 4, 1, 2])
solution1([1, 2, 3])
solution1([-1, -3])

=begin
de forma que, ao receber um array vetor com N valores inteiros, o método solution1(vetor) retorne o
menor número inteiro positivo (maior que 0) que não esteja presente em vetor. Por exemplo,
• dado vetor = [1, 3, 6, 4, 1, 2], o método deve retornar 5;
• dado vetor = [1, 2, 3], o método deve retornar 4;
• dado vetor = [-1, -3], o método deve retornar 1.
Escreva um algoritmo eficiente para o problema descrito acima respeitando as seguintes premissas:
• N é um inteiro dentro do intervalo (1..100000);
• cada elemento do array vetor é um inteiro dentro do intervalo (-1000000..1000000).
=end

