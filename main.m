tipoProblema = menu("Qual ser� o tipo de problema a ser resolvido?",
              "1.For�as na Viga",
              "2.Carregamento Distribu�do",
              "3.Esfor�os Solicitantes",
              "4.Instru��es");

              
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

#Instru��es
if tipoProblema == 4
  instrucoes();
endif
