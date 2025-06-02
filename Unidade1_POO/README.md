# 📌 Desafio 1 - Unidade 1: Introdução à Lógica  

Este repositório contém um estudo sobre **lógica de programação e programação orientada a objetos (POO) em Swift**, abordando os conceitos fundamentais para iniciantes na área.  

## 📖 Conteúdo  

O material cobre os seguintes tópicos:  
✅ Introdução à lógica de programação  
✅ Fundamentos da programação  
✅ Conceitos de classes e objetos  
✅ Métodos e inicializadores  
✅ Exemplos práticos com Pokémon  

## 📂 Estrutura do Repositório  

📁 `codigo/` → Código-fonte dos exemplos em Swift  
📁 `apresentacao/` → Arquivos da apresentação  
📄 `README.md` → Este documento  

## 🎓 Público-Alvo  

Este material é voltado para estudantes iniciantes em programação que desejam aprender os fundamentos da lógica de programação e POO utilizando a linguagem Swift.  

## 🛠 Exemplos de Código  

Aqui está um exemplo de como criar uma **classe `Pokemon` em Swift**:  

``swift
class Pokemon {
    var nome: String
    var tipo: String
    var hp: Int

    // Inicializador personalizado
    init(nome: String, tipo: String, hp: Int) {
        self.nome = nome
        self.tipo = tipo
        self.hp = hp
    }

    // Método para exibir informações do Pokémon
    func exibirInfo() {
        print("Nome: \(nome), Tipo: \(tipo), HP: \(hp)")
    }
}

// Criando um Pokémon
let pikachu = Pokemon(nome: "Pikachu", tipo: "Elétrico", hp: 200)
pikachu.exibirInfo()

# 📚 Referências


Programiz - Classes e Objetos em Swift
Apple - Documentação Oficial do Swift

# 👥 Equipe
Nome: Isaac Mesquita Moreira RGM: 38211521

# 🎓 Informações Acadêmicas

📌 Curso: Programação de Computadores - ADS
👩‍🏫 Professora: Kadidja Valeria Reginaldo de Oliveira

# ✉️ Autor

📌 Nome: Isaac Mesquita Moreira
📩 E-mail: isaacmesquitam6@gmail.com

# 🔗 Link do Repositório
📌 GitHub: [Poo-em-Swift](https://github.com/Isaac-M-M/Poo-em-Swift.git)
