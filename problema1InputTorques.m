function [vetorTorques] = problema1InputTorques()
  torque = 1;
  vetorTorques = [];
  index = 1;
  botaoComando = '';
  while (!strcmp(botaoComando, "N�o"))
    torque = str2num(inputdlg("Valor do Torque (em Nm):\n", "Torque em X"){1});
    if torque ~= 0
      vetorTorques(index) = torque;
    endif
    index += 1;
    botaoComando = questdlg( 'Quer adicionar mais torques em X?', 'Torques em X', 'Sim', 'N�o', 'N�o');
  endwhile
endfunction
