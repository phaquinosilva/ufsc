// Copyright [2019] <Pedro Henrique Aquino Silva>

#ifndef STRUCTURES_AVL_TREE
#define STRUCTURES_AVL_TREE

#include <cstdint>
#include <stdexcept>
#include "array_list.h"


namespace structures {
//! Classe AVLTree
template<typename T>
class AVLTree {
public:
    //! construtor padrão
    BinaryTree() = default;
    
    //! destrutor
    ~AVLTree() {
        delete root;
        size_ = 0u;
    }
    
    //! método inserir
    void insert(const T& data) {
        if (empty()) {
            root = new Node(data);
        } else {
            root->insert(data);
        }
        size_++;
    }
    
    //! método remover
    void remove(const T& data) {
        if (!empty()) {
            size_--;
            root->remove(data);
        }
    }
    
    //! método contém
    bool contains(const T& data) const {
        if (!empty()) {
            return root->contains(data);
        }
        return false;
    }
    
    //! método retorna se árvore vazia
    bool empty() const {
        return (size_ == 0);
    }
    
    //! método retorna tamanho
    std::size_t size() const {
        return size_;
    }
    
    //! método retorna lista feita em pre_order
    ArrayList<T> pre_order() const {
        ArrayList<T> v{};
        if (!empty()) {
            root->pre_order(v);
        }
        return v;
    }
    
    //!  método retorna lista feita em in_order
    ArrayList<T> in_order() const {
        ArrayList<T> v{};
        if (!empty()) {
            root->in_order(v);
        }
        return v;
    }
    
    //!  método retorna lista feita em post_order
    ArrayList<T> post_order() const {
        ArrayList<T> v{};
        if (!empty()) {
            root->post_order(v);
        }
        return v;
    }

private:
    //! Definição Node
    struct Node {
        //! construtor padrão
        explicit Node(const T& data) : 
            data{data},
            left{nullptr},
            right{nullptr},
            height{-1}
        {};

        //! método insere
        void insert(const T& data_) {
            Node* node;
            Node* rot_tree;
            if (data_ < this->data) {
                node = new Node(data_);
                
            }
        }
        
        //! método remove
        bool remove(const T& data_);
        
        //! método contém
        bool contains(const T& data_) const;
        
        //! método atualiza altura
        void updateHeight() ;
        
        //! método rotação esquerda
        Node* simpleLeft() ;
        
        //! método rotação direita
        Node* simpleRight() ;
        
        //! método rotação dupla esquerda
        Node* doubleLeft() ;
        
        //! método rotação dupla direita
        Node* doubleRight() ;
        
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
                left->pre_order(v);
            }
            v.push_back(this->data);
            if (this->right != nullptr) {
                right->pre_order(v);
            }
        }

        //! ...
        void post_order(ArrayList<T>& v) const {
            if (this->left != nullptr) {
                left->pre_order(v);
            }
            if (this->right != nullptr) {
                right->pre_order(v);
            }
            v.push_back(this->data);
        }

         private:
            T data;
            int height;
            Node* left;
            Node* right;
    };

    Node* root{nullptr};
    std::size_t size_{0u};
};

}  // namespace structures

#endif