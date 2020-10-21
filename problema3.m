function problema3()
  #Opcao Apoios
  opcaoApoios = opcaoApoios();
  
  
  botaoComando = '';
  funcoesCarregamento = [""];
  limiteIntegracao1 = [];
  limiteIntegracao2 = [];
  index = 0;
  while (!strcmp(botaoComando, "Não")) #while recebe a função e os limites de integração
    index += 1;
    funcao = inputdlg("Insira sua função w(x):", "W(x)"){1};
    funcoesCarregamento = [funcoesCarregamento; funcao];
 
    limiteIntegracao1(index) = str2num(inputdlg("Limite de Integração Inferior da Função", "Limite 1"){1});
    limiteIntegracao2(index) = str2num(inputdlg("Limite de Integração Superior da Função", "Limite 1"){1});
    botaoComando = questdlg( 'Quer adicionar mais Funções de Carregamento?', 'Função de Carregamento', 'Sim', 'Não', 'Não');
  endwhile
  
  [forcasResultantes, posResutantes] = calculo_integral(funcoesCarregamento, limiteIntegracao1, limiteIntegracao2); #retorna as integrais da força e da posição
  
  
  #Posição dos Apoios
  vetorPosicaoApoios = problema1InputApoios(opcaoApoios);
          
  # Forcas
          
  [vetorForcas, vetorAngulosForcas, vetorPosicaoForcas] = problema1InputForcas();
  
  # Torques

  [vetorTorques] = problema1InputTorques();

  #matriz_input
  #vetorTorques

  vetorForcas=[vetorForcas,forcasResultantes]; #concatenando as forças com as forças integradas
  vetorPosicaoForcas=[vetorPosicaoForcas,posResutantes]; #concatenando as posições com as posições concatenadas
  aux=length(forcasResultantes);
  vetor_270=270*ones(1,aux);
  vetorAngulosForcas=[vetorAngulosForcas,vetor_270]; #concatenando o angulo das forças
  
  
  #Achar Posição dos Cortes Virtuais
  [posicaoCortes] = segmentation(vetorPosicaoForcas, vetorPosicaoApoios);
  
  #Inserir Forças de Apoio
  [forcasDeApoio] = resolvendoApoio(opcaoApoios, vetorForcas, vetorAngulosForcas, vetorPosicaoForcas, vetorTorques, vetorPosicaoApoios);
  vetorForcas = [vetorForcas,forcasDeApoio(1),forcasDeApoio(2),forcasDeApoio(5),forcasDeApoio(6)] #adicionando as forcas de reacao
  vetorAngulosForcas = [vetorAngulosForcas,0,90,0,90]; #adicionando o angulo das forcas de apoio
  vetorPosicaoForcas = [vetorPosicaoForcas, vetorPosicaoApoios(1), vetorPosicaoApoios(1), vetorPosicaoApoios(2), vetorPosicaoApoios(2)] #adicionando a posicao das forcas
  
  
  #Ordenar Forças Externas pela Posição
  [vetorForcas, vetorAngulosForcas, vetorPosicaoForcas] = ordenacaoForcas(vetorForcas, vetorAngulosForcas,vetorPosicaoForcas);
  
  
  [matrizForcasSolicitantes] = calculo_esforco_interno(vetorForcas,vetorPosicaoForcas,vetorAngulosForcas,posicaoCortes);
  
  opcaoGrafico = opcaoGrafico();
  
  vetorPosicaoForcasSemRepeticao = [vetorPosicaoForcas(1)];
  index=2;
  while index <= length(vetorPosicaoForcas)
    if vetorPosicaoForcas(index) ~= vetorPosicaoForcas(index-1)
      vetorPosicaoForcasSemRepeticao(length(vetorPosicaoForcasSemRepeticao) + 1 ) = vetorPosicaoForcas(index);
    endif
    index+=1;
  endwhile
  
  matrizForcasSolicitantes
  vetorPosicaoForcasSemRepeticao
  
  plotarForcasSolicitantes(vetorPosicaoForcasSemRepeticao, matrizForcasSolicitantes, opcaoGrafico);
  

 
 endfunction
