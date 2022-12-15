# INE-5418 - Trabalho de Computação Distribuída

### Grupo
Ana de Souza
Paola de Oliveira Abel
Pedro Henrique Aquino Silva

### Descrição
A aplicação escolhida é um chat por mensagens de texto, que permite usuários entrarem em um grupo, e terem acesso às mensagens enviadas anteriormente. Para atender aos requisitos do trabalho, a aplicação também implementa um serviço de armazenamento de mensagens, responsável por manter um *backup* das mensagens enviadas na forma de replicação ativa de dados.

### Arquiteturas
O sistema utiliza arquitetura cliente-servidor em três camadas, permitindo múltiplos clientes e utilizando um servidor como unidade de processamento *backend*, sendo que o banco de dados da aplicação se localiza no servidor *cloud* Atlas, do MongoDB. A comunicação dos clientes com o servidor de aplicação ocorre via paradigmas de Publish/Subscribe e Request/Receive.

### Requisitos de transparência e teconológicos
O sistema respeita transparência de localidade, uma vez que as mensagens são armazenadas em Banco de Dados remoto, e restauradas localmente, sendo que os clientes veem as mensagens e o BD como objetos locais.
Além disso, o sistema implementa replicação das mensagens, armazenando-as em bancos de dados, além do buffer local do cliente.

### Tecnologias

O sistema foi desenvolvido em Python, pela familiaridade dos integrantes do grupo com a linguagem.

A implementação utiliza os bindings para Python da biblioteca de comunicação assíncrona ZeroMQ para implementar a funcionalidade de um Middleware orientado a mensagnens, em que a comunicação entre clientes e servidor é mediada pelas primitivas fornecidas pela biblioteca. Isto foi motivado pela simplicidade de uso das funcionalidades do ZeroMQ e da documentação bastante completa. O uso de filas de mensagens, por sua vez, é atraente devido ao fato de possibilitar de forma relativamente simples a comunicação assíncrona em grupo, desejável em chats baseados em texto.

A princípio, a ideia original era implementarmos um esquema de RPC para chamadas ao Banco de Dados que armazena as mensagens, uma vez que somente o servidor tem acesso direto ao BD. Para requisitar as mensagens, os clientes invocariam o método *do servidor* para tal, o que seria implementado utilizando funcionalidades do ZeroMQ. Contudo, por questões de tempo e algumas complicações com as tecnologias escolhidas, esta funcionalidade não foi incluída. 

A arquitetura escolhida considera que todos os clientes se comunicam com um servidor central de forma assíncrona, sendo que o servidor é responsável pelo *broadcast* da mensagem a todos os clientes, assim como por enviar a mensagem ao BD.
O banco de dados roda no servidor do MongoDB, fazendo com que a arquitetura da aplicação seja, efetivamente, um cliente/servidor multicamadas, em que os clientes se comunicam entre si por MoM, e com o BD remoto por RPC.

## Como executar a aplicação

Para executar a aplicação Python, são necessárias as seguintes dependências (podem ser instaladas via ```pip install```): ```zmq```, ```pymongo```

Para executar o sistema é necessário levantar uma instância do servidor que esteja conectado ao BD que roda no servidor do MongoDB. Para tal basta executar
```python server.py```.

Após disso, é necessário instanciar os clientes e conectá-los ao servidor rodando ```python client.py```.
