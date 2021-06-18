//! Copyright [2019] <Pedro Henrique Aquino Silva>
#ifndef STRUCTURES_LINKED_LIST_H
#define STRUCTURES_LINKED_LIST_H

#include <cstdint>
#include <stdexcept>

namespace structures {

//! ...
template<typename T>
class LinkedList {
 public:
    //! ...
    LinkedList();  // construtor padrão
    //! ...
    ~LinkedList();  // destrutor
    //! ...
    void clear();  // limpar lista
    //! ...
    void push_back(const T& data);  // inserir no fim
    //! ...
    void push_front(const T& data);  // inserir no início
    //! ...
    void insert(const T& data, std::size_t index);  // inserir na posição
    //! ...
    void insert_sorted(const T& data);  // inserir em ordem
    //! ...
    T& at(std::size_t index);  // acessar um elemento na posição index
    //! ...
    T pop(std::size_t index);  // retirar da posição
    //! ...
    T pop_back();  // retirar do fim
    //! ...
    T pop_front();  // retirar do início
    //! ...
    void remove(const T& data);  // remover específico
    //! ...
    bool empty() const;  // lista vazia
    //! ...
    bool contains(const T& data) const;  // contém
    //! ...
    std::size_t find(const T& data) const;  // posição do dado
    //! ...
    std::size_t size() const;  // tamanho da lista

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

    Node* end() {  // último nodo da lista
        auto it = head;
        for (auto i = 1u; i < size(); ++i) {
            it = it->next();
        }
        return it;
    }

    Node* head{nullptr};
    std::size_t size_{0u};
};

}  // namespace structures

#endif

template<typename T>
structures::LinkedList<T>::LinkedList() {
    head = nullptr;
    size_ = 0;
}

template<typename T>
structures::LinkedList<T>::~LinkedList() {
    clear();
}

template<typename T>
void structures::LinkedList<T>::clear() {
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
    size_ = 0;
}

template<typename T>
void structures::LinkedList<T>::push_back(const T& data) {
    insert(data, size_);
}

template<typename T>
void structures::LinkedList<T>::push_front(const T& data) {
    Node *novo = new Node(data);
    if (novo == NULL) {
        throw std::out_of_range("lista cheia");
    } else {
        novo->next(head);
        head = novo;
        size_+=1;
    }
}

template<typename T>
void structures::LinkedList<T>::insert(const T& data, std::size_t index) {
    Node * novo, * anterior;
    if (index > size_) {
        throw std::out_of_range("posição não válida");
    } else if (index == 0) {
        return push_front(data);
    } else {
        novo = new Node(data);
        if (novo == NULL) {
            throw std::out_of_range("lista cheia");
        } else {
            anterior = head;
            for (int i = 0; i < index-1; ++i) {
                anterior = anterior->next();
            }
            novo->next(anterior->next());
            anterior->next(novo);
            size_ +=1;
        }
    }
}

template<typename T>
void structures::LinkedList<T>::insert_sorted(const T& data) {
    Node *curr = head;
    std::size_t pos = 0;
    while (curr != NULL && curr->data() < data) {
        curr = curr->next();
        pos += 1;
    }
    return (insert(data, pos));
}

template<typename T>
T& structures::LinkedList<T>::at(std::size_t index) {
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
T structures::LinkedList<T>::pop(std::size_t index) {
    if (index >= size_ || empty()) {
        throw std::out_of_range("fora da lista");
    } else if (index == 0) {
        return pop_front();
    } else if (index == size_) {
        return pop_back();
    } else {
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
}

template<typename T>
T structures::LinkedList<T>::pop_back() {
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
T structures::LinkedList<T>::pop_front() {
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
void structures::LinkedList<T>::remove(const T& data) {
    pop(find(data));
}

template<typename T>
bool structures::LinkedList<T>::empty() const {
    return (size_ == 0);
}

template<typename T>
bool structures::LinkedList<T>::contains(const T& data) const {
    Node *curr = head;
    for (std::size_t i = 0; i < size_; ++i) {
        if (curr->data() == data) {
            return true;
        }
        curr = curr->next();
    }
    return false;
}

template<typename T>
std::size_t structures::LinkedList<T>::find(const T& data) const {
    Node *curr = head;
    for (std::size_t i = 0; i < size_; ++i) {
        if (curr->data() == data) {
            return i;
        }
        curr = curr->next();
    }
    return size_;
}

template<typename T>
std::size_t structures::LinkedList<T>::size() const {
    return size_;
}
