//! Copyright [2019] <Paulo Almeida, Pedro Aquino>;
#include <iostream>
#include <fstream>
#include <stdexcept>
#include <string>

#ifndef STRUCTURES_LINKED_STACK_H
#define STRUCTURES_LINKED_STACK_H

#include <cstdint>
#include <stdexcept>

namespace structures {

//! Pilha encadeada
template<typename T>
class LinkedStack {
 public:
    //! construtor
    LinkedStack();
    //! destrutor
    ~LinkedStack();
    //! limpa pilha, desaloca memória
    void clear();
    //! empilha
    void push(const T& data);
    //! desempilha
    T pop();
    //! retorna dado no topo
    T& top() const;
    //! retorna pilha vazia
    bool empty() const;
    //! retorna tamanho da pilha
    std::size_t size() const;

 private:
    class Node {  // Elemento
     public:
        explicit Node(const T& data):
            data_{data}
        {}

        Node(const T& data, Node* next):
            data_{data},
            next_{next}
        {}

        T& data() {  // getter: info
            return data_;
        }

        const T& data() const {  // getter-constante: info
            return data_;
        }

        Node* next() {  // getter: próximo
            return next_;
        }

        const Node* next() const {  // getter-constante: próximo
            return next_;
        }

        void next(Node* next) {  // setter: próximo
            next_ = next;
        }

     private:
        T data_;
        Node* next_;
    };

    Node* top_;  // nodo-topo
    std::size_t size_;  // tamanho
};

}  // namespace structures

// ----- codigo ------ //

template<typename T>
structures::LinkedStack<T>::LinkedStack() {
    top_ = nullptr;
    size_ = 0;
}

template<typename T>
structures::LinkedStack<T>::~LinkedStack() {
    clear();
}

template<typename T>
void structures::LinkedStack<T>::clear() {
    if (!empty()) {
        Node *ultimo, *atual = top_;
        while (size_ > 0) {
            ultimo = atual;
            atual = atual->next();
            delete ultimo;
            size_--;
        }
        top_ = nullptr;
    }
}

template<typename T>
void structures::LinkedStack<T>::push(const T& data) {
    Node *novo = new Node(data, top_);
    if (novo == NULL) {
        throw std::out_of_range("lista cheia");
    }
    top_ = novo;
    size_++;
}

template<typename T>
T structures::LinkedStack<T>::pop() {
    if (empty()) {
        throw std::out_of_range("lista vazia");
    }
    Node *anterior = top_->next();
    Node *retirado = top_;
    top_ = anterior;
    size_--;
    return retirado->data();
}

template<typename T>
T& structures::LinkedStack<T>::top() const {
    if (empty()) {
        throw std::out_of_range("lista vazia");
    }
    return top_->data();
}

template<typename T>
bool structures::LinkedStack<T>::empty() const {
    return (size_ == 0);
}

template<typename T>
std::size_t structures::LinkedStack<T>::size() const {
    return size_;
}

#endif


#ifndef STRUCTURES_LINKED_QUEUE_H
#define STRUCTURES_LINKED_QUEUE_H

#include <cstdint>
#include <stdexcept>

namespace structures {

/// Fila Encadeada
template<typename T>
class LinkedQueue {
 public:
    /// método construtor
    LinkedQueue();
    /// método destrutor
    ~LinkedQueue();
    /// limpa fila, desaloca memória
    void clear();  // limpar
    /// método enfileirar
    void enqueue(const T& data);  // enfilerar
    /// método desenfileirar
    T dequeue();  // desenfilerar
    /// método retorna primeiro dado
    T& front() const;  // primeiro dado
    /// método retorna último dado
    T& back() const;  // último dado
    /// método retorna se a fila está vazia
    bool empty() const;  // fila vazia
    /// método retorna tamanho da fila
    std::size_t size() const;  // tamanho

 private:
    class Node {  // Elemento
     public:
        explicit Node(const T& data) {
            data_ = data;
        }

        Node(const T& data, Node* next):
            data_{data},
            next_{next}
        {}

        T& data() {  // getter: dado
            return data_;
        }

        const T& data() const {  // getter const: dado
            return data_;
        }

        Node* next() {  // getter: próximo
            return next_;
        }

        const Node* next() const {  // getter const: próximo
            return next_;
        }

        void next(Node* node) {  // setter: próximo
            next_ = node;
        }

     private:
        T data_;
        Node* next_{nullptr};
    };

    Node* head;  // nodo-cabeça
    Node* tail;  // nodo-fim
    std::size_t size_;  // tamanho
};

}  // namespace structures

