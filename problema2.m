function problema2()
  
   #Opcao Apoios
  opcaoApoios = opcaoApoios();
  
  
  botaoComando = '';
  funcoesCarregamento = [""];
  limiteIntegracao1 = [];
  limiteIntegracao2 = [];
  index = 0;
  while (!strcmp(botaoComando, "N�o")) #while recebe a fun��o e os limites de integra��o
    index += 1;
    funcao = inputdlg("Insira sua fun��o w(x):", "W(x)"){1};
    funcoesCarregamento = [funcoesCarregamento; funcao];
 
    limiteIntegracao1(index) = str2num(inputdlg("Limite de Integra��o Inferior da Fun��o", "Limite 1"){1});
    limiteIntegracao2(index) = str2num(inputdlg("Limite de Integra��o Superior da Fun��o", "Limite 1"){1});
    botaoComando = questdlg( 'Quer adicionar mais Fun��es de Carregamento?', 'Fun��o de Carregamento', 'Sim', 'N�o', 'N�o');
  endwhile
  
  [forcasResultantes, posResutantes] = calculo_integral(funcoesCarregamento, limiteIntegracao1, limiteIntegracao2); #retorna as integrais da for�a e da posi��o
  
  
  #Posi��o dos Apoios
  vetorPosicaoApoios = problema1InputApoios(opcaoApoios);
          
  # Forcas
          
  [vetorForcas, vetorAngulosForcas, vetorPosicaoForcas] = problema1InputForcas();
  
  # Torques

  [vetorTorques] = problema1InputTorques();

  #matriz_input
  #vetorTorques

  vetorForcas=[vetorForcas,forcasResultantes]; #concatenando as for�as com as for�as integradas
  vetorPosicaoForcas=[vetorPosicaoForcas,posResutantes]; #concatenando as posi��es com as posi��es concatenadas
  aux=length(forcasResultantes);
  vetor_270=270*ones(1,aux);
  vetorAngulosForcas=[vetorAngulosForcas,vetor_270]; #concatenando o angulo das for�as
  
  resolvendoApoio(opcaoApoios, vetorForcas, vetorAngulosForcas, vetorPosicaoForcas, vetorTorques, vetorPosicaoApoios) #fun��o que printa os resultados do programa
  
  
endfunction