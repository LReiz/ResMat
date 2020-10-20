tipoProblema = menu("Qual será o tipo de problema a ser resolvido?",
              "1.Forças na Viga",
              "2.Carregamento Distribuído",
              "3.Esforços Solicitantes",
              "4.Instruções");

              
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

#Instruções
if tipoProblema == 4
  instrucoes();
endif
