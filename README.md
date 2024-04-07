# Banco de Dados I

##  Exercício 1 - Plano de Saúde

Uma empresa administradora de planos de saúde controla as cobranças da sua rede
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

Os clientes ao chegarem à oficina registram suas queixas sobre seu veículo informando a
identificação do veículo, a marca, o modelo e uma breve descrição do problema. A oficina,
então, se compromete a comunicar o orçamento e prazo do reparo por telefone em até 24hs
a contar da data do registro.

A partir do aceite do cliente, prazo e orçamento ficam comprometidos sendo possível uma
única revisão de ambos em até 24hs a contar do momento do aceite inicial do cliente. Após
o prazo de revisão do orçamento, a oficina se obriga a pagar uma multa diária por atraso
correspondente a um percentual do valor do orçamento, que pode variar dentro de um
intervalo estabelecido pela administração e que é negociado com o cliente pelo atendente.
Os intervalos de negociação são revistos periodicamente pela administração. O valor do
orçamento fica congelado e os ganhos ou perdas decorrentes de sua alteração revertem-se
para a oficina.

O processo de reparo é realizado da seguinte forma. Inicialmente designa-se um mecânico
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
 
