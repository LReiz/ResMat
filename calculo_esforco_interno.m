function [matriz_resultados] = calculo_esforco_interno(vetor_forcas,vetor_pos,vetor_angulo,vetor_cortes)
  #matriz [[Fx,Fy,M,T],...]
  
  index=1;
  indice_teto = 1;
  matriz_resultados=[];
  #aqui percorremos o vetor de posições até encontrar um valor maior que o valor de corte
  #depois guardamos o índice do último valor menor que o valor de corte e percorremos os vetores até esse índice
  while(index<=length(vetor_cortes))
   index2 = 1; 
   while(index2<=length(vetor_pos))
      if vetor_pos(index2) > vetor_cortes(index)
        indice_teto = index2-1;
        break
      endif
      index2+=1;
    endwhile
    vetorForcas_aux=vetor_forcas(1:indice_teto);#forças até indice teto
    vetorAngulosForcas_aux=vetor_angulo(1:indice_teto);
    vetorPosicaoForcas_aux=vetor_pos(1:indice_teto);
    index3=1;
    while(index3<=length(vetorPosicaoForcas_aux))
      vetorPosicaoForcas_aux(index3)=vetorPosicaoForcas_aux(index3)-vetor_cortes(index);
      index3+=1;
     endwhile
     vetorPosicaoForcas_aux
    vetorForcasApoiosGeral = resolvendoApoio(1, vetorForcas_aux, vetorAngulosForcas_aux, vetorPosicaoForcas_aux, 0, 0);#torques=0 e posição apoio=0
    
    # fxe, fye, me, te
    
    vetor_resultado=vetorForcasApoiosGeral(1:4);
    matriz_resultados=[matriz_resultados;vetor_resultado];
    index+=1;
  endwhile
  
  
endfunction
