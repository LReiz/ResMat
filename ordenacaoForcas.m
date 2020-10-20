function [vetorForcaOndenado, vetorAnguloOrdenado, vetorPosicaoOrdenado] = ordenacaoForcas(vetorForcas, vetorAngulo,vetorPosicao)
  j = 1;
  while(j <= length(vetorPosicao))
    menor = 1000;
    i = 1;
    while(i <= length(vetorPosicao))
      if(vetorPosicao(i) < menor)
        menor = vetorPosicao(i);
        indiceMenor = i;
      endif
      i+=1;  
    endwhile
  vetorPosicaoOrdenado(j) = menor;
  vetorPosicao(indiceMenor) = 1000;
  vetorAnguloOrdenado(j) = vetorAngulo(indiceMenor);
  vetorForcaOndenado(j) = vetorForcas(indiceMenor);
  j+=1;
  endwhile
endfunction