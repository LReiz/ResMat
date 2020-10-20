tipoProblema = menu("Qual será o tipo de problema a ser resolvido?",
              "Forças na Viga",
              "Carregamento Distribuído",
              "Esforços Solicitantes");

              
# Forças na Viga
if tipoProblema == 1
   problema1();           

endif

# Carregamento Distribuído
if tipoProblema == 2
  problema2();
endif

#Forças Solicitantes
if tipoProblema == 3
  problema3();
endif
