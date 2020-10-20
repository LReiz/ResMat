function resolvendoApoio(opcaoApoios, vetorForcas, vetorAngulosForcas, vetorPosicaoForcas, vetorTorques, vetorPosicaoApoios)
 
  vetorForcasX = [];
  vetorForcasY = [];
  [vetorForcasX,vetorForcasY] = componentes_da_forca(vetorForcas, vetorAngulosForcas);
  somatorio_em_Y= sum(vetorForcasY);
  somatorio_em_X = sum(vetorForcasX);
  momento = vetorPosicaoForcas.*vetorForcasY;
  somatorio_momentos = sum(momento);
  somatorio_torques = sum(vetorTorques);
  
  vetorForcas
  vetorPosicaoForcas
  vetorAngulosForcas
  somatorio_em_Y

 
 if opcaoApoios == 1 #apoio Engastado
    Y = [-1*somatorio_em_Y;-1*somatorio_momentos];
    A = eye(2);
    X=A\Y;
    printf("Força de reação em y: %d\n",X(1,1));
    printf("Momento de reação: %d\n", X(2,1));
    reacao_em_X = -somatorio_em_X;
    printf("Reação em X: %d\n", reacao_em_X);
    reacao_torques = -somatorio_torques;
    printf("Reação torque: %d\n", reacao_torques);
  endif
  if opcaoApoios == 2#apoio 1 pino e 1 rolete 
    Y = [-1*somatorio_em_Y;-1*somatorio_momentos];
    A = [ones(1,2);vetorPosicaoApoios];
    X= A\Y;
    printf("Reação em y apoio pino: %d\n", X(1));
    printf("Reação em y apoio rolete: %d\n", X(2));
    reacao_em_X = -somatorio_em_X;
    printf("Reação em x apoio pino: %d\n", reacao_em_X);
    reacao_torques = -somatorio_torques;
    printf("Reação torque apoio pino: %d\n", reacao_torques);
  endif
  if opcaoApoios == 3
     Y = [-1*somatorio_em_Y;-1*somatorio_momentos];
     A = [ones(1,2); vetorPosicaoApoios];
     X=A\Y;
     printf("Reação em y apoio rolete A: %d\n", X(1));
     printf("Reação em y apoio rolete B: %d\n", X(2));

  endif
endfunction