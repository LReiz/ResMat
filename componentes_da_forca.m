function [componente_X,componente_Y] = componentes_da_forca(forca, angulo)
  angulo = grau_para_rad(angulo);
  componente_X = forca .* cos(angulo);
  componente_Y = forca .* sin(angulo);
endfunction
