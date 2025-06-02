
import Foundation

// MARK: - Modelo de Atividade
struct Atividade: Codable {
    var materia: String
    var descricao: String
    var prazo: String
}

// MARK: - Variáveis Globais
let caminhoArquivo = FileManager.default.currentDirectoryPath + "/atividades.json"
var atividades: [Atividade] = carregarAtividades()
var continuar = true

// MARK: - Funções de banco (salvar e carregar)
func salvarAtividades(_ atividades: [Atividade]) {
    let encoder = JSONEncoder()
    encoder.outputFormatting = .prettyPrinted
    do {
        let dados = try encoder.encode(atividades)
        try dados.write(to: URL(fileURLWithPath: caminhoArquivo))
    } catch {
        print("Erro ao salvar atividades: \(error)")
    }
}

func carregarAtividades() -> [Atividade] {
    let decoder = JSONDecoder()
    do {
        let dados = try Data(contentsOf: URL(fileURLWithPath: caminhoArquivo))
        let atividades = try decoder.decode([Atividade].self, from: dados)
        return atividades
    } catch {
        print("Nenhum arquivo encontrado ou erro ao carregar, iniciando lista vazia.")
        return []
    }
}

// MARK: - Cadastro de atividade
func cadastrarAtividade() {
    print("Digite a matéria:")
    guard let materia = readLine(), !materia.isEmpty else { print("Campo obrigatório."); return }

    print("Digite a descrição:")
    guard let descricao = readLine(), !descricao.isEmpty else { print("Campo obrigatório."); return }

    print("Digite o prazo (formato dd/mm/aaaa):")
    guard let prazo = readLine(), !prazo.isEmpty else { print("Campo obrigatório."); return }

    let nova = Atividade(materia: materia, descricao: descricao, prazo: prazo)
    atividades.append(nova)
    salvarAtividades(atividades)
    print("Atividade cadastrada com sucesso.")
}

// MARK: - Listar atividades
func listarAtividades() {
    if atividades.isEmpty {
        print("Nenhuma atividade cadastrada.")
    } else {
        for (index, a) in atividades.enumerated() {
            print("📌 \(index + 1). \(a.materia) - \(a.descricao) (prazo: \(a.prazo))")
        }
    }
}

// MARK: - Menu principal
while continuar {
    print("""
\n===== Organizador de Estudos =====
1. Cadastrar nova atividade
2. Listar atividades
3. Sair
Digite a opção:
""")

    let opcao = readLine()

    switch opcao {
    case "1":
        cadastrarAtividade()
    case "2":
        listarAtividades()
    case "3":
        continuar = false
        print("Saindo do programa. Até mais!")
    default:
        print("Opção inválida.")
    }
}
