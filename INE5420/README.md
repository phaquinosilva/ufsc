# Sistema Gráfico Interativo

Sistema implementado como trabalho para a disciplina INE5420 do curso de Ciências da Computação da UFSC (Florianópolis).

## Instruções de uso

Para executar o programa o usuário pode utilizar `poetry run sgi`, após instalar as dependencias com `poetry install`, ou rodar diretamente a partir do python com `python main_window.py`.

O usuário pode adicionar pontos clicando no botão `Adicionar` ou utilizando o atalho `Shift + A`.

Os pontos inseridos devem estar no formato:`(x1, y1), (x2, y2), (x3, y3) ...`, sendo que o sistema identifica automaticamente qual objeto que deve ser criado: `Ponto`, `Reta` ou `Polígono` (`Wireframe`). Nesta janela, pode-se definir o nome e a cor dos objetos, e caso não seja inserido nenhum nome, o sistema escolherá automaticamente um nome a partir do tipo de objeto inserido. 

Os pontos são mostrados na janela `Viewport`, que se baseia numa `Window` interna. A `Window` é o recorte de um plano cartesiano, cujas coordenadas são inicializadas no intervalo $[0,100]$.

Para navegar na window, o usuário pode utilizar as funções de `panning` ou `zoom`. Para `panning`, o usuário pode utilizar as setas do teclado, enquanto para `zoom`, pode-se usar tanto o _scroll_ do mouse, como os botões no menu ou ainda os atalhos `Control+Plus` e `Control+Minus`.

Para retornar a `Window` para a configuração original, pode-se usar o botão `Reset Window` ou o atalho `Control+R`.

É possível realizar transformações sobre um determinado objeto. Para tal, basta escolher um dos objetos adicionados na lista de objetos, e clicar no botão `Transformações`. Em seguida, será aberto uma janela na qual pode-se selecionar $N$ transformações sobre o objeto, do tipo _translação_, _rotação_ (podendo ser sobre o centro do objeto, centro do mundo - representado pela Window, ou sobre um ponto arbitrário), ou _escalonamento natural_. Após escolher todas as transformações desejadas, pode-se clicar no botão `Aplicar transformações`.

## Atualização

Todos os requisitos até a entrega 1.6 foram implementados:
* 1.1 Sistema básico com Viewport e Window
* 1.2 Implementação de transformções 2D em coordenadas homogêneas
* 1.3 Coordenadas normalizadas e rotações na Window, entrada/saída em Wavefront OBJ
* 1.4 Clipping de pontos, linhas e polígonos
* 1.5 Curvas de Bézier (ou Hermite) usando Blending Functions, clipping de curvas
* 1.6 B-Splines usando Forward Differences

### Execução

Para rodar o sistema, basta instalar todas as dependências especificadas no arquivo `pyproject.toml`, e executar o módulo SGI na linha de comando: ```python -m sgi```.

Uma forma automática de executar o programa é usar `poetry`, como explicado anteriormente neste README:

(1) `poetry install`
(2) `poetry run sgi`
