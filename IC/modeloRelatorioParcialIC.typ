#import "templateIC.typ": *

#let vars = (
  tipo_documento_ic: [Relatório Parcial de Iniciação Científica  \ [Nome e número do EDITAL]],
  autor: [Nome Completo do(a) Aluno(a)],
  orientador: [Prof(a). Dr(a). Nome Completo do(a) Orientador(a)],
  titulo: [Título do Projeto de IC [Número do projeto no sistema SAGUI]],
  periodo_vigencia: [DD/MM/AAAA a DD/MM/AAAA], // Período da bolsa ou cadastro ICT
  local: [Araras-SP],
  ano: [20XX],
  instituicao: [Universidade Federal de São Carlos],
  departamento: [Departamento de Ciências da Natureza, Matemática e Educação],
  centro: [Centro de Ciências Agrárias],

  // Resumo e Sumário são opcionais para o relatório parcial.
  // Defina como 'true' se desejar incluí-los.
  show_resumo: false,
  resumo: [
    // Se desejar um resumo, escreva-o aqui.
  ],
  show_sumario: false,
)

#show: doc => projectIC( ..vars, doc)

// --- Conteúdo do Relatório Parcial de IC ---

= Identificação

// Centro e Departamento do(a) Orientador(a), nome do(a) orientador(a),nome e do(a) aluno(a), título do projeto e período de vigência

- *Centro:* #vars.centro
- *Departamento*: #vars.departamento
- *Orientador(a)*: #vars.orientador
- *Aluno(a)*: #vars.autor
- *Titulo do projeto*: #vars.titulo
- *Período de vigência*: #vars.periodo_vigencia

= Introdução

Descreva brevemente o tema abordado pelo projeto de pesquisa e os objetivos gerais e específicos que deverão ser alcançados.

= Resumo das Atividades

Detalhe as atividades realizadas durante o período coberto por este relatório parcial. Apresente os resultados parciais obtidos até o momento. Se houve dificuldades ou alterações no plano original, mencione-as.

= Produção Técnico-Científica (se houver)

Informe eventuais participações do(a) aluno(a) em seminários, cursos, encontros científicos, palestras, congressos etc., desenvolvidas durante a vigência da pesquisa neste período. Inclua detalhes como nome do evento, data, local e tipo de participação (ouvinte, apresentação de trabalho, etc.).

= Auto-Avaliação

O(A) aluno(a) deve avaliar sua participação no programa, seu aprendizado, desenvolvimento de habilidades, dificuldades encontradas e como as superou (ou pretende superar).

#v(2.5cm)
#line(length: 60%)
Assinatura do(a) Aluno(a)

= Avaliação do(a) Orientador(a)

O(A) orientador(a) deve fazer apreciação do desempenho do(a) aluno(a) no desenvolvimento das atividades de pesquisa, incluindo assiduidade, dedicação, cumprimento do plano de trabalho e desenvolvimento técnico-científico.

#v(2.5cm)
#line(length: 60%)
Assinatura do(a) Orientador(a)

= Referências Bibliográficas (se aplicável e necessário para o relatório parcial)

Se houver citações no relatório, liste as referências aqui.

// #bibliography("referencias.yml", title: none, style:"associacao-brasileira-de-normas-tecnicas")

// --- Fim do Conteúdo ---