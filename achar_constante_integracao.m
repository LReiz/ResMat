function [constante_integracao] = achar_constante_integracao(equacao)
  constante_integracao = - calcular_equacao_degrau(0, equacao);
endfunction
