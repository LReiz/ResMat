function [valor_equacao] = calcular_equacao_degrau(x, equacao)
  # termo da equacao [coef, a, expoente]
  valor_equacao = 0;
  
  for index = 1 : 1 : size(equacao)(1)
    if(equacao(index,:)(2) < x)
      valor_equacao += calcular_termo_degrau(equacao(index,:)(1), equacao(index,:)(2), equacao(index,:)(3), x);
    endif
  endfor

endfunction