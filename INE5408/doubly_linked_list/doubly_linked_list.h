//! Copyright [2019] <Pedro Henrique Aquino Silva>
#ifndef STRUCTURES_DOUBLY_LINKED_LIST_H
#define STRUCTURES_DOUBLY_LINKED_LIST_H

#include <cstdint>
#include <stdexcept>

namespace structures {

template<typename T>
class DoublyLinkedList {
 public:
    DoublyLinkedList();
    ~DoublyLinkedList();
    void clear();

    void push_back(const T& data);  // insere no fim
    void push_front(const T& data);  // insere no início
    void insert(const T& data, std::size_t index);  // insere na posição
    void insert_sorted(const T& data);  // insere em ordem

    T pop(std::size_t index);  // retira da posição
    T pop_back();  // retira do fim
    T pop_front();  // retira do início
    void remove(const T& data);  // retira específico

    bool empty() const;  // lista vazia
    bool contains(const T& data) const;  // contém

    T& at(std::size_t index);  // acesso a um elemento (checando limites)
    const T& at(std::size_t index) const;  // getter constante a um elemento

    std::size_t find(const T& data) const;  // posição de um dado
    std::size_t size() const;  // tamanho
    
 protected:
    class Node {
     public:
        explicit Node(const T& data):
            data_{data}
        {}

        Node(const T& data, Node* next):
            data_{data},
            next_{next}
        {}

        Node(const T& data, Node* prev, Node* next):
            data_{data},
            next_{next},
            prev_{prev}
        {}

        T& data() {
            return data_;
        }

        const T& data() const {
            return data_;
        }

        Node* prev() {
            return prev_;
        }

        const Node* prev() const {
            return prev;
        }

        void prev(Node* node) {
            prev_ = node;
        }

        Node* next() {
            return next_;
        }

        const Node* next() const {
            return next_;
        }

        void next(Node* node) {
            next_ = node;
        }

     private:
        T data_;
        Node* prev_;
        Node* next_;
    };

    Node* head{nullptr};  // primeiro da lista
    Node* tail{nullptr};  // ultimo da lista
    std::size_t size_{0u};
};

} // namespace structures

#endif

template<typename T>
structures::DoublyLinkedList<T>::DoublyLinkedList() {
    head = nullptr;
    tail = nullptr;
    size_ = 0;
}

template<typename T>
structures::DoublyLinkedList<T>::~DoublyLinkedList() {
    clear();
}

template<typename T>
void structures::DoublyLinkedList<T>::clear() {
    Node *curr, *last;
    curr = head;
    if (!empty()) {
        while (curr != NULL) {
            last = curr;
            curr = curr->next();
            delete last;
        }
    }
    tail = nullptr;
    head = nullptr;
    size_ = 0;
}

template<typename T>
void structures::DoublyLinkedList<T>::push_back(const T& data) {
    insert(data, size_);
}

template<typename T>
void structures::DoublyLinkedList<T>::push_front(const T& data) {
    Node *novo = new Node(data);
    if (novo == NULL) throw std::out_of_range("lista cheia");
    novo->next(head);
    head = novo;
    size_+=1;
}

template<typename T>
void structures::DoublyLinkedList<T>::insert(const T& data, std::size_t index) {
    if (index > size_) throw std::out_of_range("posição inválida");
    if (index == 0) return push_front(data);
    Node *novo, *anterior;
    novo = new Node(data);
    if (novo == NULL) throw std::out_of_range("lista cheia");
    anterior = head;
    for (int i = 0; i < index-1; ++i) {
        anterior = anterior->next();
    }
    novo->next(anterior->next());
    anterior->next(novo);
    size_ +=1;
}

template<typename T>
void structures::DoublyLinkedList<T>::insert_sorted(const T& data) {
    Node *curr = head;
    std::size_t pos = 0;
    while (curr != NULL && curr->data() < data) {
        curr = curr->next();
        pos += 1;
    }
    return (insert(data, pos));
}

template<typename T>
T structures::DoublyLinkedList<T>::pop(std::size_t index) {
    if (index >= size_) throw std::out_of_range("posição inválida");
    if (index == 0) return pop_front();
    if (index == size_);
    Node * anterior;
    Node *out = head;
    for (std::size_t i = 0; i < index; ++i) {
        anterior = out;
        out = out->next();
    }
    T ret = out->data();
    anterior->next(out->next());
    size_ -= 1;
    delete out;
    return ret;
}

template<typename T>
T structures::DoublyLinkedList<T>::pop_back() {
    if (empty()) {
        throw std::out_of_range("lista vazia");
    } else {
        Node * anterior;
        Node * out = head;
        for (std::size_t i = 0; i < size_-1; ++i) {
            anterior = out;
            out = out->next();
        }
        T ret = out->data();
        anterior->next(nullptr);
        size_ -= 1;
        delete out;
        return ret;
    }
}

template<typename T>
T structures::DoublyLinkedList<T>::pop_front() {
    if (empty()) {
        throw std::out_of_range("lista vazia");
    } else {
        Node *out = head;
        T ret = out->data();
        head = out->next();
        size_-=1;
        delete out;
        return ret;
    }
}

template<typename T>
void structures::DoublyLinkedList<T>::remove(const T& data) {
    pop(find(data));
}

template<typename T>
bool structures::DoublyLinkedList<T>::empty() const {
    return (size_ == 0);
}

template<typename T>
bool structures::DoublyLinkedList<T>::contains(const T& data) const {
    Node *aux = head;
    for (std::size_t i = 0; i < size_; ++i) {
        if (aux->data() == data) {
            return true;
        }
        aux = aux->next();
    }
    return false;
}

template<typename T>
T& structures::DoublyLinkedList<T>::at(std::size_t index) {
    Node *curr = head;
    std::size_t pos = 0;
    if (index > size_) {
        throw std::out_of_range("posição inválida");
    } else {
        while (pos != index) {
            curr = curr->next();
            pos += 1;
        }
        return curr->data();
    }
}

template<typename T>
const T& structures::DoublyLinkedList<T>::at(std::size_t index) const {
    Node *curr = head;
    std::size_t pos = 0;
    if (index > size_) {
        throw std::out_of_range("posição inválida");
    } else {
        while (pos != index) {
            curr = curr->next();
            pos += 1;
        }
        return curr->data();
    }
}
template<typename T>
std::size_t structures::DoublyLinkedList<T>::find(const T& data) const {
    Node *aux = head;
    for (std::size_t i = 0; i < size_; ++i) {
        if (aux->data() == data) {
            return i;
        }
        aux = aux->next();
    }
    return size_;
}

template<typename T>
std::size_t structures::DoublyLinkedList<T>::size() const {
    return size_;
}
