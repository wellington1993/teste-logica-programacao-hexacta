# Teste Lógica Programacao Hexacta

## Teste de Lógica de Programação – Hexacta – Remoto

Instruções: Este teste remoto consiste de quatro problemas para serem codificados em
Ruby. Todos são testes de lógica, não demandando conhecimento aprofundado da
linguagem. Não é preciso ter pressa para entregar as soluções, faça no seu tempo. Tente
codificar as soluções da forma mais clara e simples possível e teste bem o seu código
antes de fazer a entrega. Caso haja alguma dúvida em relação aos enunciados, por favor
mande suas dúvidas por escrito que responderemos o mais breve possível. As respostas
poderão ser enviadas por e-mail ou disponibilizadas para consulta no seu GitHub pessoal.
Boa sorte!

### Questão 1) Complete o código Ruby abaixo:

você pode usar os comandos puts ou print para fins de debug, ex.

```php
print "$var definido\n" if $var
```

```ruby
def solution1(vetor)
  # escreva o seu código Ruby
end
```


de forma que, ao receber um array vetor com N valores inteiros, o método solution1(vetor) retorne o
menor número inteiro positivo (maior que 0) que não esteja presente em vetor. Por exemplo,
* dado vetor = [1, 3, 6, 4, 1, 2], o método deve retornar 5
* dado vetor = [1, 2, 3], o método deve retornar 4
* dado vetor = [-1, -3], o método deve retornar 1

Escreva um algoritmo eficiente para o problema descrito acima respeitando as seguintes premissas:
* N é um inteiro dentro do intervalo (1..100000);
* cada elemento do array vetor é um inteiro dentro do intervalo (-1000000..1000000).

---

### Questão 2) Escreva um método Ruby que receba um array de números ordenados de forma ascendente e
uma variável numérica x e calcule, da forma mais eficiente possível, todas as combinações de pares de
números deste array cuja a soma é igual a x.

Exemplo: Dado um array = [-2, -1, 0, 2, 4, 7, 8, 9, 9] e x = 8 como entrada, a resposta do seu algoritmo deverá
ser um array [[-1, 9], [0, 8], [4, 4]] (não precisando ser necessariamente nesta ordem)

---
 
### Questão 3) Complete o código Ruby abaixo:

você pode usar os comandos puts ou print para fins de debug, ex.
```ruby
print "$var definido\n" if $var
```

```ruby
def solution3(m, p)
  # escreva o seu código Ruby
end

```
de forma que o método solution3(p, m), ao receber um inteiro m (sendo 1 <= m <= 10^9) e um valor float
p, retorne o valor de p elevado a m (ou p ** m) sem utilizar bibliotecas matemáticas ou a operação de
exponenciação nativa do Ruby e que seja computacionalmente eficiente. Por exemplo,
* solution3 0.999999999999, 0 = 1.0
* solution3 0.999999999999, 1000 = 0.9999999990000221
* solution3 0.999999999999, 1000000 = 0.9999990000226197
* solution3 0.999999999999, 1000000000 = 0.9990005219311262

---

### Questão 4) Reescreva o trecho de código destacado em amarelo abaixo para fazer com que o método
solution4(vetorA, vetorB) tenha um processamento mais eficiente:
Importante: Para resolver esta questão, você não deve utilizar o operador entre arrays “&” nativo do Ruby!

```ruby
def solution4(vetorA, vetorB)
  result, vetorA, vetorB = Array.new
  vetorA.sort, vetorB.sort

  for i in (0...vetorA.length)
    if i > 0 && vetorA[i] == vetorA[i - 1]
      break
    end

    for j in (0...vetorB.length)
      if j > 0 && vetorB[j] == vetorB[j - 1]
        break
    end

    if vetorA[i] == vetorB[j]
      result = result.push(vetorA[i])
    end
  end
end
  return result
end
```
