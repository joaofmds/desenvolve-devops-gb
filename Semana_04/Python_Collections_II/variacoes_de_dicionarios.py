meu_texto = 'Bem vindo meu nome é João eu gosto muito de nomes e tenho o meu cachorro e gosto muito de cachorro'
meu_texto = meu_texto.lower()

aparicoes = []

for palavra in meu_texto.split():
    ate_agora = aparicoes.get(palavra, 0)
    aparicoes[palavra] = ate_agora + 1


from collections import defaultdict, Counter

aparicoes = defaultdict(int)

for palavra in meu_texto.split():
    ate_agora = aparicoes[palavra]
    aparicoes[palavra] = ate_agora + 1

for palavra in meu_texto.split():
    aparicoes[palavra] += 1

class Conta:
    def __init__(self) -> None:
        print('Criando uma conta')

contas = defaultdict(Conta)
contas[15]

aparicoes = Counter(meu_texto.split())