/*
templateIC.typ

Template base para Iniciação Científica, derivado DIRETAMENTE de templateTCC.typ
com modificações mínimas e correção de erros de tamanho de fonte e redundância.
*/

#import "@preview/zero:0.1.0": num, set-num
#import "@preview/physica:0.9.4": *


// Declaração das variáveis padrão para o documento do template:
// (Mantidas do templateTCC.typ)
//--------------------------------------------------------------

#let espacoAbaixoParagrafo = 6pt
#let espacoAbaixoTitulo = 6pt
#let espacoAcimaTitulo = 18pt
#let fonte = "Liberation Serif" // Usuário pode alterar para "Arial" ou "Times New Roman"
#let tamanhoFonteCorpoIC = 12pt // Específico para IC
#let indentacao = 2.5em
#let espacamentoLinhaCorpoIC = 0.5em // Para espaçamento 1.5 linhas


//Definição do Template:
//-------------------------------------------------------------
#let projectIC(
  // Parâmetros da Capa IC
  tipo_documento_ic: [],
  titulo: [],
  ano: [],
  local: [],
  instituicao: [],
  departamento: [],
  centro: [],

  autor: none,
  orientador: none,
  periodo_vigencia: none,

  // Controle e conteúdo de Resumo e Sumário
  resumo: [],
  show_resumo: false,
  show_sumario: false,
  doc
) = {

  set page(
    paper: "a4",
    margin: (left: 3cm, right: 2cm, top: 3cm, bottom: 2cm)
  )

  set par(
    leading: espacamentoLinhaCorpoIC,
    spacing: espacoAbaixoParagrafo,
    first-line-indent: indentacao,
    justify: true,
  )

  set text(
    lang: "pt",
    font: fonte,
    size: tamanhoFonteCorpoIC
  )

set math.vec(
    delim: "[",
    gap: 1em
  )
  
  set math.mat(
    delim: "[",
    gap: 1em
  )

  set math.equation(numbering: "(1)")  //Estilo de numeração das equações

  set-num(decimal-separator: ",")  //Separador decimal usado pela função #num()

  show link: it => underline(text(blue, it)) //Melhor destaque para os links

  set figure.caption(position: top)      
  
  //Estilo de numeração das seções:
  set heading(numbering: "1.")
  
  //Espaçamento acima e abaixo dos títulos das seções:
  show heading: set block(
    above: 1em + espacoAcimaTitulo,
    below: 1em + espacoAbaixoTitulo
  )

  // Adequa citação em bloco para ABNT:
  set quote(block: true, quotes: false)
  show quote: it => {
    set pad(left: 4cm)
    set align(right)
    text(size: 10pt, it)  
  }
  
  //Capa Simplificada (adaptada da capa do TCC):
  page({
    set text(hyphenate: false, weight: "bold") // Aplica bold globalmente na capa
    set par(justify: false, first-line-indent: 0em, leading: 0.6em)
    grid(
      rows: (1fr, 1fr, 0.5fr, 2fr, 1fr),
      align(top + center,
        text(size: 14pt)[
          #upper(instituicao)\
          #upper(departamento)
        ]
      ),
      align(center,
        text(size: 20pt,
          upper(titulo) // O bold já vem do set text da page
        )
      ),
      align(center, {
        if tipo_documento_ic != [] {
          text(size: 14pt, upper(tipo_documento_ic))
        }
      }),
      align(center, {
        // Para os campos de autor, orientador, etc., o bold da capa já se aplica.
        // Se um estilo diferente (não bold) for desejado aqui,
        // precisaria de um `text(weight: "regular", ...)` específico.        
        v(1em)
        if autor != none and autor != [] {
          text(size: 12pt)[Aluno(a): #autor]
          v(0.5em)
        }
        if orientador != none and orientador != [] {
          text(size: 12pt)[Orientador(a): #orientador]
           v(0.5em)
        }
      }),
      align(bottom + center,
        text(size: 14pt)[
          #upper(local)\
          #ano
        ]
      )
    )
  })

  //Página de resumo (opcional):
  if show_resumo and resumo != [] {
    page(
      align(horizon, [
          #align(center, text(size: 14pt, [*Resumo*])) \ // Removido weight: "bold"
          #par(first-line-indent: 0em, leading: espacamentoLinhaCorpoIC, justify: true)[#resumo]
        ]
      )
    )
  }

  //Página de sumário (opcional):
  if show_sumario {
    page(align(horizon,
      outline(
        title: text(size: 14pt, [Sumário]), // Para "Sumário" não estar em negrito por padrão
        // Se desejar "Sumário" em negrito, usar [*Sumário*] e remover weight: "bold"
        // title: text(size: 14pt, [*Sumário*]),
        indent: 0em,
      )
    ))
  }

  doc
}

/* Função para uso do orientador para efetuar comentários.*/
#let ori(origin, comment, origin_color: red) = {
  text(origin_color, [[#origin]])
  text(orange, [*#comment*])
  text(blue, [[_Orientador_]])
}

/* Função para uso do autor para efetuar comentários.*/
#let aut(origin, comment, origin_color: red) = {
  text(origin_color, [[#origin]])
  text(orange, [*#comment*])
  text(green, [[_Autor_]])
}

//Funções e variáveis auxiliares
#let cite_indireta(reference) = {
  cite(reference, form: "prose")
}
#let mi = text("µ")
#let mu = mi
#let sen = math.op("sen")
#let noi = h(-indentacao)