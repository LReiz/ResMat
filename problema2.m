function problema2()
  
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
  
  resolvendoApoio(opcaoApoios, vetorForcas, vetorAngulosForcas, vetorPosicaoForcas, vetorTorques, vetorPosicaoApoios) #função que printa os resultados do programa
  
  
endfunction