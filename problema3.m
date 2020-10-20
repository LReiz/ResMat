function problema3()
  opcaoApoios = menu("Qual ser� o tipo de problema?", 
          "1 Apoio Engastado", 
          "1 Apoio Pino e 1 Apoio Rolete",
          "2 Apoios Roletes");
          

  # Posi��o dos Apoios
  vetorPosicaoApoios = [];

  if opcaoApoios == 1
    vetorPosicaoApoios = 0
    msgbox("O Apoio foi configurado na extremidade esquerda da Viga (x = 0):", "1 Apoio Engastado");
  endif

  if opcaoApoios == 2
    vetorPosicaoApoios(1) = str2num(inputdlg("Posi��o do Apoio Pino (considere a extremidade esquerda da Viga como x=0):\n", "1 Apoio Pino e 1 Apoio Rolete"){1});
    vetorPosicaoApoios(2) = str2num(inputdlg("Posi��o do Apoio Rolete (considere a extremidade esquerda da Viga como x=0):\n", "1 Apoio Pino e 1 Apoio Rolete"){1});
  endif

  if opcaoApoios == 3
    vetorPosicaoApoios(1) = str2num(inputdlg("Posi��o do Apoio Rolete 1 (considere a extremidade esquerda da Viga como x=0):\n", "2 Apoios Roletes"){1});
    vetorPosicaoApoios(2) = str2num(inputdlg("Posi��o do Apoio Rolete 2 (considere a extremidade esquerda da Viga como x=0):\n", "2 Apoios Roletes"){1});
  endif
  
  #For�as em cada Apoio
  
  if opcaoApoios == 1
    fxApoioEngastado = str2num(inputdlg("For�a X Apoio Engastado:", "FX Apoio Engastado"){1}); 
    fyApoioEngastado = str2num(inputdlg("For�a Y Apoio Engastado:", "FY Apoio Engastado"){1}); 
    tApoioEngastado = str2num(inputdlg("Torque Apoio Engastado:", "Torque Apoio Engastado"){1}); 
    mApoioEngastado = str2num(inputdlg("Momento Apoio Engastado:", "Momento Apoio Engastado"){1}); 
  endif
  
  if opcaoApoios == 2
    fxApoioPino = str2num(inputdlg("For�a X Apoio Pino:", "FX Apoio Pino"){1});
    fyApoioPino = str2num(inputdlg("For�a Y Apoio Pino:", "FY Apoio Pino"){1});
    tApoioPino = str2num(inputdlg("Torque Apoio Pino:", "FY Apoio Pino"){1});
    
    fyApoioRolete = str2num(inputdlg("For�a Y Apoio Rolete:", "FY Apoio Rolete"){1});
  endif
  
  if opcaoApoios == 3
    fyApoioRolete1 = str2num(inputdlg("For�a Y Apoio Rolete 1:", "FY Apoio Rolete 1"){1});
    fyApoioRolete2 = str2num(inputdlg("For�a Y Apoio Rolete 2:", "FY Apoio Rolete 2"){1});
  endif
  
  #For�as Externas Y na Viga
  forcasExternasY = [];
  vetorPosicaoForcas = [];
  index = 0;
  botaoComando = ''
  while (!strcmp(botaoComando, "N�o"))
    index += 1;
    forcasExternasY(index) = str2num(inputdlg("Valor da For�a em Y (em N):\n", "For�a"){1});
    vetorPosicaoForcas(index) = str2num(inputdlg("Posi��o da For�a em Y (em metros):\n", "Posi��o da For�a Y"){1});
    botaoComando = questdlg( 'Quer adicionar mais torques em X?', 'Torques em X', 'Sim', 'N�o', 'N�o');
  endwhile
endfunction
