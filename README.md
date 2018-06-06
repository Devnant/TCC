# TCC
Repositório para o TCC do Curso de Pós da Escola de Contas do TCEMG

# Variáveis selecionadas 

Fonte de dados -> microdados do Saeb do INEP (http://download.inep.gov.br/microdados/microdados_saeb_2015.zip)


### nível de aluno:
- sexo: masculino (A) ou feminino (B), coluna TX_RESP_Q001 de TS_ALUNO em Fontes.RData;
- percep: branco (A), pardo (B), preto (C), amarelo (D), indígena (E), não sei (F), coluna TX_RESP_Q002 de TS_ALUNO em Fontes.RData;
- desvidade: desvio da idade que o aluno possuía na ocasião da prova e a idade que ele deveria ter para cursar o ano, sendo idade de 10 anos no 5° ano, e idade de 14 anos no 9° ano (a ser elaborado com referência na coluna TX_RESP_Q004 de TS_ALUNO em Fontes.RData);
- formpais: variável binária indicando se o pai ou mãe do aluno completaram o ensino superior (a ser elaborado com referência nas colunas TX_RESP_Q019 e TX_RESP_Q023 de TS_ALUNO em Fontes.RData);
- incentivo: variável binária que indica se os pais incentivam o aluno a estudar, sendo sim (A) e não (B), coluna TX_RESP_Q027 de TS_ALUNO em Fontes.RData. 

### nível de escola:
- LOC: código do IBGE de mesoregião da escola, objetos esc5 e esc9 em baseESCT.RData;
- DEPENDENCIA_ADM: variável categórica que indica em qual esfera administrativa pública se insere a escola, podendo ser Municipal, Estadual ou Federal, objetos esc5 e esc9 em baseESCT.RData;
- NIVEL_SOCIO_ECONOMICO: variável categórica de nível socioeconômico da escola, variando em uma escala de sete níveis variando de muito baixo a muito alto, objetos esc5 e esc9 em baseESCT.RData;
- VCONSERV: variável binária que indica a situação de conservação das escola sendo boa conservação (1) e (0) caso contrário. A definição de escola em bom estado de conservação foi feita a partir da avaliação de aspectos pesquisados conforme perguntas 7 a 21 e 37 a 64 do questionário de escolas (TS_ESCOLA) sendo considerado na escala de Lickert utilizada para a pontuação: bom, regular, ruim e inexistente, os respectivos valores 3, 2, 1, 0. A partir da soma dos pontos nos diversos aspectos foi dado um ponto de corte no terceiro quartil para indicar a escola em bom estado de conservação (1 - bom e 0 - ruim),  objetos esc5 e esc9 em baseESCT.RData;
- VSEGUR: variável binária que indica a situação de segurança das escola sendo boa segurança (1) e (0) caso contrário. A definição de escola em bom estado de segurança foi feita a partir da avaliação de aspectos pesquisados conforme perguntas 22 a 31 do questionário de escolas (TS_ESCOLA) sendo considerado na escala de Lickert utilizada para a pontuação: bom, regular, ruim e inexistente, os respectivos valores 3, 2, 1, 0. A partir da soma dos pontos nos diversos aspectos foi dado um ponto de corte no terceiro quartil para indicar a escola em bom estado de segurança (1 - bom e 0 - ruim),  objetos esc5 e esc9 em baseESCT.RData;
- PC_FORMACAO_DOCENTE: proporção de docentes na escola com formação adequada (0 a 100), assim considerados aqueles no Grupo 1 do INEP (docentes com formação superior de licenciatura, ou bacharelado com complementação pedagógica, na mesma área da disciplina que leciona),objetos esc5 e esc9 em baseESCT.RData; 
- PROJETO: variável categórico que indica como foi desenvolvido o projeto pedagógico da escola, sendo (A) com participação da equipe escolar, (B) sem participação, o diretor não sabe, ou não há projeto (coluna TX_RESP_Q032 de TS_DIRETOR em Fontes.RData).

# Glossário

- Fontes.RData -> bases de dados dos questionários conforme microdados extraídos do Inep (Saeb), escolas de Minas Gerais no exercício de 2015.
- baseDIR.RData -> informações do questionário aplicado aos diretores das escolas.
- baseESC.RData -> informações do questionário de escolas do quinto e nono anos do ensino fundamental, após eliminação de linhas com valores nulos, exclusão de escolas com menos de 30 participantes no exame, e exclusão de escolas com "máscara" (com ID que inicia com o dígito 6).
- baseESCT.RData -> bases de dados de escolas após manipulação de dados, com as variáveis que serão de fato utilizadas na modelagem, em específico as dicotômicas construídas VCONSERV e VSEGUR.
- baseESCT2.RData -> baseESCT.RData com a inclusão da variável projeto.
- EscalaLickert.R -> script elaborado para obtenção das variáveis VCONSERV e VSEGUR, resultando no arquivo baseESCT.RData.
- GraficosEscolas.R -> script com várias visualizações feitas no arquivo baseESCT.RData (histogramas, boxplots, etc).
- Projeto.R <- script elaborado para obtenção da variável projeto, resultando no arquivo baseESCT2.RData.

# Procedimentos para revisão

1) Necessário instalação de R (https://cran.r-project.org/) e R Studio (https://www.rstudio.com/);
2) abrir no R Studio o arquivo TCC.Rproj após clonagem/download do presente repositório;
3) necessário importação dos pacotes para execução dos scripts, em especial visualização dos dados, listados no arquivo .Rprofile.
