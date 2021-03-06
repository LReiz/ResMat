function [equacao_inclinacao] = definir_equacao_inclinacao(equacao_momento, constante)
  equacao_inclinacao = [];
  integral_equacao_momento = integrar_equacao_degrau(equacao_momento);
  for index = 1 : 1 : size(integral_equacao_momento)(1)
    equacao_inclinacao = [equacao_inclinacao; constante*integral_equacao_momento(index,:)(1) integral_equacao_momento(index,:)(2) integral_equacao_momento(index,:)(3)];
  endfor
endfunction
