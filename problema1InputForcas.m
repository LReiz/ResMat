function [vetorForcas, vetorAngulosForcas, vetorPosicaoForcas] = problema1InputForcas()
  forca = 1;
  angulo = 0;
  posicao = 0;
  vetorForcas = [];
  vetorAngulosForcas = [];
  vetorPosicaoForcas = [];
  index = 1;
  botaoComando = '';
  while (!strcmp(botaoComando, "N�o"))
    forca = str2num(inputdlg("Valor da For�a (em N):\n", "For�a"){1});
    if forca ~= 0
      vetorForcas(index) = forca;
      angulo = str2num(inputdlg("Valor do angulo da for�a com o eixo X(em graus):\n", "Angulo"){1});
      posicao = str2num(inputdlg("Valor da posicao da forca X(em metros):\n", "Angulo"){1});
      vetorAngulosForcas(index) = angulo;
      vetorPosicaoForcas(index) = posicao;
    endif
    index += 1;
    botaoComando = questdlg('Quer adicionar mais for�as?', 'For�as', 'Sim', 'N�o', 'N�o');
  endwhile
endfunction
