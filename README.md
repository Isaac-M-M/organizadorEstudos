
# 📚 Organizador de Estudos em Swift

Este projeto é um organizador de estudos criado com a linguagem Swift, pensado para ajudar estudantes a se manterem organizados com suas atividades escolares e prazos. Agora com suporte a **banco de dados local em `.json`**!

Repositório oficial: [Isaac-M-M/organizadorEstudos](https://github.com/Isaac-M-M/organizadorEstudos)

---

## 🎯 Objetivo

Desenvolver um sistema simples em Swift que:
- Cadastre matérias, descrições e prazos.
- Liste todas as atividades em ordem de registro.
- Armazene as informações localmente em um arquivo `atividades.json`.
- Utilize estruturas de decisão, repetição, vetores/matrizes e funções.

---

## 🧠 Conceitos Aplicados

Este projeto une todos os módulos do curso de Programação de Computadores:

| Módulo                      | Conteúdo Aplicado                                |
|----------------------------|--------------------------------------------------|
| UNIDADE I                  | Entrada e saída com `print` e `readLine()`      |
| UNIDADE II                 | Variáveis e tipos de dados (`String`, `Int`)    |
| UNIDADE III                | Estrutura sequencial                            |
| UNIDADE IV                 | Condicionais `if`, `guard` e `switch`           |
| UNIDADE V                  | Repetição com `while`, `for`                    |
| UNIDADE VI                 | Vetores e matrizes com `[Atividade]` (struct)   |

---

## 🧾 Estrutura de Arquivos no Repositório

```
📁 organizadorEstudos/
├── atividades.json                        # Banco de dados com as atividades
├── organizador_estudos_com_json.swift     # Código principal do projeto
├── README.md                              # Documentação do projeto
└── Guia_Completo_Swift_Comentado.pdf      # Guia detalhado do projeto (se incluído)
```

---

## 🧪 Como Executar

1. Instale o [Swift](https://swift.org/download/) se ainda não tiver.
2. Clone o repositório:

```bash
git clone https://github.com/Isaac-M-M/organizadorEstudos.git
cd organizadorEstudos
```

3. Execute o projeto via terminal:

```bash
swift organizador_estudos_com_json.swift
```

---

### 💻 Execução no Programiz (parcial)

Você pode testar partes do código no site [Programiz Swift Online](https://www.programiz.com/swift-programming/online-compiler).

> ⚠️ Como o Programiz não permite leitura/escrita de arquivos, o banco `.json` **não funcionará**, mas o restante da lógica pode ser testado normalmente.

---

## 👥 Equipe

- **Isaac M. M.** — Desenvolvedor e idealizador do projeto  
- **ChatGPT (OpenAI)** — Apoio técnico e geração de documentação

---

## 📌 Prints e Demonstração

A aplicação roda diretamente no terminal, oferecendo uma interface simples em texto com as seguintes opções:

- Cadastrar novas atividades
- Listar atividades existentes
- Armazenar e carregar dados automaticamente

---

## 📄 Licença

Este projeto é distribuído sob a licença MIT. Uso educacional livre.

---

## ✅ Extras

- Exemplo de banco de dados: [`atividades.json`](./atividades.json)
- Guia comentado (PDF): [`Guia_Completo_Swift_Comentado.pdf`](./Guia_Completo_Swift_Comentado.pdf)
