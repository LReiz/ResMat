function [equacao_deflexao] = definir_equacao_deflexao(equacao_inclinacao)
  equacao_deflexao = integrar_equacao_degrau(equacao_inclinacao);
  constante_inclinacao = achar_constante_integracao(equacao_inclinacao);
  equacao_deflexao = [equacao_deflexao; constante_inclinacao 0 1];
endfunction
