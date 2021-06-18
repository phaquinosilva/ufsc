//! Copyright [2019] <Pedro Aquino>

#ifndef STRUCTURES_BINARY_TREE_H
#define STRUCTURES_BINARY_TREE_H

#include <cstdint>
#include <stdexcept>  // C++ exception
#include "array_list.h"

namespace structures {

//! Classe BinaryTree
template<typename T>
class BinaryTree {
 public:
    //! construtor padrão
    BinaryTree() = default;

    //! destrutor padrão
    ~BinaryTree() {
        delete root;
        size_ = 0u;
    }

    //! método insersão
    void insert(const T& data) {
        if (empty()) {
            root = new Node(data);
        } else {
            root->insert(data);  // metodo Node::insert(data)
        }
        size_++;
    }

    //! método remoção
    void remove(const T& data) {
        if (!empty()) {
            size_--;
            root->remove(data);  // Node::remove(data)
        }
    }

    //! método contém
    bool contains(const T& data) const {
        if (!empty()) {
            return root->contains(data);  // Node::contains(data)
        }
        return false;
    }

    //! método vazio
    bool empty() const {
        return (size_ == 0);
    }

    //! método tamanho
    std::size_t size() const {
        return size_;
    }

    //! método pre_order
    ArrayList<T> pre_order() const {
        ArrayList<T>* v = new ArrayList<T>(size_);
        if (root != NULL) {
            root->pre_order(*v);  // Node::pre_order(v)
        }
        return *v;
    }

    //! método in_order
    ArrayList<T> in_order() const {
        ArrayList<T>* v = new ArrayList<T>(size_);
        if (root != NULL) {
            root->in_order(*v);
        }
        return *v;
    }

    //! método post_order
    ArrayList<T> post_order() const {
        ArrayList<T>* v = new ArrayList<T>(size_);
        if (root != NULL) {
            root->post_order(*v);
        }
        return *v;
    }

 private:
    //! Definição Node
    struct Node {
        //! construtor padrão
        explicit Node(const T& data) :
            data{data},
            left{nullptr},
            right{nullptr}
        {}

        //! método insere
        void insert(const T& data_) {
            Node* node;
            if (data_ < this->data) {
                if (this->left == nullptr) {
                    node = new Node(data_);
                    this->left = node;
                } else {
                    left->insert(data_);
                }
            } else {
                if (this->right == nullptr) {
                    node = new Node(data_);
                    this->right = node;
                } else {
                    right->insert(data_);
                }
            }
        }

        //! método remove
        bool remove(const T& data_) {
            // se dado está no nodo atual
            if (data_ == this->data) {
                // se dado está em nodo com dois filhos
                if ((this->left != nullptr) && (this->right != nullptr)) {
                    Node* node = this->right;
                    while (node->left != nullptr) {
                        node = node->left;
                    }
                    this->data = node->data;
                    return right->remove(this->data);
                } else {
                    // se dado está em nodo com filho à direita
                    if (this->right != nullptr) {
                        this->data = right->data;
                        return right->remove(this->data);
                    // se dado está em nodo com filho à esquerda
                    } else if (this->left != nullptr) {
                        this->data = left->data;
                        return left->remove(this->data);
                    // se dado está em nodo folha (sem filhos)
                    } else {
                        delete this;
                        return true;
                    }
                }
            /* se dado é maior q dado do nodo atual 
            e nodo atual tem filho à direita*/
            } else if ((this->right != nullptr) && (this->data < data_)) {
                return right->remove(data_);
            /* se dado é menor q dado do nodo atual
            e nodo atual tem filho à esquerda*/
            } else if ((this->left != nullptr) && (this->data > data_)) {
                return left->remove(data_);
            }
            // se dado não está no nodo atual, e nodo não tem filhos
            // dado não está na árvore
            return false;
        }

        //! método retorna se dado está na árvore
        bool contains(const T& data_) const {
            if (data_ == this->data) {
                return true;
            } else if (this->right != nullptr && data_ > this->data) {
                return right->contains(data_);
            } else if (this->left != nullptr && data_ < this->data) {
                return left->contains(data_);
            }
            return false;
        }

        //! ...
        void pre_order(ArrayList<T>& v) const {
            v.push_back(this->data);
            if (this->left != nullptr) {
                left->pre_order(v);
            }
            if (this->right != nullptr) {
                right->pre_order(v);
            }
        }

        //! ...
        void in_order(ArrayList<T>& v) const {
            if (this->left != nullptr) {
                left->in_order(v);
            }
            v.push_back(this->data);
            if (this->right != nullptr) {
                right->in_order(v);
            }
        }

        //! ...
        void post_order(ArrayList<T>& v) const {
            if (this->left != nullptr) {
                left->post_order(v);
            }
            if (this->right != nullptr) {
                right->post_order(v);
            }
            v.push_back(this->data);
        }

         private:
            T data;
            Node* left;
            Node* right;
    };

    Node* root{nullptr};
    std::size_t size_{0u};
};

}  // namespace structures

#endif
