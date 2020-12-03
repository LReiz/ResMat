function plotar_grafico_equacao_degrau(equacao, tamanho_viga)
  step = tamanho_viga/100;
  
  array_x = [];
  array_y = [];
  for x = 0 : step : tamanho_viga
    array_y = [array_y calcular_equacao_degrau(x, equacao)];
    array_x = [array_x x];
  endfor
  
  plot(array_x, array_y, '.');
  
endfunction

