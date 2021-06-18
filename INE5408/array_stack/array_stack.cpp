#include "array_stack.h"
//using namespace structures; nao necessario

template<typename T>
structures::ArrayStack<T>::ArrayStack() {
    ArrayStack(DEFAULT_SIZE);
}

template<typename T>
structures::ArrayStack<T>::ArrayStack(std::size_t max) {
    max_size_ = max;
    contents = new T[max_size_];
    top_ = -1;
}

template<typename T>
structures::ArrayStack<T>::~ArrayStack() {
    delete [] contents;
}

template<typename T>
void structures::ArrayStack<T>::push(const T& data) {
    if (full()) {
        throw std::out_of_range("pilha cheia");
    } else {
        top_ = top_ + 1;
        contents[top_] = data;
    }
}

template<typename T>
T structures::ArrayStack<T>::pop() {
    if (empty()) {
        throw std::out_of_range("pilha vazia");
    } else {
        top_ = top_ - 1;
        return contents[top_ + 1];
    }
}

template<typename T>
T& structures::ArrayStack<T>::top() {
    if (empty()) {
        throw std::out_of_range("pilha vazia");
    } else {
        return contents[top_];
    }
}

template<typename T>
void structures::ArrayStack<T>::clear() {
    top_ = -1;
}

template<typename T>
std::size_t structures::ArrayStack<T>::size() {
    return top_ + 1;
}

template<typename T>
std::size_t structures::ArrayStack<T>::max_size() {
    return max_size_;
}

template<typename T>
bool structures::ArrayStack<T>::empty() {
    /*if (top_ == -1) {
        return true;
    } else {
        return false;
    }*/
    return (top_ == -1);
}

template<typename T>
bool structures::ArrayStack<T>::full() {
    /*if (top_ == max_size_-1) {
        return true;
    } else {
        return false;
    }*/
    return (top_ == max_size_-1);
}