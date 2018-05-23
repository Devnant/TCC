# TCC
Repositório para o TCC do Curso de Pós da Escola de Contas do TCEMG

# Glossário

Fontes.RData -> bases de dados dos questionários conforme microdados extraídos do Inep (Saeb), escolas de Minas Gerais no exercício de 2015.
baseESC.RData -> informações do questionário de escolas do quinto e nono anos do ensino fundamental, após eliminação de linhas com valores nulos, exclusão de escolas com menos de 30 participantes no exame, e exclusão de escolas com "máscara" (com ID que inicia com o dígito 6).
baseESCT.RData -> bases de dados de escolas após manipulação de dados, com as variáveis que serão de fato utilizadas na modelagem, em específico as dicotômicas construídas VCONSERV e VSEGUR.
EscalaLickert.R -> script elaborado para obtenção das variáveis VCONSERV e VSEGUR, resultando no arquivo baseESCT.RData.
GraficosEscolas.R -> script com várias visualizações feitas no arquivo baseESCT.RData (histogramas, boxplots, etc).

# Procedimentos para revisão

1) Necessário instalação de R (https://cran.r-project.org/) e R Studio (https://www.rstudio.com/);
2) abrir no R Studio o arquivo TCC.Rproj após clonagem/download do presente repositório;
3) necessário importação dos pacotes para execução dos scripts, em especial visualização dos dados, listados no arquivo .Rprofile.
