//! Copyright [2019] <Paulo Almeida e Pedro Aquino>

#ifndef STRUCTURES_TRIE_H
#define STRUCTURES_TRIE_H

#define char_a 97
#define qtde_filhos 26

#include <cstdint>
#include <string>
using std::string;
#include <stdexcept>  // C++ exception
#include "array_list.h"

namespace structures {

//! Trie
class Trie {
 public:
    //! construtor
    Trie();
    //! destrutor
    ~Trie();
    //! inserir com tamanho e comprimento
    void insert(const string& data, const unsigned long posicao,
                        const unsigned long comprimento);
    //! remover
    void remove(const string& data);
    //! contem
    bool contains(const string& data) const;
    //! is prefix
    bool is_prefix(const string& data) const;
    //! vazia
    bool empty() const;
    //! tamanho
    std::size_t size() const;
    //! posicao e comprimento
    ArrayList<unsigned long> &getPosComp(const string& data);

 protected:
    //! Node
    struct Node {
        //! construtor
        Node();
        //! construtor
        explicit Node(const char& letra);
        //! insert
        Node* insert(const string& data_);
        //! remove
        bool remove(const string& data_);
        //! contains
        bool contains(const string& data_) const;
        //! coloca posicao e comprimento
        void posComp(const unsigned long posicao_,
                        const unsigned long comprimento_) {
            posicao = posicao_;
            comprimento = comprimento_;
        }
        //! get prefix
        bool get_prefix(const string& data_) const;
        //! is prefix
        bool is_prefix() const {
            return (comprimento != 0);
        }
        //! posicao e comprimento
        bool getPosComp(ArrayList<unsigned long> &array,
                            const string& data_);
        //! destroi os nodes filhos
        void destroy();
        //! limpa os ptrs dos filhos
        void clearPtr();
        //! possui filhos
        bool possuiFilhos();

         private:
            char letra_;
            Node* filhos[qtde_filhos];
            unsigned long posicao = 0;
            //se maior que zero, indica último caracter de uma palavra
            unsigned long comprimento = 0;
    };

 private:
    Node* root = nullptr;
    std::size_t size_ = 0u;
};

}  // namespace structures

structures::Trie::Trie() {
    Node* novo = new Node();
    if (novo == NULL) {
        throw std::out_of_range("elemento NULL");
    }
    root = novo;
    size_ = 0u;
}

structures::Trie::~Trie() {
    if (!empty()) {
        root->destroy();
        root = nullptr;
        size_ = 0u;
    }
}

void structures::Trie::insert(const string& data, const unsigned long posicao,
                    const unsigned long comprimento) {
    if (root != nullptr) {
        Node* ptrUltimo = root->insert(data);
        if (ptrUltimo != nullptr) {
            ptrUltimo->posComp(posicao, comprimento);
            size_++;
        }
    }
}

//! indica que um prefix foi removido
bool removidoAlgo;

void structures::Trie::remove(const string& data) {
    if (empty()) {
        throw std::out_of_range("arvore vazia");
    }
    removidoAlgo = false;
    bool r = root->remove(data);
    if (removidoAlgo) {
        size_--;
    }
}

bool structures::Trie::contains(const string& data) const {
    if (empty()) {
        return false;
    }
    return root->contains(data);
}

bool structures::Trie::is_prefix(const string& data) const {
    if (empty()) {
        return false;
    }
    return root->get_prefix(data);
}

structures::ArrayList<unsigned long> &structures::Trie::getPosComp(
                                                    const string& data) {
    ArrayList<unsigned long>* array = new ArrayList<unsigned long>(2);
    bool temPrefix = root->getPosComp(*array, data);
    if (!temPrefix) {
        array->insert(0, 0);
        array->insert(0, 1);
    }
    return *array;
}

bool structures::Trie::empty() const {
    return (size_ == 0);
}

std::size_t structures::Trie::size() const {
    return size_;
}

// -------------------- Node -------------------------------------------

structures::Trie::Node::Node() {
    clearPtr();
}

structures::Trie::Node::Node(const char& letra) {
    letra_ = letra;
    clearPtr();
}

