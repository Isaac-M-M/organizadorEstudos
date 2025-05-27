import datetime
import json
import os
import re

ARQUIVO_DADOS = "atividades.json"  # Nome do arquivo onde serão salvas as atividades
atividades = []

# Carrega as atividades salvas (se houver)
def carregar_atividades():
    global atividades
    if os.path.exists(ARQUIVO_DADOS):
        with open(ARQUIVO_DADOS, "r", encoding="utf-8") as f:
            atividades = json.load(f)

# Salva as atividades no arquivo
def salvar_atividades():
    with open(ARQUIVO_DADOS, "w", encoding="utf-8") as f:
        json.dump(atividades, f, ensure_ascii=False, indent=4)

def entrada_nao_vazia(prompt):
    while True:
        entrada = input(prompt).strip()
        if entrada == "":
            print("❌ Este campo não pode ficar vazio. Tente novamente.")
        else:
            return entrada

def entrada_data_valida(prompt):
    while True:
        entrada = input(prompt).strip()
        if not re.match(r'^\d{2}/\d{2}/\d{4}$', entrada):
            print("❌ Formato inválido. Use apenas números e '/' (ex: 25/06/2025).")
            continue
        try:
            datetime.datetime.strptime(entrada, '%d/%m/%Y')
            return entrada
        except ValueError:
            print("❌ Data inválida. Tente novamente com uma data real.")

def adicionar_atividade():
    materia = entrada_nao_vazia("Digite o nome da matéria: ")
    descricao = entrada_nao_vazia("Digite a descrição da atividade: ")
    prazo = entrada_data_valida("Digite a data de entrega (dd/mm/aaaa): ")

    atividades.append({
        'materia': materia,
        'descricao': descricao,
        'prazo': prazo
    })
    salvar_atividades()
    print("✅ Atividade adicionada e salva com sucesso!\n")

def listar_atividades():
    print("\n📋 Atividades cadastradas:")
    hoje = datetime.datetime.today()

    for atv in atividades:
        prazo_dt = datetime.datetime.strptime(atv['prazo'], '%d/%m/%Y')
        dias_restantes = (prazo_dt - hoje).days
        alerta = "⚠️ Prazo próximo!" if dias_restantes <= 3 else ""
        print(f"📚 {atv['materia']} - {atv['descricao']} (Entrega: {atv['prazo']}) {alerta}")
    print()

def menu():
    carregar_atividades()  # Carrega antes de exibir o menu
    while True:
        print("==== Organizador de Estudos ====")
        print("1. Adicionar nova atividade")
        print("2. Listar atividades")
        print("3. Sair")
        opcao = input("Escolha uma opção (1/2/3): ").strip()

        if opcao == "1":
            adicionar_atividade()
        elif opcao == "2":
            listar_atividades()
        elif opcao == "3":
            print("👋 Saindo do sistema. Bons estudos!")
            break
        else:
            print("❌ Opção inválida! Tente novamente.\n")

menu()