#endif

template<typename T>
structures::LinkedQueue<T>::LinkedQueue() {
    head = nullptr;
    tail = nullptr;
    size_ = 0;
}

template<typename T>
structures::LinkedQueue<T>::~LinkedQueue() {
    clear();
}

template<typename T>
void structures::LinkedQueue<T>::clear() {
    Node *curr, *last;
    curr = head;
    if (!empty()) {
        while (curr != NULL) {
            last = curr;
            curr = curr->next();
            delete last;
        }
    }
    head = nullptr;
    tail = nullptr;
    size_ = 0;
}

template<typename T>
void structures::LinkedQueue<T>::enqueue(const T& data) {
    Node *n = new Node(data);
    if (empty()) {
        head = n;
    } else {
        tail->next(n);
    }
    n->next(nullptr);
    tail = n;
    size_++;
}

template<typename T>
T structures::LinkedQueue<T>::dequeue() {
    if (empty()) throw std::out_of_range("lista vazia");
    Node *out = head;
    T ret = out->data();
    head = out->next();
    size_--;
    delete out;
    return ret;
}

template<typename T>
T& structures::LinkedQueue<T>::front() const {
    if (empty()) throw std::out_of_range("lista vazia");
    return head->data();}

template<typename T>
T& structures::LinkedQueue<T>::back() const {
    if (empty()) throw std::out_of_range("lista vazia");
    return tail->data();
}

template<typename T>
bool structures::LinkedQueue<T>::empty() const {
    return (size_ == 0);
}

template<typename T>
std::size_t structures::LinkedQueue<T>::size() const {
    return size_;
}
/*
#include "linked_stack.h"
#include "linked_queue.h"
*/
using namespace std;
using namespace structures;

/*! /brief Verifica se as tags dos arquivo possuem fechamento
 *  Esta funcao percorre o arquivo adicionando as tags na pilhaTags,
 *  e quando encontra tag topo fechada, ela remove a tag da pilha tag
 *  retorna -1 se encontrar um erro no fechamento das tags
 *  \param xmlfilename e o nome do arquivo que sera lido
 */
bool verificarArquivo(char xmlfilename[100]);
/*! /brief gerencia as tags na pilhaTags
 *  Esta função adiciona a tag quando aberta a pilha
 *  verifica se a tag topo e igual a tag que esta sendo fechada, e
 *  se for, remove da pilha
 *  \param xmlfilename e o nome do arquivo que sera lido
 */
bool lidarTag(string tag);
/*! /brief separa a matriz do arquivo
 * Esta funcao separa o name, height, width e lidarTag
 * do arquivo e passa para a funcao rotImagem
 *  \param tag e a tag que sera selecionada
 */
void rotulacao(char xmlfilename[100]);
/*! /brief retorna a rotulacao da imagem selecionada
 *  Esta f uncao utiliza o algoritmo de rotulacao,
 *  para encontrar o componente conexo da matriz
 *  \param matE e a matriz E retirada do arquivo,
 *   height e a quantidade de linhas da matriz
 *   width e a quantidade de colunas da matriz
 */
int rotImagem(int** matE, int height, int width);

//! ponto com coordenadas x, y
struct ponto_t {
    int x;
    int y;
} ponto_s;

//! pilha encadeada usada na validacao das tags
LinkedStack<string> pilhaTags {};
//! fila encadeada usada na rotulacao das imagens
LinkedQueue<ponto_t> fila {};

int main() {
    char xmlfilename[100];

    std::cin >> xmlfilename;  // entrada

    if (!verificarArquivo(xmlfilename)) {
        std::cout << "error" << std::endl;
        return -1;
    }

    rotulacao(xmlfilename);

    return 0;
}

bool verificarArquivo(char xmlfilename[100]) {
    string line;
    std::string tag;
    bool pegandoTag = false;
    ifstream myfile (xmlfilename);

    if (myfile.is_open()) {
        while (getline(myfile, line)) {
            for (int i = 0; i < line.length(); i++) {
                char letra = line.at(i);
                if (letra == '>') {
                    pegandoTag = false;
                    if (!lidarTag(tag)) {
                        return false;
                    }
                }
                if (pegandoTag) {
                    tag.push_back(letra);
                }
                if (letra == '<') {
                    tag.erase();
                    pegandoTag = true;
                }
            }
        }
        myfile.close();
        if (!pilhaTags.empty()) {
            //printf("Marcacao sem fechamento\n");
            return false;
        }
    } else {
        throw std::runtime_error("Unable to open file");
    }
    return true;
}