typename structures::Trie::Node*
                structures::Trie::Node::insert(const string& data_) {
    if (data_.length() > 0) {
        char letra = data_.at(0);
        int filho_n = letra - char_a;
        string resto_data;
        resto_data.assign(data_.begin()+1, data_.end());

        if (filhos[filho_n] == nullptr) {
            Node* novo = new Node(letra);
            if (novo == NULL) {
                throw std::out_of_range("elemento NULL");
            }
            filhos[filho_n] = novo;
            // ultima letra
            if (resto_data.empty()) {
                return novo;
            }
        }
        return filhos[filho_n]->insert(resto_data);
    }
    return this;
}

bool structures::Trie::Node::remove(const string& data_) {
    if (data_.length() > 0) {
        char letra = data_.at(0);
        int filho_n = letra - char_a;
        string resto_data;
        resto_data.assign(data_.begin()+1, data_.end());

        if (filhos[filho_n] == nullptr) {
            return false;
        }
        // possui a proxima letra
        if (!resto_data.empty()) {
            bool podeRemoverFilho = filhos[filho_n]->remove(resto_data);
            // se for um prefixo de outra palavra nao posso remover
            if (is_prefix() || filhos[filho_n]->possuiFilhos()) {
                return false;
            }
            // vejo se posso remover o filho
            if (podeRemoverFilho) {
                // remove o filho e retorna q pode remover o proximo
                delete filhos[filho_n];
                filhos[filho_n] = nullptr;
            }
            return podeRemoverFilho;
        }
        // e a ultima letra
        if (resto_data.empty() && filhos[filho_n]->is_prefix()) {
            if (!filhos[filho_n]->possuiFilhos()) {
                delete filhos[filho_n];
                filhos[filho_n] = nullptr;
                removidoAlgo = true;
                return true;
            }
            return false;
        }
    }
    return false;
}

bool structures::Trie::Node::contains(const string& data_) const {
    if (data_.length() > 0) {
        char letra = data_.at(0);
        int filho_n = letra - char_a;
        string resto_data;
        resto_data.assign(data_.begin()+1, data_.end());

        if (resto_data.empty()) {
            // nao possui a ultima letra
            if (filhos[filho_n] == nullptr) {
                return false;
            }
            // possui a ultima letra e e o prefix
            if (filhos[filho_n]->is_prefix()) {
                return true;
            }
            return false;
        }
        if (filhos[filho_n] == nullptr) {
            return false;
        } else {
            return filhos[filho_n]->contains(resto_data);
        }
    }
    return false;
}

bool structures::Trie::Node::get_prefix(const string& data_) const {
    if (data_.length() > 0) {
        char letra = data_.at(0);
        int filho_n = letra - char_a;
        string resto_data;
        resto_data.assign(data_.begin()+1, data_.end());

        if (resto_data.empty()) {
            // possui a ultima letra e e' o prefix
            if (filhos[filho_n] != nullptr) { //&& filhos[filho_n]->is_prefix()) {
                return true;
            }
            return false;
        }
        if (filhos[filho_n] == nullptr) {
            return false;
        } else {
            return filhos[filho_n]->get_prefix(resto_data);
        }
    }
    return false;
}

bool structures::Trie::Node::getPosComp(ArrayList<unsigned long> &array,
                                    const string& data_) {
    if (data_.length() > 0) {
        char letra = data_.at(0);
        int filho_n = letra - char_a;
        string resto_data;
        resto_data.assign(data_.begin()+1, data_.end());

        if (filhos[filho_n] != nullptr) {
            Node* proxFilho = filhos[filho_n];
            if (resto_data.empty()) {
                // possui a ultima letra e e o prefix
                if (proxFilho != nullptr && proxFilho->is_prefix()) {
                    array.insert(proxFilho->posicao, 0);
                    array.insert(proxFilho->comprimento, 1);
                    return true;
                }
            } else {
                return proxFilho->getPosComp(array, resto_data);
            }
        }
    }
    return false;
}

void structures::Trie::Node::destroy() {
    for (int i = 0; i < qtde_filhos; i++) {
        if (filhos[i] != nullptr) {
            filhos[i]->destroy();
            delete filhos[i];
        }
    }
    return;
}

void structures::Trie::Node::clearPtr() {
    for (int i = 0; i < qtde_filhos; i++) {
        filhos[i] = nullptr;
    }
}

bool structures::Trie::Node::possuiFilhos() {
    for (int i = 0; i < qtde_filhos; i++) {
        if (filhos[i] != nullptr) {
            // std::cout << "fi " << filhos[i]->letra_ << std::endl;
            return true;
        }
    }
    return false;
}

#endif
