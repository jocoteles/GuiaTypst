#import "templateTCC.typ": *

#let vars = (
  autor: [Nome do(a) aluno(a) de TCC 2],
  titulo: [Título do Trabalho de TCC 2],
  orientador: [Nome do(a) professor(a) orientador(a)],
  local: [Araras-SP],
  ano: [20XX],
  tcc: 2,
  banca: (
    nome1: [Nome do(a) avaliador(a) 1], inst1: [Instituição do(a) avaliador(a) 1],
    nome2: [Nome do(a) avaliador(a) 2], inst2: [Instituição do(a) avaliador(a) 2]
  ),
  listas: (figuras: false, quadros: false, tabelas: false),
  instituicao: [Universidade Federal de São Carlos],
  departamento: [Departamento de Ciências da Natureza, Matemática e Educação],
  dedicatoria: [Inclua aqui a dedicatória. #lorem(10)],
  agradecimentos: [
    Inclua aqui os agradecimentos.
    
    #lorem(50)
    
    #lorem(30)
  ],
  resumo: [O resumo consiste de uma apresentação concisa dos pontos relevantes do conteúdo e das conclusões do trabalho. Compondo-se de uma sequência corrente de frases e não de uma enumeração de tópicos, não ultrapassando 500 palavras. Não usar parágrafos no meio do resumo, bem como figuras, fórmulas, equações, diagramas e símbolos. Não deve incluir citações.]
)

#show: doc => project( ..vars, doc)


= Introdução

Antes de utilizar este modelo, certifique-se de:

- estudar cuidadosamente o #link("https://github.com/jocoteles/GuiaTypst/guia/guiaTypst.pdf")[Guia de usos e exemplos do Typst] e
- estudar as #link("https://www.fisicaararas.ufscar.br/pt-br/assets/arquivos/4-regulamento-final-da-monografia-i-e-ii-2016.pdf#page=6.10")[Normas para realização da monografia dos cursos de Licenciatura do CCA UFSCar].

A introdução é a parte inicial do texto, na qual devem constar a formulação e delimitação do assunto tratado e problema de pesquisa. Tem por finalidade fornecer ao leitor os antecedentes que justificam o trabalho, assim como enfocar o assunto a ser abordado. A introdução pode incluir informações sobre a natureza e a importância do problema, sua relação com outros estudos sobre o mesmo assunto e suas limitações. Essa seção deve representar a essência do pensamento do autor em relação ao assunto que pretende estudar. Deve ser abrangente sem ser prolongada. Pode ser finalizada com o objetivo geral do trabalho.

= Objetivos

Os objetivos visam a verificação das hipóteses (expectativas) do projeto. É interessante dividir os objetivos em objetivo geral e objetivos específicos.

== Geral

== Específico


= Desenvolvimento teórico

É uma discussão cujo pesquisador oferece ao leitor uma síntese dos conceitos da literatura; expressa sua própria opinião - contrastando-a ou não - com a literatura; estabelece justificativas para o trabalho resumindo apropriadamente começo, meio e fim de sua proposta de estudo.

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

Cabe esclarecer que se o estudo utilizar coleta de dados com seres humanos ou animais, o trabalho necessitará de aprovação do Comitê de Ética responsável.


= Resultados e discussão

Os resultados e a discussão podem ser apresentados em um único tópico ou em tópicos separados.

- *Resultados*. Apresentação dos resultados obtidos de forma objetiva, exata, clara e lógica deve ser feita nesta seção. Podem-se incluir tabelas, quadros ou figuras em geral (desenhos, gráficos, mapas, esquemas, modelos, fotografias).

- *Discussão*. O autor deve tentar:
  - estabelecer relações entre causa e efeito;
  - deduzir as generalizações e princípios básicos que tenham comprovação nas observações experimentais;
  - fazer comparação dos resultados obtidos com aqueles apresentados na revisão da literatura;
  - esclarecer as exceções, modificações e contradições das hipóteses, teorias e princípios diretamente relacionados com o trabalho realizado;
  - indicar as aplicações teóricas ou práticas dos resultados obtidos, bem como as suas limitações.
  - O autor deve manifestar seu ponto de vista sobre os resultados obtidos e seu alcance. Não se permite a inclusão de dados novos na Discussão.


= Conclusões ou Considerações Finais

Conclusão ou Considerações Finais devem responder a os objetivos do trabalho. Deve ser clara e concisa e referir-se às hipóteses levantadas e discutidas no trabalho. Neste tópico também podem ser sugeridos estudos futuros sobre o mesmo tema do trabalho realizado.


= Referências

#bibliography("referencias.yml", title: none, style:"associacao-brasileira-de-normas-tecnicas")


= Anexos e Apêndices

Apêndices são elementos complementares ao projeto e que foram elaborados pelo pesquisador. Aqui entrariam, por exemplo, questionários, formulários de pesquisa de campo ou fotografias.

Anexos, assim como os apêndices, só devem aparecer nos projetos de pesquisa se forem extremamente necessários. São textos de autoria de outra pessoa e não do pesquisador. Por exemplo: mapas, documentos originais, fotografias batidas por outra pessoa que não o pesquisador.