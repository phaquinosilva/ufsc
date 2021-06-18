//! Copyright [2019] <Pedro Henrique Aquino Silva>

#ifndef STRUCTURES_LINKED_QUEUE_H
#define STRUCTURES_LINKED_QUEUE_H

#include <cstdint>
#include <stdexcept>

namespace structures {

/// ...
template<typename T>
class LinkedQueue {
 public:
    /// ...
    LinkedQueue();
    /// ...
    ~LinkedQueue();
    /// ...
    void clear();  // limpar
    /// ...
    void enqueue(const T& data);  // enfilerar
    /// ...
    T dequeue();  // desenfilerar
    /// ...
    T& front() const;  // primeiro dado
    /// ...
    T& back() const;  // último dado
    /// ...
    bool empty() const;  // fila vazia
    /// ...
    std::size_t size() const;  // tamanho

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
