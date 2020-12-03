function [valor_termo] = calcular_termo_degrau(coeficiente, ponto_singularidade, expoente, x)
  
  if(expoente < 0)
    valor_termo = 0;
  else
    valor_termo = x - ponto_singularidade;
    valor_termo = valor_termo^expoente;
    valor_termo *= coeficiente;
  endif
  
endfunction
