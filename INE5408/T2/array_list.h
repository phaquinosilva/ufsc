// Copyright [2018] <Paulo Almeida>
#ifndef STRUCTURES_ARRAY_LIST_H
#define STRUCTURES_ARRAY_LIST_H

#include <cstdint>
#include <stdexcept>

namespace structures {

template<typename T>
//! Classe Lista
class ArrayList {
 public:
    //! construtor basico
    ArrayList();
    //! contrutor com parametros
    explicit ArrayList(std::size_t max_size);
    //! deletar lista
    ~ArrayList();

    //! limpa a lista
    void clear();
    //! bota valor no fim da lista
    void push_back(const T& data);
    //! bota valor no inicio da lista
    void push_front(const T& data);
    //! insere valor em uma posicao indicada
    void insert(const T& data, std::size_t index);
    //! insere na lista por ordem de tamanho
    void insert_sorted(const T& data);
    //! retorna um elemento de uma posicao
    T pop(std::size_t index);
    //! retorna um elemento do final
    T pop_back();
    //! retorna o primeiro elemento
    T pop_front();
    //! remove um dado
    void remove(const T& data);
    //! retorna se esta cheia
    bool full() const;
    //! retorna se esta vazia
    bool empty() const;
    //! retorna se conter o valor
    bool contains(const T& data) const;
    //! retorna a posicao do valor
    std::size_t find(const T& data) const;
    //! retorna a qtde de elementos
    std::size_t size() const;
    //! retorna o tamanhho maximo da lista
    std::size_t max_size() const;
    //! retorna dado na posição do index
    T& at(std::size_t index);
    //! retorna dado na posição do index. Sobrescreve operador []
    T& operator[](std::size_t index);
    //! versão const da função at.
    //! @see at(std::size_t index)
    const T& at(std::size_t index) const;
    //! versão const da função operator[].
    //! @see operator[](std::size_t index)
    const T& operator[](std::size_t index) const;

 private:
    T* contents;
    std::size_t size_;
    std::size_t max_size_;

    static const auto DEFAULT_MAX = 10u;
};

}   // namespace structures

template<typename T>
structures::ArrayList<T>::ArrayList() {
    max_size_ = DEFAULT_MAX;
    contents = new T[max_size_];
    size_ = 0;
}

template<typename T>
structures::ArrayList<T>::ArrayList(std::size_t max_size) {
    max_size_ = max_size;
    contents = new T[max_size_];
    size_ = 0;
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
void structures::ArrayList<T>::push_back(const T& data) {
    insert(data, size_);
}

template<typename T>
void structures::ArrayList<T>::push_front(const T& data) {
    insert(data, 0);
}

template<typename T>
void structures::ArrayList<T>::insert(const T& data, std::size_t index) {
    if (full()) {
        throw std::out_of_range("lista cheia");
    }  else if (index > size_) {
        throw std::out_of_range("fora da lista");
    } else {
        // percorro o array
        for (std::size_t i = size_-1; i >= index && i < size_ ; i--) {
            // copio o elemento pro proximo
            contents[i+1] = contents[i];
        }
        contents[index] = data;
        size_++;
    }
}

template<typename T>
void structures::ArrayList<T>::insert_sorted(const T& data) {
    if (full()) {
        throw std::out_of_range("lista cheia");
    } else {
        std::size_t i;
        // salvo na ultima posicao caso ele nao encontre nenhum maior
        std::size_t posicao = size_;
        // percorro o array
        for (i = 0; i < size_; i++) {
            if (data < contents[i]) {
                posicao = i;
                break;
            }
        }
        insert(data, posicao);
    }
}

template<typename T>
T structures::ArrayList<T>::pop(std::size_t index) {
    if (empty()) {
        throw std::out_of_range("lista vazia");
    } else if (index > size_-1) {
        throw std::out_of_range("fora da lista");
    } else {
        // salvo o item que ira ser removido
        T item = contents[index];
        // volto todos os elementos depois do item uma posicao
        for (std::size_t i = index; i < size_-1; i++) {
            contents[i] = contents[i+1];
        }
        size_--;
        return item;
    }
    return 0;
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
    std::size_t posicao = find(data);
    pop(posicao);
}

template<typename T>
bool structures::ArrayList<T>::full() const {
    if (size_ == max_size_) {
        return true;
    }
    return false;
}

template<typename T>
bool structures::ArrayList<T>::empty() const {
    if (size_ == 0) {
        return true;
    }
    return false;
}

template<typename T>
bool structures::ArrayList<T>::contains(const T& data) const {
    for (std::size_t i =0; i <size_; i++) {
        if (contents[i] == data) {
            return true;
        }
    }
    return false;
}

template<typename T>
std::size_t structures::ArrayList<T>::find(const T& data) const {
    for (std::size_t i =0; i <size_; i++) {
        if (contents[i] == data) {
            return i;
        }
    }
    return size_;
}

template<typename T>
std::size_t structures::ArrayList<T>::size() const {
    return size_;
}

template<typename T>
std::size_t structures::ArrayList<T>::max_size() const {
    return max_size_;
}

template<typename T>
T& structures::ArrayList<T>::at(std::size_t index) {
    if (index > size_) {
        throw std::out_of_range("fora da lista");
    }
    return contents[index];
}

template<typename T>
T& structures::ArrayList<T>::operator[](std::size_t index) {
    if (index > size_) {
        throw std::out_of_range("fora da lista");
    }
    return contents[index];
}

template<typename T>
const T& structures::ArrayList<T>::at(std::size_t index) const {
    if (index > size_) {
        throw std::out_of_range("fora da lista");
    }
    return contents[index];
}

template<typename T>
const T& structures::ArrayList<T>::operator[](std::size_t index) const {
    if (index > size_) {
        throw std::out_of_range("fora da lista");
    }
    return contents[index];
}

#endif
