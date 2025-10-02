# Calculadora de Idade
# Na aula de hoje, vamos desenvolver uma calculadora de idade em Ruby. O programa solicitará a data de nascimento no formato DDMMAAAA e validará a entrada usando expressões regulares. Vamos explorar conceitos como manipulação de datas com a classe Date, controle de fluxo com begin...rescue para tratar erros e loops while. Também aprenderemos a calcular a idade considerando se o aniversário já ocorreu no ano atual. Venham comigo nessa jornada de programação!

# Exercício
# Uma ferramenta que pergunta a data de nascimento do usuário e calcula a idade exata em anos.

# Descrição
# O programa solicita a data de nascimento no formato "dd/mm/aaaa". Em seguida, ele calcula e exibe a idade do usuário.

# Conceitos Praticados
# Fundamentos: Entrada e saída.
# Tipos de Dados:
# Datas e Horas: Uso da classe Date ou Time para manipular as datas.
# Strings: Para receber a entrada do usuário.
# Regex: Para validar se o formato da data inserida está correto (/^\\d{2}\\/\\d{2}\\/\\d{4}$/).
# Conversões: Transformar a string da data em um objeto Date.
# Estruturas de Controle:
# begin/rescue para tratar datas inválidas (ex: 31/02/2000).