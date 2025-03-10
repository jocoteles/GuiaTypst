/*
templateTCC.typ

Template que implementa a formatação das monografias de TCC do 
Curso de Licenciatura em Física do CCA/UFSCar.

Ele implementa as regras contidas no documento:
NORMAS PARA REALIZAÇÃO DA MONOGRAFIA DOS CURSOS DE
LICENCIATURA DO CCA UFSCar
acessível em: https://www.fisicaararas.ufscar.br/pt-br/assets/arquivos/4-regulamento-final-da-monografia-i-e-ii-2016.pdf
*/

#import "@preview/zero:0.1.0": num, set-num
#import "@preview/physica:0.9.4": *


// Declaração das variáveis padrão para o documento do template:
//--------------------------------------------------------------

#let espacoAbaixoParagrafo = 6pt
#let espacoAbaixoTitulo = 6pt
#let espacoAcimaTitulo = 18pt
#let fonte = "Liberation Serif"
#let indentacao = 2.5em

    
#let descricaoTCC1 = [Projeto científico apresentado no Curso de Licenciatura em Física da Universidade Federal de São Carlos para aprovação na disciplina de Monografia I.]
#let descricaoTCC2 = [Monografia apresentada no Curso de Licenciatura em Física da Universidade Federal de São Carlos para obtenção do título de Licenciado (a) em Física.]


//Definição do Template:
//-------------------------------------------------------------
#let project(  
  autor: [],
  titulo: [],
  orientador: [],
  local: [],
  ano: [],  
  instituicao: [],
  departamento: [],
  tcc: [],
  resumo: [],
  listas: (figuras: false, quadros: false, tabelas: false),
  dedicatoria: [],
  agradecimentos: [],
  dataDefesa: [],
  resultado: [],
  banca: (nome1:[], inst1: [], nome2:[], inst2: []),
  doc
) = {
  
  set page(
    paper: "a4",
    margin: (x: 3cm, y: 2.5cm)    
  )
  
  set par(
    leading: 0.8em, //Espaçamento entre linhas
    spacing: 1.5em, //Espaçamento abaixo dos parágrafos
    first-line-indent: (amount: 2.5em, all: true),    
    justify: true,
  )
 
  set text(
    lang: "pt",
    font: fonte,
    size: 12pt
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
  
  //Capa:
  page(
    {
      set text(hyphenate: false, weight: "bold")
      set par(justify: false)
      grid(    
        rows: (1fr, 1fr, 1fr),
        align(top + center,
          text(size: 14pt)[
            #upper(instituicao)\
            #upper(departamento)\ \
            #upper(autor)    
          ]
        ),
        align(horizon + center,
          text(size: 20pt,
            upper(titulo)
          )
        ),
        align(bottom + center,
          text(size: 14pt)[
            #upper(local)\
            #ano
          ]
        )
      )
    }
  )
  
  //Folha de rosto:
  page(
    {
      set text(hyphenate: false, weight: "bold")
      set par(justify: false)
      grid(
        rows: (1fr, 1fr, 1fr, 1fr),
        align(top + center,
          text(size: 14pt,
            upper(autor)
          )
        ),
        align(horizon + center,
          text(size: 20pt,
            upper(titulo)
          )
        ),
        align(horizon + right,
          pad(left: 60%,        
            par(leading: 0.5em, justify: true,
              {
                set text(weight: "regular")            
                if tcc == 1 [#descricaoTCC1] else [#descricaoTCC2]     
                linebreak()
                linebreak()
                [Orientação: #orientador]                        
              }
            )
          )
        ),
        align(bottom + center,
          text(size: 14pt)[
            #upper(local) \
            #ano
          ]
        )
      )
    }
  )

  //Folha de aprovação
  if tcc == 2 {          
    set text(hyphenate: false, size: 12pt)
    set par(justify: false)
    page(          
        grid(
          rows: (0.5fr, 0.5fr, 1fr, 1fr, 1fr),
          align(top + center,
            upper([*#autor*])
          ),
          align(horizon + center,
            upper([*#titulo*])        
          ),
          align(horizon + right,
            pad(left: 60%,        
              par(leading: 0.6em, justify: true,
                descricaoTCC2
              )
            )
          ),
          align(horizon + left,
            [
              *Data da defesa:* #dataDefesa \ \
              *Resultado*: #resultado
            ]        
          ),
          align(bottom + left,      
          {set par(leading: 0.7em)
            [
              *BANCA EXAMINADORA* \ \
              #grid(
                columns: (auto, 1fr),
                rows: (1fr, 1fr, 1fr, 1fr), 
                gutter: 12pt,
                [#orientador \ #instituicao], line(length: 100%),
                [#banca.nome1 \ #banca.inst1], line(length: 100%),
                [#banca.nome2 \ #banca.inst2], line(length: 100%),              
              )
            ]
          }
          )
        )
      )
  }  

  //Dedicatória
  if (tcc == 2 and dedicatoria != []) {
    page(
      align(bottom + right,
          pad(left: 8cm,        
            par(leading: 0.5em,
              {
                dedicatoria
              }
            )
          )
        )
    )
  }

  //Página de agradecimentos:
  if (tcc == 2 and agradecimentos != []) {
    page(
      align(top, [
          #align(center, text(size: 14pt, [*Agradecimentos*])) \
          #agradecimentos
        ]
      )
    )
  }
  
  //Página de resumo:
  page(
    align(horizon, [
        #align(center, text(size: 14pt, [*Resumo*])) \
        #resumo
      ]
    )
  )

  //Lista de figuras:
  if (listas.figuras) {
    pagebreak()
    outline(
      title: [LISTA DE FIGURAS],
      target: figure.where(kind: image),
    )
  }

  //Lista de quadros:
  if (listas.quadros) {
    pagebreak()
    outline(
      title: [LISTA DE QUADROS],
      target: figure.where(kind: "quadro"),
    )
  }

  //Lista de tabelas:
  if (listas.tabelas) {
    pagebreak()
    outline(
      title: [LISTA DE TABELAS],
      target: figure.where(kind: table),
    )
  }
  
  //Página de sumário:
  page(align(horizon,
    outline()
  ))

  //Início da numeração de páginas:
  set page(
    numbering: "1"
  )

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
//-------------------------------------------------

#let cite_indireta(reference) = {
  cite(reference, form: "prose")
}

#let mi = text("µ")    //Para uso de µ (micron) em modo texto

#let sen = math.op("sen")  //Para reconhecimento da função seno em português no modo matemático.

#let noi = h(-indentacao) //Retira a indentação no início do parágrafo



