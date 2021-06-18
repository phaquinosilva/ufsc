//! Copyright [2019] <Paulo Almeida e Pedro Aquino>
/**
 * Trabalho de implementação II - INE5408 - Estruturas de Dados
 * @author Paulo Almeida
 * @version 1.0
 */
#include <iostream>
#include <fstream>
#include <string>
using std::string;
#include <stdexcept>  // C++ exception
#include "trie.h"
#include "linked_queue.h"
#include "array_list.h"

using namespace structures;
using namespace std;

//! Definição do tipo palavra_t usado na análise dos dicionários.
struct palavra_t {
    string word_;
    unsigned long posicao_;
    unsigned long comprimento_;
} palavra_s;

LinkedQueue<string>* queueWords;
LinkedQueue<palavra_t>* queuePalavras;

//! Função para elaborar fila de palavras a partir da entrada de dicionário.
/*!
 * @param uma string na forma de arquivo.
 * @return uma fila das palavras contidas no dicionário de entrada.
 */
LinkedQueue<palavra_t>*  encontrarPalavras(string filename);

//! Procedimento para criar a árvore a partir da fila lida no dicionario.
/*!
 * @param um ponteiro para objeto Trie.
 * @param um ponteiro para uma fila de palavras.
 */
void criarTrie(Trie* trie_, LinkedQueue<palavra_t> *queuePalavras_);

//! Procedimento para imprimir dados requeridos pelo problema especificado no trabalho.
/*!
 * @param ponteiro para Trie analisada.
 * @param ponteiro para fila de palavras.
 * @see criarTrie(Trie* trie_, LinkedQueue<palavra_t> *queuePalavras_)
 */
void printarPalavras(Trie* trie_, LinkedQueue<string> *queueWords_);

int main() {


    string filename;
    string word;

    // trie = new Trie();
    Trie* trie = new Trie();

    queueWords = new LinkedQueue<string>();

    cin >> filename;  // entrada

    while (1) {  // leitura das palavras ate' encontrar "0"
        cin >> word;
        if (word.compare("0") == 0) {
            break;
        } else {
            queueWords->enqueue(word);
        }
    }

    queuePalavras = encontrarPalavras(filename);

    criarTrie(trie, queuePalavras);

    printarPalavras(trie, queueWords);

    // ~trie;

    return 0;
}

LinkedQueue<palavra_t>* encontrarPalavras(string filename) {
    LinkedQueue<palavra_t>* queuePalavras_ = new LinkedQueue<palavra_t>();

    string line, word;
    int sizeLine;
    unsigned long posicao = 0;
    palavra_t palavra;

    ifstream myfile (filename);
    if (myfile.is_open()) {
        while (getline(myfile, line)) {
            sizeLine = line.size();
            // pego a word
            word.clear();
            bool ajustarLinha = false;
            for (int i = 0; i< sizeLine; i++) {
                char letra = line.at(i);
                if (i == 0 && letra != '[') {
                    ajustarLinha = true;
                    break;
                }
                if (letra == ']') {
                    break;
                } else {
                    word.push_back(letra);
                }
            }
            if (!ajustarLinha) {
                // removo o '['
                word.erase(0, 1);
                // adiciono ela na queuePalavras_
                palavra.word_ = word;
                palavra.posicao_ = posicao;
                palavra.comprimento_ = sizeLine;
                queuePalavras_->enqueue(palavra);
            }/*  else {
                palavra = queuePalavras_->dequeue();
                palavra.comprimento_ = palavra.comprimento_ + sizeLine;
                queuePalavras_->enqueue(palavra);
            } */
            // aumento o tamanho
            posicao += sizeLine +1;
        }
    }
    return queuePalavras_;
}

/*
    terminar de implementar
*/
void criarTrie(Trie* trie_, LinkedQueue<palavra_t> *queuePalavras_) {
    //adicionar na trie

    int size = queuePalavras_->size();
    for (int i = 0; i < size; i++) {
        palavra_t palavra = queuePalavras_->dequeue();
        // std::cout << palavra.word_ << std::endl;
        // std::cout << palavra.posicao_ << " " << palavra.comprimento_ << std::endl;
        trie_->insert(palavra.word_, palavra.posicao_, palavra.comprimento_);
    }
}

/*
    terminar de implementar
*/
void printarPalavras(Trie* trie_, LinkedQueue<string> *queueWords_) {
    ArrayList<unsigned long> array;
    //procurar na trie
    int size = queueWords_->size();
    for (int i = 0; i < size; i++) {
        string word = queueWords_->dequeue();
        array = trie_->getPosComp(word);

        
        //e' ou nao prefix
        if (array.at(1) != 0) {
            // posicao
            std::cout << array.at(0) << " ";
            // comprimento
            std::cout << array.at(1) << std::endl;
        } else {
            if (trie_->is_prefix(word)) {
                std::cout << "is prefix" << std::endl;
            } else {
                std::cout << "is not prefix" << std::endl;
            }
        }

        // if (array.at(1) == 0) {}

        // std::cout << palavra.word_ << std::endl;
        // std::cout << palavra.posicao_ << " " << palavra.comprimento_ << std::endl;
    }
}
