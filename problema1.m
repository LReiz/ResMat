function problema1()
  #Opcao Apoios
  opcaoApoios = opcaoApoios();
  
  #Posição dos Apoios
  vetorPosicaoApoios = problema1InputApoios(opcaoApoios);
          
  # Forcas
          
  [vetorForcas, vetorAngulosForcas, vetorPosicaoForcas] = problema1InputForcas();

  # Torques

  [vetorTorques] = problema1InputTorques();

  #matriz_input
  #vetorTorques

  resolvendoApoio(opcaoApoios, vetorForcas, vetorAngulosForcas, vetorPosicaoForcas, vetorTorques, vetorPosicaoApoios)
  
endfunction