#import "templateTCC.typ": *

#let vars = (
  autor: [Nome do(a) aluno(a) de TCC 1],
  titulo: [Título do Projeto de TCC 1],
  orientador: [Nome do(a) professor(a) orientador(a)],
  local: [Araras-SP],
  ano: [20XX],
  tcc: 1,
  listas: (figuras: false, quadros: false, tabelas: false),
  instituicao: [Universidade Federal de São Carlos],
  departamento: [Departamento de Ciências da Natureza, Matemática e Educação],
  resumo: [O resumo consiste de uma apresentação concisa dos pontos relevantes do conteúdo e das conclusões do trabalho. Compondo-se de uma sequência corrente de frases e não de uma enumeração de tópicos, não ultrapassando 500 palavras. Não usar parágrafos no meio do resumo, bem como figuras, fórmulas, equações, diagramas e símbolos. Não deve incluir citações.]
)

#show: doc => project( ..vars, doc)


= Introdução

Antes de utilizar este modelo, certifique-se de:

- estudar cuidadosamente o #link("https://github.com/jocoteles/GuiaTypst/guia/guiaTypst.pdf")[Guia de usos e exemplos do Typst] e
- estudar as #link("https://www.fisicaararas.ufscar.br/pt-br/assets/arquivos/4-regulamento-final-da-monografia-i-e-ii-2016.pdf#page=6.10")[Normas para realização da monografia dos cursos de Licenciatura do CCA UFSCar].

A introdução é a parte inicial do texto, na qual devem constar a formulação e delimitação do assunto tratado. Tem por finalidade fornecer ao leitor os antecedentes que justificam o projeto, assim como enfocar o assunto a ser abordado. A introdução pode incluir informações sobre a natureza e importância do problema, sua relação com outros estudos sobre o mesmo assunto e suas limitações. Essa seção deve representar a essência do pensamento do autor em relação ao assunto que pretende estudar. Deve ser abrangente sem ser prolongada.

Na introdução deve-se ainda estabelecer as justificativas para a realização do projeto. É nessa etapa que você convence o leitor (professor, examinador e demais interessados no assunto) de que seu projeto deve ser feito. Para tanto, ela deve abordar os seguintes elementos: a delimitação, a relevância e a viabilidade. Pode ser finalizada com o objetivo geral do projeto.

== Justificativa

== Questão de pesquisa


= Objetivos

Os objetivos visam a verificação das hipóteses (expectativas) do projeto. É interessante dividir os objetivos em objetivo geral e objetivos específicos.

== Geral

== Específico


= Breve levantamento teórico

Neste item, devem ser inseridas as leituras preliminares com respeito ao tema a ser desenvolvido no trabalho. As referências devem seguir às normas ABNT para citações e referências e o autor deve desenvolver argumentação, ainda que inicial, sobre a importância destas leituras para o trabalho e como as mesmas serão aprofundadas ao longo do desenvolvimento da monografia.

As referências utilizadas para a elaboração do trabalho (que poderão ser citadas em qualquer seção e não apenas nesta) e as fontes documentais previamente identificadas que serão necessárias à pesquisa devem seguir as normas técnicas (no Brasil as normas mais aceitas são as estabelecidas pela ABNT – Associação Brasileira de Normas Técnicas).

O arquivo `referencias.yml` contém diversos exemplos de referências @galilei1638 @ribeiro2016 @silva2015 @neto2018 que podem ser usadas como modelo.

A @fig_galileu1 é um exemplo de inserção e uso de figuras no Typst seguindo as normas ABNT.

#figure(  
image("figuras/Galileu1.png"),  
  caption: [Exemplo clássico do método científico de Galileu.],
) <fig_galileu1>
#align(center)[Fonte: #cite_indireta(<galilei1638>)]


= Materiais e métodos (ou Metodologia)

Com relação a Material, esta seção descreve o equipamento/sujeito empregado na pesquisa. Com relação aos Métodos, deve haver a descrição completa, que permita a compreensão e interpretação dos resultados, bem como a reprodução do estudo e sua utilização por outros pesquisadores. Os Métodos devem ser apresentados na sequência cronológica em que o projeto será realizado. Marcas comerciais só deverão ser incluídas quando importantes para a com preensão e avaliação do trabalho.

Cabe esclarecer que se o estudo utilizar coleta de dados com seres humanos ou animais, o projeto necessitará de aprovação do Comitê de Ética responsável.


= Proposta de Análise dos Resultados

Neste item deve ser exposto o plano de análise dos dados em consonância com a coleta dos dados.

= Plano de Trabalho

No cronograma você dimensiona cada uma das etapas do desenvolvimento da pesquisa, no tempo disponível para sua execução. Geralmente os cronogramas são divididos em meses. CUIDADO!!! Só estabeleça etapas que possam ser executadas no prazo disponível. O cronograma fica muito mais fácil de ser visualizado se estiver em uma tabela.

= Referências

#bibliography("referencias.yml", title: none, style:"associacao-brasileira-de-normas-tecnicas")


= Anexos e Apêndices

Apêndices são elementos complementares ao projeto e que foram elaborados pelo pesquisador. Aqui entrariam, por exemplo, questionários, formulários de pesquisa de campo ou fotografias.

Anexos, assim como os apêndices, só devem aparecer nos projetos de pesquisa se forem extremamente necessários. São textos de autoria de outra pessoa e não do pesquisador. Por exemplo: mapas, documentos originais, fotografias batidas por outra pessoa que não o pesquisador.