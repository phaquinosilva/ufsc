//! Copyright [2019] <Pedro Henrique Aquino Silva>
#ifndef STRUCTURES_LINKED_STACK_H
#define STRUCTURES_LINKED_STACK_H

#include <cstdint>
#include <stdexcept>

namespace structures {

//! ...
template<typename T>
class LinkedStack {
 public:
    /// ...
    LinkedStack();
    /// ...
    ~LinkedStack();
    /// ...
    void clear();  // limpa pilha
    /// ...
    void push(const T& data);  // empilha
    /// ...
    T pop();  // desempilha
    /// ...
    T& top() const;  // dado no topo
    /// ...
    bool empty() const;  // pilha vazia
    /// ...
    std::size_t size() const;  // tamanho da pilha

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

    Node* top_;  // nodo-topo
    std::size_t size_;  // tamanho
};

}  // namespace structures

#endif

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
    Node *curr, *last;
    curr = top_;
    if (!empty()) {
        while (curr != NULL) {
            last = curr;
            curr = curr->next();
            delete last;
        }
    }
    top_ = nullptr;
    size_ = 0;
}

template<typename T>
void structures::LinkedStack<T>::push(const T& data) {
    Node *novo;
    novo = new Node(data);
    if (novo == NULL) {
        throw std::out_of_range("sem memória");
    } else {
        if (!empty()) {
            novo->next(top_);
        }
        top_ = novo;
        size_++;
    }
}

template<typename T>
T structures::LinkedStack<T>::pop() {
    if (empty()) {
        throw std::out_of_range("lista vazia");
    } else {
        T ret = top_->data();
        Node *out = top_;
        top_ = top_->next();
        size_--;
        delete out;
        return ret;
    }
}

template<typename T>
T& structures::LinkedStack<T>::top() const {
    if (empty()) throw std::out_of_range("lista vazia");
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
