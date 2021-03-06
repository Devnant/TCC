# TCC
Repositório para o TCC do Curso de Pós da Escola de Contas do TCEMG

# Variáveis selecionadas 

Fonte de dados -> microdados do Saeb do INEP (http://download.inep.gov.br/microdados/microdados_saeb_2015.zip)

### nível de aluno:
- sexo: masculino (A) ou feminino (B), coluna TX_RESP_Q001 de TS_ALUNO em Fontes.RData;
- percep: branco (A), pardo (B), preto (C), amarelo (D), indígena (E), não sei (F), coluna TX_RESP_Q002 de TS_ALUNO em Fontes.RData;
- desvidade: desvio da idade que o aluno possuía na ocasião da prova e a idade que ele deveria ter para cursar o ano, sendo idade de 10 anos no 5° ano, e idade de 14 anos no 9° ano (referência na coluna TX_RESP_Q004 de TS_ALUNO em Fontes.RData);
- formpais: variável binária indicando se o pai ou mãe do aluno completaram o ensino superior (referência nas colunas TX_RESP_Q019 e TX_RESP_Q023 de TS_ALUNO em Fontes.RData);
- incentivo: variável binária que indica se os pais incentivam o aluno a estudar, sendo sim (A) e não (B), coluna TX_RESP_Q027 de TS_ALUNO em Fontes.RData;
- notalp: proficiência em Língua Portuguesa transformada na escala única do SAEB, com média = 250, desvio = 50;
- notamt: proficiência do aluno em Matemática transformada na escala única do SAEB, com média = 250, desvio = 50. 

### nível de escola:
- LOC: código do IBGE de mesoregião da escola, objetos esc5 e esc9 em baseESCT.RData;
- DEPENDENCIA_ADM: variável categórica que indica em qual esfera administrativa pública se insere a escola, podendo ser Municipal, Estadual ou Federal, objetos esc5 e esc9 em baseESCT.RData;
- NIVEL_SOCIO_ECONOMICO: variável categórica de nível socioeconômico da escola, variando em uma escala de sete níveis variando de muito baixo a muito alto, objetos esc5 e esc9 em baseESCT.RData;
- VCONSERV: variável binária que indica a situação de conservação das escola sendo boa conservação (1) e (0) caso contrário. A definição de escola em bom estado de conservação foi feita a partir da avaliação de aspectos pesquisados conforme perguntas 7 a 21 e 37 a 64 do questionário de escolas (TS_ESCOLA) sendo considerado na escala de Lickert utilizada para a pontuação: bom, regular, ruim e inexistente, os respectivos valores 3, 2, 1, 0. A partir da soma dos pontos nos diversos aspectos foi dado um ponto de corte no terceiro quartil para indicar a escola em bom estado de conservação (1 - bom e 0 - ruim),  objetos esc5 e esc9 em baseESCT.RData;
- VSEGUR: variável binária que indica a situação de segurança das escola sendo boa segurança (1) e (0) caso contrário. A definição de escola em bom estado de segurança foi feita a partir da avaliação de aspectos pesquisados conforme perguntas 22 a 31 do questionário de escolas (TS_ESCOLA) sendo considerado na escala de Lickert utilizada para a pontuação: bom, regular, ruim e inexistente, os respectivos valores 3, 2, 1, 0. A partir da soma dos pontos nos diversos aspectos foi dado um ponto de corte no terceiro quartil para indicar a escola em bom estado de segurança (1 - bom e 0 - ruim),  objetos esc5 e esc9 em baseESCT.RData;
- PC_FORMACAO_DOCENTE: proporção de docentes na escola com formação adequada (0 a 100), assim considerados aqueles no Grupo 1 do INEP (docentes com formação superior de licenciatura, ou bacharelado com complementação pedagógica, na mesma área da disciplina que leciona),objetos esc5 e esc9 em baseESCT.RData; 
- PROJETO: variável categórico que indica como foi desenvolvido o projeto pedagógico da escola, sendo (A) com participação da equipe escolar, (B) sem participação, o diretor não sabe, ou não há projeto (coluna TX_RESP_Q032 de TS_DIRETOR em Fontes.RData).
- INVDIR: estimativa de média de investimento direto de educação na escola. O cálculo considera a estimativa do Inep de investimento direto por aluno no Brasil, multiplicado pelo número de matrículas dos respectivos anos de ensino (quinto e nono) de cada escola.

# Glossário

- Fontes.RData -> bases de dados dos questionários conforme microdados extraídos do Inep (Saeb), escolas de Minas Gerais no exercício de 2015.
- baseALU.RData -> informações do questionário aplicado aos alunos das escolas.
- baseCONS.RData -> bases de dados consolidadas para o quinto e nono anos do ensino fundamental.
- baseDIR.RData -> informações do questionário aplicado aos diretores das escolas.
- baseESC.RData -> informações do questionário de escolas do quinto e nono anos do ensino fundamental, após eliminação de linhas com valores nulos, exclusão de escolas com menos de 30 participantes no exame, e exclusão de escolas com "máscara" (com ID que inicia com o dígito 6).
- baseESCT.RData -> bases de dados de escolas após manipulação de dados, com as variáveis que serão de fato utilizadas na modelagem, em específico as dicotômicas construídas VCONSERV e VSEGUR.
- baseESCT2.RData -> baseESCT.RData com a inclusão da variável projeto.
- best.RData -> melhores modelos estimados segundo critérios AIC, BIC e loglik.
- 1 - EscalaLickert.R -> script elaborado para obtenção das variáveis VCONSERV e VSEGUR, resultando no arquivo baseESCT.RData.
- 2 - Projeto.R <- script elaborado para obtenção da variável projeto, resultando no arquivo baseESCT2.RData.
- 3 - Consolidação.R <- script elaborado para junção das variáveis no nível de escolas com o nível de alunos, resultando no arquivo baseCONS.RData.
- GráficosAlunos.R -> script com várias visualizações feitas no arquivo baseCONS.RData (histogramas, boxplots, etc).
- GráficosEscolas.R -> script com várias visualizações feitas no arquivo baseESCT.RData (histogramas, boxplots, etc).
- Regressões LP_5EF.R -> modelos estimados de regressão, língua portuguesa quinto ano.
- Regressões LP_9EF.R -> modelos estimados de regressão, língua portuguesa nono ano.
- Regressões MT_5EF.R -> modelos estimados de regressão, matemática quinto ano.
- Regressões MT_9EF.R -> modelos estimados de regressão, matemática nono ano.
- Rsquared.R -> Análise de resíduos (Q-Q) e cálculos de coeficiente de determinação para os melhores modelos estimados.


# Procedimentos para revisão

1) Necessário instalação de últimas versões do R (https://cran.r-project.org/) e R Studio (https://www.rstudio.com/);
2) abrir no R Studio o arquivo TCC.Rproj após clonagem/download do presente repositório;
3) necessário importação dos pacotes para execução dos scripts, em especial visualização dos dados, listados no arquivo .Rprofile.
