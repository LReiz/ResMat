function [vetorForcaOndenado, vetorAnguloOrdenado, vetorPosicaoOrdenado] = ordenandoVetores(vetorForcas, vetorAngulo,vetorPosicao)
  menor = 1000;
  i = 1;
  j = 1;
  for(j <= lenght(vetorPosicao))
    i = j; 
    while(i <= length(vetorPosicao))
      if(vetorPosicao(i) < menor)
        menor = vetorPosicao(i);
        indiceMenor = i;
      endif
      i+=1;  
    endwhile
  vetorPosicaoOrdenado(j) = menor;
  vetorPosicao(indiceMenor) = 1000;
  vetorAnguloOrdenado(j) = vetorAngulo(indiceMenor)
  vetorForcaOndenado(j) = vetorForcas(indiceMenor)
  endfor
endfunction
