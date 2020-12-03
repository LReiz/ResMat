function [equacao_alongamento] = definir_equacao_alongamento(equacao_forcas_normais, modulo_elastico, area_transversal)
  equacao_alongamento = [];
  constante = 1/(modulo_elastico*area_transversal);
  integral_equacao_forcais_normais = integrar_equacao_degrau(equacao_forcas_normais);
  for index = 1 : 1 : size(integral_equacao_forcais_normais)(1)
    equacao_alongamento = [equacao_alongamento; constante*integral_equacao_forcais_normais(index,:)(1) integral_equacao_forcais_normais(index,:)(2) integral_equacao_forcais_normais(index,:)(3)];
  endfor
endfunction
