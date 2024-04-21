# Banco de Dados I

##  Exercício 1 - Plano de Saúde

> Uma empresa administradora de planos de saúde controla as cobranças da sua rede
credenciada de médicos, laboratórios, clínicas e hospitais conferindo o que é cobrado com
o que é permitido pelos contratos dos seus clientes. Cada contrato de plano de saúde
assinado com um cliente denominado titular que é responsável pelo pagamento das
mensalidades e inclui outros clientes denominados dependentes que somente usufruem do
plano de saúde. Ao contratar a cobertura de um plano de saúde o cliente informa seu CPF,
nome, endereço e a lista dos seus dependentes, cada um com seu respectivo CPF. Nesse ato,
o cliente escolhe um plano de saúde comercializado pela empresa. Cada plano de saúde, na
sua descrição homologada junto à Agência Nacional de Saúde Suplementar (ANS),
especifica um conjunto de procedimentos médicos permitidos aos segurados e determina a
quantidade máxima de vezes que um cliente poderá solicitar a execução do serviço
anualmente. Após um cliente esgotar a quantidade permitida de um determinado
procedimento, esse procedimento não é mais coberto pela administradora e se houver
cobrança por parte da rede credenciada a cobrança será negada. Cada procedimento
médico é codificado pela ANS que atribui um código a cada procedimento.

## Exercício 2 - Oficina

>Os clientes ao chegarem à oficina registram suas queixas sobre seu veículo informando a
identificação do veículo, a marca, o modelo e uma breve descrição do problema. A oficina,
então, se compromete a comunicar o orçamento e prazo do reparo por telefone em até 24hs
a contar da data do registro.
</br></br>A partir do aceite do cliente, prazo e orçamento ficam comprometidos sendo possível uma
única revisão de ambos em até 24hs a contar do momento do aceite inicial do cliente. Após
o prazo de revisão do orçamento, a oficina se obriga a pagar uma multa diária por atraso
correspondente a um percentual do valor do orçamento, que pode variar dentro de um
intervalo estabelecido pela administração e que é negociado com o cliente pelo atendente.
Os intervalos de negociação são revistos periodicamente pela administração. O valor do
orçamento fica congelado e os ganhos ou perdas decorrentes de sua alteração revertem-se
para a oficina.
</br></br>O processo de reparo é realizado da seguinte forma. Inicialmente designa-se um mecânico
responsável pelo veículo. Somente alguns mecânicos podem atuar como responsáveis e são
escolhidos pela administração. Esse mecânico irá elaborar uma lista de serviços necessários.
A lista é encaminhada para o coordenador da oficina que, então, distribui os serviços pelos
mecânicos. Ao terminar de executar uma tarefa para a qual foram designados, os mecânicos
informam o início e término do serviço. Os mecânicos responsáveis também podem ser
designados para execução de serviços. A qualquer tempo o mecânico responsável pode
reabrir uma tarefa dada como encerrada por um mecânico caso avalie que o serviço não foi
concluído a contento. Nesse caso o responsável registra uma nova execução do serviço para
o mesmo mecânico. A quantidade de divergências entre o responsável e o mecânico que
executou a tarefa é utilizada como medida de qualidade. A qualquer tempo, também, o
mecânico responsável pode incluir novos serviços necessários. Qualquer serviço em aberto
pode ser designado a outro mecânico sendo que o mecânico anterior deverá registrar o tempo
parcial que utilizou na realização da tarefa e, se necessário, comentários sobre o que falta a
ser feito. Ao final de todos os serviços o mecânico responsável encerra o reparo. A oficina
mantém registro de quais serviços cada mecânico está apto a realizar.
 
## Exercício 3 - Gerenciamento Financeiro

>Uma aplicação de gerenciamento financeiro permite registrar as movimentações financeiras
de várias contas e classificá-las segundo uma taxonomia definida pelo usuário. Os
movimentos podem ser depósitos, retiradas ou transferências entre contas do usuário. No
caso de transferências, há que se registrar as contas de origem e destino dos recursos. A
taxonomia de classificação pode possuir um número indeterminado de grupamentos, mas
estão organizadas em dois grandes grupos: Receitas e Despesas. As Receitas classificam os
depósitos e as Despesas classificam as retiradas.
 
## Exercício 4 - Conferências

>Uma conferência científica avalia em cada uma de suas edições anuais um conjunto de
trabalhos científicos. Cada trabalho enviado é registrado com seu título, autores, resumo
e o nome do documento .pdf que contém o trabalho. Cada autor deve ser registrado com
seu nome, e-mail e instituição de ensino à qual pertence. Um comitê de avaliação,
composto por professores ligados à conferência, avalia os trabalhos enviados com um
conceito no intervalo [A,E]. Os trabalhos com conceito médio “B” são selecionados para
publicação nos anais da edição da conferência e seus autores devem enviar uma versão
final do texto. Obs.: Os atributos das entidades podem não ter sido explicitamente
enumerados no cenário descrito, por isso proponha atributos que eventualmente tenham
sido omitidos, mas que sejam relevantes para o projeto do BD. Não é necessário propor
todos os atributos necessários, somente os mais relevantes.