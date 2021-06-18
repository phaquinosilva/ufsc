// Copyright [2019] <Pedro Henrique Aquino Silva>

#ifndef STRUCTURES_ARRAY_LIST_H
#define STRUCTURES_ARRAY_LIST_H

#include <cstdint>
#include <stdexcept>

namespace structures {

template<typename T>
//! classe ArrayList
class ArrayList {
 public:
    //! construtor padrão
    ArrayList();
    //! construtor com argumento
    explicit ArrayList(std::size_t max_size);
    //! destrutor
    ~ArrayList();

    //! metodo limpa
    void clear();
    //! metodo coloca no fim
    void push_back(const T& data);
    //! metodo coloca no inicio
    void push_front(const T& data);
    //! metodo coloca em uma posição
    void insert(const T& data, std::size_t index);
    //! metodo coloca ordenado
    void insert_sorted(const T& data);
    //! metodo retira e retorna dado em um indice
    T pop(std::size_t index);
    //! metodo retira e retorna dado no fim
    T pop_back();
    //! metodo retira e retorna dado no inicio
    T pop_front();
    //! metodo remove e não retorna dado
    void remove(const T& data);
    //! metodo cheio
    bool full() const;
    //! metodo vazio
    bool empty() const;
    //! metodo contem
    bool contains(const T& data) const;
    //! metodo encontra dado e retorna a posição
    std::size_t find(const T& data) const;
    //! metodo retorna tamanho
    std::size_t size() const;
    //! metado retorna tamanho maximo
    std::size_t max_size() const;
    //! metodo retorna item na posicao
    T& at(std::size_t index);
    //! metodo sobrescreve operador []
    T& operator[](std::size_t index);
    //! metodo const at(std::size_t index)
    const T& at(std::size_t index) const;
    //! metodo const operator[](std::size_t index)
    const T& operator[](std::size_t index) const;

 private:
    T* contents;
    std::size_t size_;
    std::size_t max_size_;

    static const auto DEFAULT_MAX = 10u;
};

}   // namespace structures

#endif

template<typename T>
structures::ArrayList<T>::ArrayList() {
    ArrayList(DEFAULT_MAX);
}

template<typename T>
structures::ArrayList<T>::ArrayList(std::size_t max_size) {
    size_ = 0;
    max_size_ = max_size;
    contents = new T[max_size_];
}

template<typename T>
structures::ArrayList<T>::~ArrayList() {
    delete [] contents;
}

template<typename T>
void structures::ArrayList<T>::clear() {
    size_ = 0;
}

template<typename T>
void structures::ArrayList<T>::insert(const T& data, std::size_t index) {
    if (full()) {
        throw std::out_of_range("lista cheia");
    } else if (index > size_) {
        throw std::out_of_range("posição inválida");
    } else {
        size_ += 1;
        int current = size_-1;
        while (current >= index && current < size_) {
            contents[current] = contents[current-1];
            current -= 1;
        }
        contents[index] = data;
    }
}

template<typename T>
void structures::ArrayList<T>::push_back(const T& data) {
    insert(data, size_);
}

template<typename T>
void structures::ArrayList<T>::push_front(const T& data) {
    insert(data, 0);
}

template<typename T>
void structures::ArrayList<T>::insert_sorted(const T& data) {
    if (full()) {
        throw std::out_of_range("lista cheia");
    } else {
        std::size_t i = 0, pos = size_;
        for (i = 0; i < size_; i++) {
            if (data < contents[i]) {
                pos = i;
                break;
            }
        }
        insert(data, pos);
    }
}

template<typename T>
T structures::ArrayList<T>::pop(std::size_t index) {
    if (empty()) {
        throw std::out_of_range("lista vazia");
    } else if (index > size_-1) {
        throw std::out_of_range("fora da lista");
    } else {
        size_ -= 1;
        T data = contents[index];
        for (int i = index; i < size_; ++i) {
            contents[i] = contents[i+1];
        }
        return data;
    }
}

template<typename T>
T structures::ArrayList<T>::pop_back() {
    return pop(size_-1);
}

template<typename T>
T structures::ArrayList<T>::pop_front() {
    return pop(0);
}

template<typename T>
void structures::ArrayList<T>::remove(const T& data) {
    pop(find(data));
}

template<typename T>
std::size_t structures::ArrayList<T>::find(const T& data) const {
    int curr = 0;
    while (curr <= size_ && data != contents[curr]) {
        curr += 1;
    }
    if (curr > size_) {
        return size_;
    } else {
        return curr;
    }
}

template<typename T>
bool structures::ArrayList<T>::full() const {
    return (size_ == max_size_);
}

template<typename T>
bool structures::ArrayList<T>::empty() const {
    return (size_ == 0);
}

template<typename T>
bool structures::ArrayList<T>::contains(const T& data) const {
    for (int i = 0; i < size_; i++) {
        if (contents[i] == data) {
            return true;
        }
    }
    return false;
}

template<typename T>
std::size_t structures::ArrayList<T>::size() const {
    return (size_);
}

template<typename T>
std::size_t structures::ArrayList<T>::max_size() const {
    return (max_size_);
}
template<typename T>
T& structures::ArrayList<T>::at(std::size_t index) {
    if (index > size_) {
        throw std::out_of_range("não é valido");
    }
    return contents[index];
}
template<typename T>
T& structures::ArrayList<T>::operator[](std::size_t index) {
    if (index > size_) {
        throw std::out_of_range("não é valido");
    }
    return contents[index];
}

template<typename T>
const T& structures::ArrayList<T>::at(std::size_t index) const {
    if (index > size_) {
        throw std::out_of_range("não é valido");
    }
    return contents[index];
}

template<typename T>
const T& structures::ArrayList<T>::operator[](std::size_t index) const {
    if (index > size_) {
        throw std::out_of_range("não é valido");
    }
    return contents[index];
}
