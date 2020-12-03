function [n_coeficiente, n_expoente] = integrar_termo_degrau(coeficiente, expoente)
 
  n_expoente = expoente + 1;
  n_coeficiente = coeficiente;
  if(expoente >= 1)
    n_coeficiente = coeficiente/(expoente+1);
  endif
 
endfunction