bool lidarTag(string tag) {
    //
    if (tag.front() == '/') {
        if (pilhaTags.empty()) {
            //printf("Marcacao e fechada sem que tenha sido aberta antes\n");
            return false;
        }
        string top = pilhaTags.top();
        string identificador;
        identificador.assign(tag.begin()+1, tag.end());

        if (top.compare(identificador) == 0) {
            pilhaTags.pop();
        } else {
            //printf("Marcacao aberta deveria ter sido fechada antes\n");
            return false;
        }
    } else {
        pilhaTags.push(tag);
    }
    return true;
}

void rotulacao(char xmlfilename[100]) {
    string line, name;
    bool salvarLinha = false;
    int height = 0;
    int width = 0;
    int** matE;
    int contLinhas;

    ifstream myfile (xmlfilename);
    if (myfile.is_open()) {
        while (getline(myfile, line)) {
            if (line.find("<name>") != std::string::npos) {
                int tam = line.find("</name>");
                name.assign(line, 6, tam-6);
            }
            if (line.find("<height>") != std::string::npos) {
                int ini = line.find("<height>") + 8;
                int fim = line.find("</height>") - ini;
                string temp;
                temp.assign(line, ini, fim);
                height = std::stoi(temp, nullptr, 10);
            }
            if (line.find("<width>") != std::string::npos) {
                int ini = line.find("<width>") + 7;
                int fim = line.find("</width>") - ini;
                string temp;
                temp.assign(line, ini, fim);
                width = std::stoi(temp, nullptr, 10);
            }
            if (line.compare("</data>") == 0) {
                salvarLinha = false;
                int rotulo = rotImagem(matE, height, width);
                cout << name << " " << rotulo << endl;
            }
            if (salvarLinha) {
                for (int k = 0; k< width; k++) {
                    char elem = line.at(k);
                    matE[contLinhas][k] = elem - '0';
                }
                contLinhas++;
            }
            if (line.compare("<data>") == 0) {
                salvarLinha = true;
                contLinhas = 0;
                matE = new int*[height];
                for(int i = 0;i < height; i++)
                    matE[i] = new int[width];
            }
        }
        for(int i = 0;i < height; i++)
            delete []matE[i];
        delete []matE;

        myfile.close();
    } else {
        throw std::runtime_error("Unable to open file");
    }
}

int rotImagem(int** matE, int height, int width) {
    
    int **matR = new int*[height];
    for(int i = 0; i < height; i++)
        matR[i] = new int[width];
    //iniciando ela com zero
    for(int i = 0; i < height; i++)
        for(int j = 0; j < width; j++)
            matR[i][j] = 0;

    //calcular as paradas
    int rotulo = 1;
    ponto_t ponto;
    for(int i = 0; i < height; i++) {
        for(int j = 0; j < width; j++) {
            if (matE[i][j] == 1 & matR[i][j] == 0) {
                fila.enqueue({i,j});
                matR[i][j] = 1;
                matE[i][j] = rotulo;
                while (!fila.empty()) {
                    ponto = fila.dequeue();
                    int x = ponto.x;
                    int y = ponto.y;
                    if (x != 0) {
                        if (matE[x-1][y] == 1 & matR[x-1][y] == 0) {
                            fila.enqueue({x-1,y});
                            matR[x-1][y] = 1;
                            matE[x-1][y] = rotulo;
                        }
                    }
                    if (x != height-1) {
                        if (matE[x+1][y] == 1 & matR[x+1][y] == 0) {
                            fila.enqueue({x+1,y});
                            matR[x+1][y] = 1;
                            matE[x+1][y] = rotulo;
                        }
                    }
                    if (y != 0) {
                        if (matE[x][y-1] == 1 & matR[x][y-1] == 0) {
                            fila.enqueue({x,y-1});
                            matR[x][y-1] = 1;
                            matE[x][y-1] = rotulo;
                        }
                    }
                    if (y != width-1) {
                        if (matE[x][y+1] == 1 & matR[x][y+1] == 0) {
                            fila.enqueue({x,y+1});
                            matR[x][y+1] = 1;
                            matE[x][y+1] = rotulo;
                        }
                    }
                }
                rotulo++;
            } else {
                matR[i][j] = 1;
            }
        }
    }

    int maior = 0;
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            //printf("%d", matE[i][j]);
            if (matE[i][j] > maior) {
                maior = matE[i][j];
            }
        }
        //printf("\n");
    }

    // liberar memória
    for(int i = 0;i < height; ++i) {
        delete []matR[i];
    }
    delete []matR;

    return maior;
}
