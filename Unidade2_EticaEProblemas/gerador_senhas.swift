
import Foundation

// Gera uma senha segura com letras, números e símbolos
func gerarSenha(tamanho: Int) -> String {
    let letras = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%&*"
    var senha = ""

    for _ in 0..<tamanho {
        if let char = letras.randomElement() {
            senha.append(char)
        }
    }
    return senha
}

// Exemplo de uso
print("Senha segura gerada: \(gerarSenha(tamanho: 12))")
