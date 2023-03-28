idades = [15, 87, 65, 56, 32, 49, 37]

for i in range(len(idades)):
    print(i, idades[i])

for idade in enumerate(idades):
    print(idade)

lista = list(range(len(idades)))

print(lista)

lista = list(enumerate(idades))

print(lista)

for i, idade in enumerate(idades):
    print(f'{i} x {idade}')


usuarios = [
    ['Guilherme', 37, 1981],
    ['Daniela', 31, 1987],
    ['Paulo', 39, 1979]
]

for nome, idade, nascimento in usuarios:
    print(nome)

for nome, _, _ in usuarios:
    print(nome)