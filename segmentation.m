function [positions] = segmentation(vetor_pos_forcas, vetor_pos_apoios)
  index=1;
  positions=[];#vetor de saída
  vetor_pos_forcas = [vetor_pos_apoios(1),vetor_pos_forcas,vetor_pos_apoios(2)];#adicionamos as posições de aplicação de forças de apoio
  vetor_pos_forcas = sort(vetor_pos_forcas);
  while (index<length(vetor_pos_forcas))
    positions(index)=(vetor_pos_forcas(index)+vetor_pos_forcas(index+1))/2;#definimos posições intermediárias aos pontos de aplicação de força
    index+=1;
  endwhile
  
endfunction