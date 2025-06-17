#import "templateIC.typ": *

#let vars = (
  tipo_documento_ic: [Relatório Final de Iniciação Científica  \ [Nome e número do EDITAL]],
  autor: [Nome Completo do(a) Aluno(a)],
  orientador: [Prof(a). Dr(a). Nome Completo do(a) Orientador(a)],
  titulo: [Título do Projeto de IC [Número do projeto no sistema SAGUI]],
  periodo_vigencia: [DD/MM/AAAA a DD/MM/AAAA], // Período da bolsa ou cadastro ICT
  local: [Araras-SP],
  ano: [20XX],
  instituicao: [Universidade Federal de São Carlos],
  departamento: [Departamento de Ciências da Natureza, Matemática e Educação],
  centro: [Centro de Ciências Agrárias],

  // Resumo e Sumário são recomendados para o relatório final.
  show_resumo: true,
  resumo: [
    Este é o espaço para o resumo do seu relatório final de Iniciação Científica. Apresente de forma concisa o problema investigado, os principais métodos utilizados, os resultados mais significativos e as conclusões centrais do trabalho. Não deve ultrapassar 500 palavras e não deve conter citações diretas.
  ],
  show_sumario: true,
)

#show: doc => projectIC( ..vars, doc)

// --- Conteúdo do Relatório Final de IC ---

= Identificação

// Centro e Departamento do(a) Orientador(a), nome do(a) orientador(a),nome e do(a) aluno(a), título do projeto e período de vigência

- *Centro:* #vars.centro
- *Departamento*: #vars.departamento
- *Orientador(a)*: #vars.orientador
- *Aluno(a)*: #vars.autor
- *Titulo do projeto*: #vars.titulo
- *Período de vigência*: #vars.periodo_vigencia


= Resumo do Plano Inicial

Informe sobre o que se pretendeu realizar desde o início do projeto, conforme descrito no plano de trabalho original.

= Introdução

Descreva o tema abordado, a relevância do estudo, o problema de pesquisa e contextualize o trabalho dentro da área de conhecimento.

= Objetivos

Apresente o objetivo principal do projeto bem como, se existirem, os objetivos secundários. Verifique se foram os mesmos do plano inicial ou se houve adaptações.

= Metodologia

Informe de maneira clara e objetiva como foi realizada a pesquisa, as etapas desenvolvidas e descreva os materiais e métodos utilizados (equipamentos, softwares, técnicas de coleta e análise de dados, etc.).

= Resultados e Discussão

Apresente os dados coletados e o tratamento adotado. Nesta parte devem ser apresentadas as tabelas, cálculos, gráficos, fotos etc., seguido da análise e discussão dos resultados à luz da literatura e dos objetivos propostos. Discuta também as dificuldades encontradas durante a execução do projeto.

// Exemplo de figura:
// #figure(
//   image("caminho/para/sua/imagem.png", width: 70%),
//   caption: [Legenda da Figura.]
// ) <fig_exemplo>

// Exemplo de tabela:
// #figure(
//   table(
//     columns: (1fr, 1fr),
//     align: center,
//     table.header([Variável], [Valor]),
//     [Taxa de Sucesso], [85%],
//     [Erro Médio], [0.15],
//   ),
//   caption: [Resultados Experimentais.]
// ) <tab_exemplo>

= Conclusões

Tomando como base a discussão dos resultados, conclua se os objetivos propostos foram alcançados total ou parcialmente. Eventuais críticas, limitações do estudo e sugestões para trabalhos futuros devem constar neste item.

= Produção Técnico-Científica (se houver)

Informe eventuais participações do(a) aluno(a) em seminários, cursos, encontros científicos, palestras, congressos etc., desenvolvidas durante toda a vigência da pesquisa. Inclua detalhes como nome do evento, data, local e tipo de participação. Liste também publicações (artigos, resumos) ou apresentações de trabalho decorrentes do projeto.

= Auto-Avaliação

O(A) aluno(a) deve avaliar sua participação no programa, seu aprendizado, desenvolvimento de habilidades, dificuldades encontradas e como as superou (ou pretende superar) ao longo de todo o projeto.

#v(2.5cm)
#line(length: 60%)
Assinatura do(a) Aluno(a)

= Avaliação do(a) Orientador(a)

O(A) orientador(a) deve fazer apreciação do desempenho do(a) aluno(a) no desenvolvimento das atividades de pesquisa, incluindo assiduidade, dedicação, cumprimento do plano de trabalho, desenvolvimento técnico-científico e potencial para pesquisa futura.

#v(2.5cm)
#line(length: 60%)
Assinatura do(a) Orientador(a)

= Destino do(a) Aluno(a)

O(A) orientador(a) deve informar sobre o destino do(a) aluno(a): se concluiu a graduação, se ingressou na pós-graduação (indicar o nome do Programa/Universidade), se está no mercado de trabalho, etc.

= Referências Bibliográficas

Apresente todas as fontes bibliográficas consultadas e citadas no relatório, seguindo as normas da ABNT.

#bibliography("referencias.yml", title: none, style:"associacao-brasileira-de-normas-tecnicas")

// --- Fim do Conteúdo ---