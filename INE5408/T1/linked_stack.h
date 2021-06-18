//! Copyright [2019] <Paulo Almeida>
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

