function [positions] = segmentation(vetor_pos_forcas, vetor_pos_apoios)
  index=1;
  positions=[];#vetor de sa�da
  vetor_pos_forcas = [vetor_pos_apoios(1),vetor_pos_forcas,vetor_pos_apoios(2)];#adicionamos as posi��es de aplica��o de for�as de apoio
  vetor_pos_forcas = sort(vetor_pos_forcas);
  while (index<length(vetor_pos_forcas))
    positions(index)=(vetor_pos_forcas(index)+vetor_pos_forcas(index+1))/2;#definimos posi��es intermedi�rias aos pontos de aplica��o de for�a
    index+=1;
  endwhile
  
endfunction