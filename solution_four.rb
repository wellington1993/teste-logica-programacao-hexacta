def solution4(vetorA, vetorB)
  vetorA = vetorA.sort.uniq
  vetorB = vetorB.sort.uniq
  checked = Set.new
  vetorC = []

  vetorA.each do |a|
    vetorB.each do |b|
      unless checked.include?([a,b])
        checked.add([a,b])
        checked.add([b,a])
        vetorC << a if (a == b)
      end
    end
  end
  
  vetorB.each do |b|
    vetorA.each do |a|
      unless checked.include?([b,a])
        checked.add([b,a])
        checked.add([a,b])
        vetorC << b if (b == a)
      end
    end
  end
  vetorC
end

=begin
Questão 4) Reescreva o trecho de código destacado em amarelo abaixo para fazer com que o método

solution4(vetorA, vetorB) tenha um processamento mais eficiente: Importante: Para resolver esta questão, você não deve utilizar o operador entre arrays “&” nativo do Ruby!

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
=end
