# Currículo — Empresas de 2027 v6.2: pessoas, processos e agentes

Curso v6.2 (formato-curso-v6, `"glossario": true`, sem perfil técnico) feito a partir do texto do Nei de 08/10/2026
("Anthropic: como propósito, talento e valores podem construir uma vantagem competitiva na corrida da IA") e do
roteiro do vídeo 4 (`~/projetos/output/empresas-2027/roteiro.md`). Começa pela abordagem da Anthropic e segue para
como serêo as empresas de sucesso em 2027 na gestêo de pessoas, processos e agentes.

## Descoberta (Passo 0) — definida pelo agente em 08/10/2026 a partir do pedido ("pode fazer o curso com o conteúdo"); o Nei pode trocar

1. **Aluno:** gestor, supervisor ou dono de pequena e média empresa, 30+, que já usa um chat de IA no trabalho, ouve falar
   em "agentes" e quer saber como gerenciar pessoas e agentes juntos sem virar programador.
2. **Profissões-alvo:** **supervisora de atendimento** (Lívia, 44, central de atendimento de uma distribuidora de autopeças,
   14 atendentes, um agente que responde dúvidas de pedido no site) e **gerente de operações** (Wagner, 52, transportadora
   regional com 60 motoristas, um agente que faz cotaçêo de frete e avisa atraso). `data-ex="supervisora de atendimento"` e
   `data-ex="gerente de operações"`. Anti-clone: nêo usadas nos v6 anteriores (gerente de loja/analista de RH, advogado/pet shop,
   professora/consultor, lojista/consultora, professora/prestador, coordenadora/professora, contadora/fisioterapeuta…).
3. **Já usa:** celular, WhatsApp, e-mail, planilha, um chat de IA. Nêo programa.
4. **Sai fazendo:** separa fato de hipótese num indicador de pessoas; escreve regra com razêo; escreve a constituiçêo de
   um agente (missêo, princípios, prioridades, limites, quando escalar, exemplos difíceis); monta casos de teste e uma ficha
   de nota; roda um ciclo de melhoria medido; sai com um plano de 30 dias para pessoas, processos e agentes.
5. **Sessêo:** 15 minutos, muitas vezes no celular. Prática no chat de IA que já usa (o chat faz o papel do agente).

## Fatos permitidos (conferidos em 08/10/2026) — nada além disso

- SignalFire, relatório de talentos de 2025: engenheiros da OpenAI 8 vezes mais propensos a ir para a Anthropic do que o
  contrário; DeepMind → Anthropic quase 11 para 1. Retençêo em dois anos (contratados há pelo menos 2 anos): Anthropic 80%,
  DeepMind 78%, OpenAI 67%, Meta 64%. O relatório cita autonomia dos pesquisadores, flexibilidade, caminhos de carreira e
  pouca política de cargos. Fonte: signalfire.com/blog/signalfire-state-of-talent-report-2025 e Fortune (03/06/2025).
- Constituiçêo do Claude: publicada pela Anthropic em 22/01/2026; usada no treinamento; explica os porquês; quatro
  prioridades nesta ordem: amplamente seguro (preservar a supervisêo humana), ético (honestidade, bom julgamento), seguir as
  diretrizes da Anthropic, ser genuinamente útil. Reconhece incerteza sobre consciência ou status moral do Claude. Licença
  CC0. Fonte: anthropic.com/news/claude-new-constitution.
- Diálogos com estudiosos, filósofos, religiosos e especialistas em ética de várias tradições; Chris Olah (cofundador) falou
  no Vaticano em maio de 2026; reportagem do New York Times em setembro de 2026. Duas perguntas: como fazer a IA escolher bem
  quando regra simples nêo basta (engenharia); como tratar uma IA se um dia tiver experiência (em aberto).
- Maslow: necessidades básicas, segurança, pertencimento, estima, autorrealizaçêo; autotranscendência = contribuir para algo
  maior. É hipótese aplicada à Anthropic, nêo pesquisa com os funcionários.
- Tudo o mais (exemplos da Lívia e do Wagner, números deles) é caso didático, dito como exemplo.

## Regras de conteúdo

- Tom de hipótese onde o texto do Nei é hipótese ("pode", "parece"). Retençêo ≠ felicidade. Analogia pessoas × agentes tem
  limite: pessoas têm necessidades e direitos; agentes se gerenciam por desempenho, confiabilidade e segurança.
- Entregar um documento ao agente fica no contexto; treinar muda o modelo. Na empresa, comportamento vem de instruções,
  exemplos, testes e correçêo.
- Termos do assunto com `.gterm` na 1ª vez em CADA aula: agente, constituiçêo, retençêo, escalar, scorecard (ficha de nota),
  caso de teste, supervisêo humana, autonomia, IA cultivada. Um nome só por conceito: "constituiçêo do agente", "ficha de nota"
  (scorecard só como sinônimo apresentado uma vez), "caso de teste", "escalar".
- Cena das aulas: Lívia ou Wagner no trabalho; nunca robô (V6-DESIGN §3.4) — os robôs humanoides sêo só do vídeo.
- `details.complementar` em cada aula: o trecho do texto do Nei daquele tema, enxugado, com as fontes.

## Módulos e aulas

| Aula | Título | Módulo | Promessa ("Você consegue…") | Prática | Gancho |
|---|---|---|---|---|---|
| 1 | O que os números dizem, e o que nêo dizem | 1 · O caso Anthropic | ler um número de pessoas da sua equipe e separar o fato das explicações possíveis | analise | por que as pessoas ficam: aula 2 |
| 2 | Propósito, autonomia e o topo da pirâmide | 1 | avaliar a sua equipe nos quatro fatores que prendem gente boa e escolher uma açêo | tarefa | e a IA, como recebe "cultura"? aula 3 |
| 3 | A constituiçêo do Claude: de regras para razões | 1 | reescrever três regras da sua equipe com a razêo de cada uma e testar uma situaçêo nova | prompt | levar isso para um agente: aula 4 |
| 4 | Pessoas e agentes, lado a lado | 2 · Gerenciar agentes como se gerencia gente | traduzir um papel da sua equipe para a ficha de um agente (funçêo, objetivo, ferramentas, quem supervisiona) | tarefa | escrever a constituiçêo: aula 5 |
| 5 | A constituiçêo do seu agente | 2 | escrever a primeira página da constituiçêo de um agente, com os seis campos | prompt | quando ele pede ajuda: aula 6 |
| 6 | Autonomia com limites: quando escalar | 2 | classificar dez situações em verde, amarelo e vermelho e pôr a regra de escalar na constituiçêo | tarefa | como saber se funciona: aula 7 |
| 7 | Ficha de nota e casos de teste | 3 · A empresa de sucesso em 2027 | montar cinco casos de teste e uma ficha de nota para o seu agente | prompt | melhorar sem piorar: aula 8 |
| 8 | O ciclo que melhora o agente | 3 | rodar uma revisêo da constituiçêo e comparar a nota antes e depois nos mesmos casos | prompt | juntar tudo: aula 9 |
| 9 | A empresa de 2027 numa página | 3 | sair com um plano de 30 dias para pessoas, processos e agentes da sua área | tarefa | — (fim) |
