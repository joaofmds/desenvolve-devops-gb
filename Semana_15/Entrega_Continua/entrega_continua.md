# Entrega Contínua: confiabilidade e qualidade na implantação de software

- O que é Entrega Contínua?
	- Diminuindo risco
		- Poucos deploys
		- Manifesto Ágil
		- Deploys frequentes e automatizados
		- Pipeline de deploy
			- Design
			- Build
			- Teste
			- Homologação
			- Release / Operações
			- DevOps - "You built it, you run it"
				- Feedback contínuo
				- Melhoria contínua
				- Aprendizagem contínua
	- Release Antipatterns
		- Antipattern: gerenciamento manual de ambientes
			- Resultado: deploy não confiável
			- Regra: Todas os ambientes são tratados como código, versionado e criados de maneira automatizada
		- Antipattern: deploy manual
			- "Segue as instruções de deploy"
			- "Dev nunca viu Ops? Só um faz dewploy?"
			- Ligações frequentes entre Dev e ops antes de deploy?
			- Deploys longos? Horas ou dias?
			- Roll backs frequentes
				- Resultado: Deploy lento, propício ao erro, não confiável
				- Regra: duas tarefas devem ser executadas manualmente
					- Escolher a versão do release
					- Clicar no deploy button
		- Antipattern: deploy apenas no fim do ciclo
			- Resultado: pouca colaboração, problemas só aparecem no dia da publicação, não confiável nem rápido, achismo
			- Regra: Deploymente faz parte do desenvolvimento desde a primeira iteração, todos definem um delivery team
	- Entrega Contínua vs Deploy Contínuo
- Fundamentos
	- Antes da Entrega Contínua
		- Integração contínua
			- Build automatizado
			- Testes contínuos
			- Gerenciamento de config
	- Princípios
		- Entregar software com alta qualidade e grande valor de maneira eficiente, rápido e confiável
			- Automatize
			- Versione
			- Repita
			- Garanta qualidade
			- Defina "done"
			- Crie delivery team
			- Use melhoria contínua
	- Elementos principais
		- Cultura DevOps
			- Feedback, colaboração, confiança
			- Melhoria e aprendizagem contínua
		- Patterns
			- Deployment pipeline
			- Deploy patterns blue/green, canary, feature toggle)
		- Arquitetura
			- Novas propriedades: testability, deployability
			- SOLID, Services, 12 Factor App
- Deployment Pipeline
	- Etapas do pipeline
		- Build 
			- Unit Tests
		- Testes de aceitação automatizados
		- Homologação
			- UAT
		- Produção
		- Feedback
	- Boas práticas
		- Pipeline é a única forma de deploy
		- Mantém o pipeline o mais rápido possível
		- Build apenas uma vez
		- Build independente do ambiente
		- Ambientes iguais/semelhantes
		- Ambientes efêmeros (temporários)
		- Deploy para ambientes de maneira igual
- Stage de commit e testes de aceitação
	- Commit Stage
		- Unit Tests, build, analysis
		- Não demorar mais que 10 minutos (Feedback rápido)
			- Não testar UI, evitar DB, evitar async
			- Usar repositório do artefato como cache
		- Todo o time é responsável
		- Mantenha o código de qualidade para todos os scripts
		- Mantenha os ambientes atualizados
	- Stage de testes de aceitação
		- Como garantir que a aplicação realmente funcione como um tood?
			- Configurar o ambiente
			- Deploy a aplicação
			- Rodar smoke tests
			- Rodar os testes
		- Boas práticas
			- Equipe define junto as especificações (analista, QA, dev)
			- Responsabilidade do time todo
			- Smoke test no ambiente
			- Mock dos sistemas externos
			- Precisa de bons requisitos
			- Boas práticas no design e implementação de testes
			- Desempenho não é mais importante
- Stage de Homologação
	- Stage de homologação
		- Como garantir que a aplicação funcione como o cliente espera?
			- Testes manuais pelo cliente
				- Consegue usar como esperado?
				- Faz o que pediu?
				- Teve dificuldades?
			- Validar o software
			- Usar desde o início (contínua)
			- Equipe deve participar (feedback)
	- Stage de teste de carga
		- Como garantir que a aplicação realmente aguenta a quantidade de requisições, transações ou usuários?
			- Estabelecer metas claras e saber o baseline
			- Usar ferramentas de monitoração
			- JMeter, Gatling, Webload, Apache Bench, LoadNinja
			- Não precisa rodar a cada build mas idealmente seguem um ciclo constante 
- Estratégias de releases
	- Releases de baixo risco
		- Alpha, Beta, Gold Release
			- Pre-Alpha -> Alpha -> Beta -> Release Candidate -> Release
		- Deploy e pipeline desde a primeira interação, ambientes similares
		- Automação, one-click deploy, smoke test ambiente
		- Arquitetura: testability e deployability
		- The Twelve-Factor App
		- Releases frequentes e contínuas
			- Focus on Reducing batch Size
			- Releases are incremental
		- Desacoplando deploy do release
			- Deploy
				- Ambiente
				- Instalação do software
				- Configuração do software
			- Release 
				- Publicação (rollout)
				- Deixar visível para o cliente
			- Estratégias
				- Blue/Green Deployment
				- Canary Releases
				- Feature Toggles (Feature Flags)
	- Blue-Green Deployment
		- Como evitar que a aplicação fique offline durante o deploy (zero downtime)
		- Como voltar para a versão anterior (rollback) em caso de erro?
	- Feature Toggles e Canary Release
		- 