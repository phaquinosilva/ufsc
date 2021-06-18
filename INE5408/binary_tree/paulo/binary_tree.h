//! Copyright [2019] <Paulo Almeida>

#ifndef STRUCTURES_BINARY_TREE_H
#define STRUCTURES_BINARY_TREE_H

#include <cstdint>
#include <stdexcept>  // C++ exception
#include "array_list.h"

template<typename T>
class ArrayList;

namespace structures {

template<typename T>
//! BinaryTree
class BinaryTree {
 public:
    //! destrutor
    ~BinaryTree();
    //! inserir
    void insert(const T& data);
    //! remover
    void remove(const T& data);
    //! contem
    bool contains(const T& data) const;
    //! vazia
    bool empty() const;
    //! tamanho
    std::size_t size() const;
    //! pre_order
    ArrayList<T> pre_order() const;
    //! in_order
    ArrayList<T> in_order() const;
    //! post_order
    ArrayList<T> post_order() const;

 protected:
    //! Node
    struct Node {
        //! construtor
        explicit Node(const T& data):
            data_{data}
        {}

        //! getter data
        T& data() {
            return data_;
        }

        //! setter data
        void setData(T& data) {
            data_ = data;
        
        T& data() {
            return data_;
        }
        
        void set_data(data_) {
            data = data_;
        }
        }

        //! insert
        void insert(const T& data_);
        //! remove
        bool remove(const T& data_);
        //! contains
        bool contains(const T& data) const;
        //! pre_order
        void pre_order(ArrayList<T>& v) const;
        //! in_order
        void in_order(ArrayList<T>& v) const;
        //! post_order
        void post_order(ArrayList<T>& v) const;
        //! deleta o node
        void deletar() {
            delete this;
        }
        //! destroi os nodes filhos
        void destroy();
        //! troca o ptr do pai pelo passado
        void trocarPtr(Node* ptr);
        //! retorna e remove o maior valor a direita
        T maiorValor();

         private:
        T data_;
        Node* left = nullptr;
        Node* right = nullptr;
        Node* pai = nullptr;
    };

 private:
    Node* root = nullptr;
    std::size_t size_ = 0u;
};

}  // namespace structures

template<typename T>
structures::BinaryTree<T>::~BinaryTree() {
    if (!empty()) {
        //  root->destroy();
        delete root;
        root = nullptr;
        size_ = 0;
    }
}

template<typename T>
void structures::BinaryTree<T>::insert(const T& data) {
    if (empty()) {
        Node* novo = new Node(data);
        if (novo == NULL) {
            throw std::out_of_range("elemento NULL");
        }
        root = novo;
    } else {
        root->insert(data);
    }
    size_++;
}

template<typename T>
void structures::BinaryTree<T>::remove(const T& data) {
    if (empty()) {
        throw std::out_of_range("arvore vazia");
    }
    root->remove(data);
    size_--;
}

template<typename T>
bool structures::BinaryTree<T>::contains(const T& data) const {
    if (empty()) {
        return false;
    }
    return root->contains(data);
}

template<typename T>
bool structures::BinaryTree<T>::empty() const {
    return (size_ == 0);
}

template<typename T>
std::size_t structures::BinaryTree<T>::size() const {
    return size_;
}

template<typename T>
structures::ArrayList<T> structures::BinaryTree<T>::pre_order() const {
    ArrayList<T>* array = new ArrayList<T>(size_);
    root->pre_order(*array);
    return *array;
}

template<typename T>
structures::ArrayList<T> structures::BinaryTree<T>::in_order() const {
    ArrayList<T>* array = new ArrayList<T>(size_);
    root->in_order(*array);
    return *array;
}

template<typename T>
structures::ArrayList<T> structures::BinaryTree<T>::post_order() const {
    ArrayList<T>* array = new ArrayList<T>(size_);
    root->post_order(*array);
    return *array;
}

// -------------------- Node -------------------------------------------

template<typename T>
void structures::BinaryTree<T>::Node::insert(const T& data_) {
    if (data_ < data()) {
        // inserir a esquerda
        if (left != nullptr) {
            left->insert(data_);
        } else {
            // se nao tiver nodo a esq
            Node* novo = new Node(data_);
            if (novo == NULL) {
                throw std::out_of_range("elemento NULL");
            }
            novo->pai = this;
            left = novo;
        }
    } else {
        // inserir a direita
        if (right != nullptr) {
            right->insert(data_);
        } else {
            // se nao tiver nodo a dir
            Node* novo = new Node(data_);
            if (novo == NULL) {
                throw std::out_of_range("elemento NULL");
            }
            novo->pai = this;
            right = novo;
        }
    }
}

template<typename T>
bool structures::BinaryTree<T>::Node::remove(const T& data_) {
    if (data_ == data()) {
        // node sem filhos
        if (right == nullptr && left == nullptr) {
            deletar();
            return true;
        }
        // node com unico filho a esquerda
        if (right == nullptr && left != nullptr) {
            trocarPtr(left);
            deletar();
            return true;
        }
        // node com unico filho a direita
        if (right != nullptr && left == nullptr) {
            trocarPtr(right);
            deletar();
            return true;
        }
        // node com dois filhos
        if (right != nullptr && left != nullptr) {
            T valor = left->maiorValor();
            remove(valor);
            setData(valor);
            return true;
        }
    }
    // procura o node
    if (data_ < data()) {
        // esquerda
        if (left == nullptr) {
            return false;
        }
        return left->remove(data_);
    } else {
        // direita
        if (right == nullptr) {
            return false;
        }
        return right->remove(data_);
    }
    return false;
}

template<typename T>
bool structures::BinaryTree<T>::Node::contains(const T& data) const {
    if (data == data()) {
        return true;
    } else {
        if (data < data()) {
            if (left != nullptr) {
                return left->contains(data);
            }
        } else {
            if (right != nullptr) {
                return right->contains(data);
            }
        }
    }
    return false;
}

template<typename T>
void structures::BinaryTree<T>::Node::pre_order(ArrayList<T>& v) const {
    v.push_back(data_);
    if (left != nullptr) {
        left->pre_order(v);
    }
    if (right != nullptr) {
        right->pre_order(v);
    }
}

template<typename T>
void structures::BinaryTree<T>::Node::in_order(ArrayList<T>& v) const {
    if (left != nullptr) {
        left->in_order(v);
    }
    v.push_back(data_);
    if (right != nullptr) {
        right->in_order(v);
    }
}

template<typename T>
void structures::BinaryTree<T>::Node::post_order(ArrayList<T>& v) const {
    if (left != nullptr) {
        left->post_order(v);
    }
    if (right != nullptr) {
        right->post_order(v);
    }
    v.push_back(data_);
}

template<typename T>
void structures::BinaryTree<T>::Node::trocarPtr(Node* ptr) {
    if (pai != nullptr) {
        // filho a esq
        if (data_ < pai->data()) {
            pai->left = ptr;
        } else {
            pai->right = ptr;
        }
    }
}

template<typename T>
T structures::BinaryTree<T>::Node::maiorValor() {
    if (right == nullptr) {
        return data_;
    }
    return right->maiorValor();
}

template<typename T>
void structures::BinaryTree<T>::Node::destroy() {
    if (left != nullptr) {
        left->destroy();
        delete left;
    }
    if (right != nullptr) {
        right->destroy();
        delete right;
    }
    return;
}

#endif
