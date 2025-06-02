
import Foundation

let usuarios = ["admin": "1234", "user": "abcd"]

print("Digite o usuário:")
guard let usuario = readLine(), !usuario.isEmpty else {
    print("Usuário inválido.")
    exit(0)
}

print("Digite a senha:")
guard let senha = readLine(), !senha.isEmpty else {
    print("Senha inválida.")
    exit(0)
}

if let senhaCorreta = usuarios[usuario], senhaCorreta == senha {
    print("Login bem-sucedido! Bem-vindo, \(usuario).")
} else {
    print("Usuário ou senha incorretos.")
}
