function [vetorPosicaoApoios] = problema1InputsApoios(opcaoApoios)
  vetorPosicaoApoios = [];

  if opcaoApoios == 1
    vetorPosicaoApoios = 0
    msgbox("O Apoio foi configurado na extremidade esquerda da Viga (x = 0):", "1 Apoio Engastado");
  endif

  if opcaoApoios == 2
    vetorPosicaoApoios(1) = str2num(inputdlg("Posição do Apoio Pino (considere a extremidade esquerda da Viga como x=0):\n", "1 Apoio Pino e 1 Apoio Rolete"){1});
    vetorPosicaoApoios(2) = str2num(inputdlg("Posição do Apoio Rolete (considere a extremidade esquerda da Viga como x=0):\n", "1 Apoio Pino e 1 Apoio Rolete"){1});
  endif

  if opcaoApoios == 3
    vetorPosicaoApoios(1) = str2num(inputdlg("Posição do Apoio Rolete 1 (considere a extremidade esquerda da Viga como x=0):\n", "2 Apoios Roletes"){1});
    vetorPosicaoApoios(2) = str2num(inputdlg("Posição do Apoio Rolete 2 (considere a extremidade esquerda da Viga como x=0):\n", "2 Apoios Roletes"){1});
  endif
endfunction
