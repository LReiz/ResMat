function plotar_grafico_equacao_degrau_com_constante_integracao(equacao, tamanho_viga)
  step = tamanho_viga/100;
  
  array_x = [];
  array_y = [];
  for x = 0 : step : tamanho_viga
    array_y = [array_y calcular_equacao_degrau(x, equacao)];
    array_x = [array_x x]; 
  endfor
    
  constante_integracao = achar_constante_integracao(equacao);
  array_y += constante_integracao;
  
  plot(array_x, array_y, '.');
  
endfunction