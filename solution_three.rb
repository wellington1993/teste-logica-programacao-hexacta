# você pode usar os comandos puts ou print para fins de debug, ex.
# print "$var definido\n" if $var

# m^p x^n
def solution3(p, m)
  result = 0
  if m == 0
    result = 1
  elsif (m%2 == 0)
    if (m == 2)
      result = p*p
    else
      result = solution3(p*p, m/2)
    end
  else
    result = solution3(p, m-1)
  end
  ('%1.20f' % result).to_f
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

