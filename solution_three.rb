# você pode usar os comandos puts ou print para fins de debug, ex.
# print "$var definido\n" if $var

def solution3(m, p)
  if p == 1
    return m
  elsif p == 0
    return 1
  else
    m = m * solution3(m, p-1)
    return m
  end
end

solution3(0.999999999999, 0)
solution3(0.999999999999, 1000)
solution3(0.999999999999, 1000000)
solution3(0.999999999999, 1000000000)
# Observacao, achei os exemplos de potenciacao pessimos

=begin
de forma que o método solution3(p, m), ao receber um inteiro m (sendo 1 <= m <= 10^9) e um valor float
p, retorne o valor de p elevado a m (ou p ** m) sem utilizar bibliotecas matemáticas ou a operação de
exponenciação nativa do Ruby e que seja computacionalmente eficiente. Por exemplo,
• solution3 0.999999999999, 0 = 1.0
• solution3 0.999999999999, 1000 = 0.9999999990000221
• solution3 0.999999999999, 1000000 = 0.9999990000226197
• solution3 0.999999999999, 1000000000 = 0.9990005219311262
=end

