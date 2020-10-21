function plotarForcasSolicitantes(vetorPosicaoForcas, matrizForcasSolicitantes, tipoGrafico)
  if tipoGrafico == 1
    #Plotar Forças X
    plot(vetorPosicaoForcas, matrizForcasSolicitantes(:,1));
  endif
  if tipoGrafico == 2
    #Plotar Forças Y
    plot(vetorPosicaoForcas, matrizForcasSolicitantes(:,2));
  endif
  if tipoGrafico == 3
    #Plotar Momentos
    plot(vetorPosicaoForcas, matrizForcasSolicitantes(:,3));
  endif
  if tipoGrafico == 4
    #Plotar Torques
    plot(vetorPosicaoForcas, matrizForcasSolicitantes(:,4));
  endif
endfunction
