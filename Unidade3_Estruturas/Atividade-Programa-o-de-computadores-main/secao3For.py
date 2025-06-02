# repeticao_for_tabuada.py

# Solicita o número da tabuada
numero = int(input("Digite um número para ver a tabuada: "))

# Laço for para multiplicar de 1 a 10
for i in range(1, 11):
    print(f"{numero} x {i} = {numero * i}")
