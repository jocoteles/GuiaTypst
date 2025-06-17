[![DOI](https://zenodo.org/badge/946114997.svg)](https://doi.org/10.5281/zenodo.15001408)

## *GuiaTypst* - Guia de usos, exemplos e templates para TCC e Iniciação Científica PIBIC e ICTSR UFSCar

Os documentos contidos neste repositório têm o objetivo de orientar os estudantes do curso de Licenciatura em Física do CCA/UFSCar no uso da ferramenta [Typst](https://typst.app/) para a escrita de documentos acadêmicos.

Neste repositório você encontra:

- [Guia de usos e exemplos do Typst](https://github.com/jocoteles/GuiaTypst/blob/main/guia/guiaTypst.pdf).
- [Pasta com modelos para TCC 1 e TCC 2 usando Typst](https://github.com/jocoteles/GuiaTypst/tree/main/TCC).
- [Pasta com modelos para Iniciação Científica (PIBIC e ICTSR UFSCar) usando Typst](https://github.com/jocoteles/GuiaTypst/tree/main/IC):
    - Modelo para Projeto de IC (`modeloProjetoIC.typ`)
    - Modelo para Relatório Parcial de IC (`modeloRelatorioParcialIC.typ`)
    - Modelo para Relatório Final de IC (`modeloRelatorioFinalIC.typ`)

Se você pretende usar o material deste repositório para escrever o seu Trabalho de Conclusão de Curso ou documentos de Iniciação Científica, siga os passos abaixo na ordem em que se apresentam:

1.  Leia e estude cuidadosamente o [Guia de usos e exemplos do Typst](https://github.com/jocoteles/GuiaTypst/blob/main/guia/guiaTypst.pdf).
2.  Faça o download [deste repositório](https://zenodo.org/records/15001409/files/jocoteles/GuiaTypst-v0.1.0.zip?download=1) para o seu computador.
3.  Com a pasta baixada, você tem duas opções:
    - fazer o upload dos arquivos da pasta `TCC` ou `IC` para o [editor online do Typst](https://typst.app/) e/ou
    - instalar o Typst localmente no seu computador e usar um editor de texto/código compatível com o Typst. (Neste caso recomendamos o [VS Code](https://code.visualstudio.com/))
4.  Abra o modelo correspondente ao seu trabalho (e.g., `modeloTCC1.typ`, `modeloProjetoIC.typ`, etc.), renomeie o arquivo com um nome pertinente ao seu projeto/trabalho e preencha-o com o conteúdo desejado.

### Informações Específicas para Iniciação Científica

**Projeto de Iniciação Científica:**
-   **Anonimato:** O projeto de pesquisa NÃO PODERÁ trazer qualquer informação que permita a identificação dos/das proponentes, inclusive na capa ou no nome do arquivo, como o nome do(da) estudante ou nome do orientador(a), mesmo que incompletos. O template `modeloProjetoIC.typ` está configurado para auxiliar nisso.
-   **Conteúdo Recomendado:** Resumo, introdução, objetivos, metodologia, resultados esperados e referências bibliográficas.
-   **Formato:** Recomenda-se que o projeto tenha de 15 a 20 páginas, com formatação em fonte Arial ou Times New Roman, tamanho 12 e espaçamento de linha 1,5. O arquivo PDF final deve ter até 10MB.

**Relatório Parcial de Iniciação Científica:**
-   **Instruções:** Deve seguir as orientações disponíveis em [Roteiro para Elaboração de Relatório Parcial de ICT - ProPQ UFSCar](https://www.propq.ufscar.br/pt-br/assets/arquivos/iniciacao-cientifica/perguntas-frequentes/roteiro-para-elaboracao-de-relatorio-parcial-de-ict.pdf/view).
-   **Formato:** O arquivo PDF final deve ter até 5MB. Recomenda-se que o relatório parcial tenha ao menos 2 páginas. O template `modeloRelatorioParcialIC.typ` já inclui as seções principais.

**Relatório Final de Iniciação Científica:**
-   **Instruções:** Deve seguir as orientações disponíveis em [Roteiros para Elaboração de Relatório Final de ICT - ProPQ UFSCar](https://www.propq.ufscar.br/pt-br/assets/arquivos/iniciacao-cientifica/perguntas-frequentes/roteiros-para-elaboracao-de-relatorio-final-de-ict.pdf/view).
-   **Formato:** O arquivo PDF final deve ter até 5MB. Recomenda-se que o relatório final contenha em torno de 25 páginas, em tamanho A4, fonte Arial ou Times New Roman, corpo 12 e espaçamento 1,5. O template `modeloRelatorioFinalIC.typ` já inclui as seções principais.

- **Formatação Geral:** Os templates estão configurados com a fonte "Liberation Serif", uma fonte serifada de código aberto que foi projetada para ser metricamente compatível com "Times New Roman". Isso significa que ela tem uma aparência muito similar e ocupa um espaço parecido na página. Muitas vezes, ela é usada como um substituto quando "Times New Roman" não está disponível ou por preferência por software livre. Para atender estritamente às normas da UFSCar que especificam "Arial" ou "Times New Roman", modifique a variável `fonte` no arquivo `templateIC.typ` (ou `templateTCC.typ`) para a fonte desejada. Certifique-se de que a fonte escolhida esteja disponível em seu sistema ou no editor online do Typst.