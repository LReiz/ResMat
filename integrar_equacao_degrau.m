function nova_equacao = integrar_equacao_degrau(equacao)
  
  nova_equacao = [];
  for index = 1 : 1 : size(equacao)(1)
    [novo_expoente, novo_coeficiente] = integrar_termo_degrau(equacao(index,:)(1), equacao(index,:)(3));
    novo_termo = [novo_expoente equacao(index,:)(2) novo_coeficiente];
    nova_equacao = [nova_equacao; novo_termo];
  endfor
  
endfunction
