 

STATELESS: Widgets nunca mudam seu STATE (ESTADO: tudo que está na memória, rodando o aplicativo)
Exemplos:
Icon, IconButton ou Text.

STATEFUL: Widgets dinâmicas
Exemplos:
TestFields, Checkbox, Radio, Slider.
Mantém o estado e redesenha a interface a partir de atualizações.
Atualizações ocorrem a partir da interação do usuário ou mudança de estado. 

STATE:
Como mudar o estado?
1 - Uma maneira é utilizar o método (setState), o flutter chama o build novamente, esse reconstrói a imagem na tela.
2 - Acessar os métodos dos ciclo de vida e sobrescreve-los 

Sequência State Widget:

1 - createState(), estancia o estado.

2 - initState(), é chamado uma única vez, e pode ser sobrescrito, com o objeto de inciar propriedades, exemplos, se conectar ao banco de dados ou API.

3 - didChangeDependencies(), verifica se os objetos e instancia estão atualizadas

4 - State

5 - build(), cria a Widget

6 - Widget, tela desenha UI = função(state), para efetuar a mudança utiliza-se o setState().

7 -  didUpdateWidget(), verifica se a Widget (pai) está atualizada e ser houver chama o build() reconstruindo e atualizando a tela.

8 -  deactivate(), desativa a Widget podendo ser reutilizada.

9 -  dispose(), descarta completamente a Widget.