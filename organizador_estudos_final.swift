
// Projeto Final: Organizador de Estudos
// Linguagem: Swift
// Este código implementa um sistema simples para cadastro e visualização de atividades escolares,
// abordando todos os módulos da disciplina de Programação de Computadores (I a VI).

import Foundation

// MARK: - Módulo VI: Estrutura de Dados Composta (Vetor e Matriz)
var atividades: [[String]] = []

// MARK: - Módulo II: Tipos de Dados e Operadores
// Função para validar se uma string representa uma data (formato dd/mm/aaaa)
func dataValida(_ entrada: String) -> Bool {
    let padrao = #"^\d{2}/\d{2}/\d{4}$"#
    return entrada.range(of: padrao, options: .regularExpression) != nil
}

// MARK: - Módulo IV: Estrutura de Decisão
func adicionarAtividade() {
    print("Digite a matéria:")
    guard let materia = readLine(), !materia.isEmpty else {
        print("❌ Entrada inválida.")
        return
    }

    print("Digite a descrição:")
    guard let descricao = readLine(), !descricao.isEmpty else {
        print("❌ Entrada inválida.")
        return
    }

    print("Digite a data de entrega (dd/mm/aaaa):")
    guard let prazo = readLine(), dataValida(prazo) else {
        print("❌ Data inválida.")
        return
    }

    let novaAtividade = [materia, descricao, prazo]
    atividades.append(novaAtividade)

    print("✅ Atividade adicionada com sucesso.\n")
}

// MARK: - Módulo V: Estrutura de Repetição (for, while e do while)
func listarAtividades() {
    if atividades.isEmpty {
        print("Nenhuma atividade cadastrada.")
        return
    }

    print("\n📋 Lista de Atividades:")
    for (i, atividade) in atividades.enumerated() {
        // MARK: - Módulo III: Estrutura Sequencial e saída formatada
        print("\(i + 1). \(atividade[0]) - \(atividade[1]) (Entrega: \(atividade[2]))")
    }
}

// Menu com repetição controlada por "while", simulando o comportamento de um "do while"
func menu() {
    var continuar = true
    while continuar {
        print("\n=== ORGANIZADOR DE ESTUDOS ===")
        print("1 - Adicionar nova atividade")
        print("2 - Listar atividades")
        print("3 - Sair")
        print("Escolha uma opção:")

        guard let entrada = readLine(), let opcao = Int(entrada) else {
            print("❌ Opção inválida.")
            continue
        }

        // MARK: - Módulo I: Lógica de Programação e Comando de Controle
        switch opcao {
        case 1:
            adicionarAtividade()
        case 2:
            listarAtividades()
        case 3:
            continuar = false
            print("Encerrando...")
        default:
            print("❌ Opção inválida.")
        }
    }
}

// Início da execução (sequência de chamadas)
menu()
