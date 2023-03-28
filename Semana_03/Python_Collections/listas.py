idades = [39, 30, 27, 18]

len(idades)

idades.append(15)

for idade in idades:
    print(idade)

idades.append(27)
idades.remove(27)

28 in idades

if 15 in idades:
    idades.remove(15)

idades.insert(0, 20)

idades.append([27, 19])

for elemento in idades:
    print(f'Recebi o elemento {elemento}')

idades = [20, 39, 18]
idades.extend([27, 19])

for idade in idades:
    print(idade + 1)

idades_no_ano_que_vem = []
for idade in idades:
    idades_no_ano_que_vem.append(idade + 1)

idades_no_ano_que_vem = [(idade + 1) for idade in idades]

[idade for idade in idades if idade > 21]

def proximo_ano(idade):
    return idade + 1

idades_no_ano_que_vem = [proximo_ano(idade) for idade in idades]

def faz_processamento_de_visualizacao(lista):
    print(len(lista))
    lista.append(13)

idades = [16, 21, 29, 56, 43]
faz_processamento_de_visualizacao(idades)

def faz_processamento_de_visualizacao(lista = None):
    if lista == None:
        lista = list()
    print(len(lista))
    lista.append(13)