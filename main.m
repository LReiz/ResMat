tipoProblema = menu("Qual ser� o tipo de problema a ser resolvido?",
              "For�as na Viga",
              "Carregamento Distribu�do",
              "Esfor�os Solicitantes");

              
# For�as na Viga
if tipoProblema == 1
   problema1();           

endif

# Carregamento Distribu�do
if tipoProblema == 2
  problema2();
endif

#For�as Solicitantes
if tipoProblema == 3
  problema3();
endif
