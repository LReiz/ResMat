function [vetorForcas, vetorPosicao] = calculo_integral(vetorFuncoes, limiteIntegracao1, limiteIntegracao2)
  index = 1;
  while (index<=length(limiteIntegracao1))
    vetorForcas(index) = quad(vetorFuncoes(index,:), limiteIntegracao1(index), limiteIntegracao2(index));
    funcaoVezesX = strcat('(',vetorFuncoes(index,:),')','*x');
    vetorPosicao(index) = quad(funcaoVezesX, limiteIntegracao1(index), limiteIntegracao2(index));
    index+=1;
  endwhile
  
  vetorPosicao=vetorPosicao./vetorForcas;
endfunction
