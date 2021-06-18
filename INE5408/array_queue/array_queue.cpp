#include "array_queue.h"

template<typename T>
structures::ArrayQueue<T>::ArrayQueue() {
    ArrayQueue(DEFAULT_SIZE);
}

template<typename T>
structures::ArrayQueue<T>::ArrayQueue(std::size_t max) {
    max_size_ = max;
    size_ = 0;
    first_ = 0;
    last_ = 0;
    contents = new T[max_size_];
}

template<typename T>
structures::ArrayQueue<T>::~ArrayQueue() {
    delete [] contents;
}

template<typename T>
void structures::ArrayQueue<T>::enqueue(const T& data) {
    if (full()) {
        throw std::out_of_range("pilha cheia");
    } else {
        size_ = size_ + 1;
        contents[last_] = data;
        last_ = (last_ + 1)%max_size_;
    }
}

template<typename T>
T structures::ArrayQueue<T>::dequeue() {
    T data = contents[first_];
    if (empty()) {
        throw std::out_of_range("pilha vazia");
    } else {
        first_ = (first_ + 1)%max_size_;
        size_ = size_ - 1;
    }
    return (data);
}

template<typename T>
T& structures::ArrayQueue<T>::back() {
    if (empty()) {
        throw std::out_of_range("pilha cheia");
    } else {
        return contents[last_-1];
    }
}

template<typename T>
void structures::ArrayQueue<T>::clear() {
    size_ = 0;
    first_ = 0;
    last_ = 0;
}

template<typename T>
std::size_t structures::ArrayQueue<T>::size() {
    return size_;
}

template<typename T>
std::size_t structures::ArrayQueue<T>::max_size() {
    return max_size_;
}

template<typename T>
bool structures::ArrayQueue<T>::empty() {
    return (size_ == 0);
}

template<typename T>
bool structures::ArrayQueue<T>::full() {
    return (size_ == max_size_);
}
