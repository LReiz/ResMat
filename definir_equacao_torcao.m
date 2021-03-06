function [equacao_torcao] = definir_equacao_torcao(equacao_torques, constante)
  equacao_torcao = [];
  integral_equacao_torcao = integrar_equacao_degrau(equacao_torques);
  for index = 1 : 1 : size(integral_equacao_torcao)(1)
    equacao_torcao = [equacao_torcao; constante*integral_equacao_torcao(index,:)(1) integral_equacao_torcao(index,:)(2) integral_equacao_torcao(index,:)(3)];
  endfor
endfunction
