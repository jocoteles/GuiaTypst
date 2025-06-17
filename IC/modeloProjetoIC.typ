#import "templateIC.typ": *

#let vars = (
  tipo_documento_ic: [Projeto de Iniciação Científica \ [Nome e número do EDITAL]],
  titulo: [Título do Projeto de IC (NÃO INCLUIR NOMES NO TÍTULO)],
  // ATENÇÃO: Para anonimato, não preencher autor e orientador.
  // Deixe como 'none' ou remova as linhas.
  autor: none, // [NÃO INCLUIR - PROJETO ANÔNIMO],
  orientador: none, // [NÃO INCLUIR - PROJETO ANÔNIMO],
  local: [Araras-SP],
  ano: [20XX],
  instituicao: [Universidade Federal de São Carlos],
  departamento: [Departamento de Ciências da Natureza, Matemática e Educação],

  // Resumo é recomendado para o projeto
  show_resumo: true,
  resumo: [
    Este é o espaço para o resumo do seu projeto de Iniciação Científica. O resumo consiste de uma apresentação concisa dos pontos relevantes do conteúdo e das conclusões esperadas do trabalho. Compondo-se de uma sequência corrente de frases e não de uma enumeração de tópicos. Não usar parágrafos no meio do resumo, bem como figuras, fórmulas, equações, diagramas e símbolos. Não deve incluir citações.
  ],

  // Sumário também é recomendado
  show_sumario: true,
)

#show: doc => projectIC( ..vars, doc)

// --- Conteúdo do Projeto de IC ---

= Introdução

Apresente o tema do seu projeto, o problema de pesquisa, a relevância e a justificativa para a sua realização. Contextualize o leitor sobre a área de estudo.


= Objetivos

Descreva clara e concisamente o que se pretende alcançar com o projeto.

= Metodologia

Detalhe os métodos, técnicas, materiais e procedimentos que serão utilizados para realizar a pesquisa e alcançar os objetivos propostos.


= Resultados Esperados

Descreva os resultados que se espera obter ao final do projeto e qual a sua contribuição para a área de conhecimento.


= Plano de Trabalho / Cronograma (Opcional)

Apresente um cronograma das atividades a serem desenvolvidas ao longo do período do projeto. Pode ser uma tabela simples.

// Exemplo de tabela para cronograma:
// #figure(
//   table(
//     columns: (2fr, 1fr, 1fr, 1fr),
//     align: center,
//     table.header(
//       [Atividade], [Mês 1-3], [Mês 4-6], [Mês 7-9]
//     ),
//     [Revisão Bibliográfica], [X], [], [],
//     [Coleta de Dados], [], [X], [],
//     [Análise de Dados], [], [], [X],
//     [Redação do Relatório], [], [], [X],
//   ),
//   caption: [Cronograma Previsto],
// ) <cronograma_exemplo>


= Referências Bibliográficas

Liste todas as fontes citadas no projeto, seguindo as normas da ABNT. O arquivo `referencias.yml` (ou .bib) deve ser usado aqui.

#bibliography("referencias.yml", title: none, style:"associacao-brasileira-de-normas-tecnicas")

// --- Fim do Conteúdo ---