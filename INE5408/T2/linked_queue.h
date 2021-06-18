//! Copyright [2019] <Pedro Henrique Aquino Silva>

#ifndef STRUCTURES_LINKED_QUEUE_H
#define STRUCTURES_LINKED_QUEUE_H

#include <cstdint>
#include <stdexcept>

namespace structures {

/// Classe LinkedQueue.
//! modela fila com encadeamento simples
template<typename T>
class LinkedQueue {
 public:
    /// Construtor simples
    LinkedQueue();
    /// Destrutor
    ~LinkedQueue();
    /// Método limpa lista
    void clear();  // limpar
    /// Método enfileirar
    void enqueue(const T& data);  // enfilerar
    /// Método desenfileirar
    T dequeue();  // desenfilerar
    /// Método retorna primeiro dado
    T& front() const;  // primeiro dado
    /// Método retorna último dado
    T& back() const;  // último dado
    /// Método retorna se fila está vazia
    bool empty() const;  // fila vazia
    /// Método retorna tamanho da fila
    std::size_t size() const;  // tamanho

 private:
    //! Classe Node. Classe membro de LinkedQueue.
    class Node {  // Elemento
     public:
        //! Construtor um parâmetro
        //! @param dado do tipo T.
        explicit Node(const T& data) {
            data_ = data;
        }

        //! Construtor com dois parâmetros
        /**!
         * @param dado do tipo T
         * @param ponteiro para proximo Node
         */
        Node(const T& data, Node* next):
            data_{data},
            next_{next}
        {}
        //! Método getter dado
        T& data() {  // getter: dado
            return data_;
        }

        //! Método getter dado const
        //! @see data()
        const T& data() const {  // getter const: dado
            return data_;
        }

        //! Método retorna ponteiro para próximo Node 
        Node* next() {  // getter: próximo
            return next_;
        }

        //! Método retorna ponteiro para próximo Node const
        //! @see next()
        const Node* next() const {  // getter const: próximo
            return next_;
        }

        //! Método setter para proximo Node.
        //! @param ponteiro para Node.
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
