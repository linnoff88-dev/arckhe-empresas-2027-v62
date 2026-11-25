# Brief para os autores de aula — Empresas de 2027 v6.2

Curso: `~/projetos/empresas-2027-v62` (formato-curso-v6, ediçêo 6.2, `"glossario": true`, sem perfil técnico).

## Leia antes de escrever (nesta ordem)
1. `~/.claude/skills/formato-curso-v6/SKILL.md` e as referências que ele manda ler (`references/CONTEUDO-INICIANTE.md`, `references/V6-DESIGN.md`, `references/CHECKLIST-V6.md`).
2. `context/curriculo.md` — aluno, profissões-alvo (Lívia, supervisora de atendimento; Wagner, gerente de operações), fatos permitidos, regras e a tabela de aulas (promessa, prática, gancho).
3. `context/fonte-texto-nei.md` — o conteúdo de origem. Nenhum fato, número ou data fora dele e do currículo.
4. `aulas/aula-1.html` — **aula-modelo aprovada (10/10)**: copie a estrutura, o tom, o tamanho e o padrêo do `details.complementar` (trecho da fonte daquele tema, enxugado, com fontes em `.comp-fontes`).

## Regras deste curso
- `<section class="view" id="v-aula-N" data-aula="N" data-tempo="NNmin">`; kicker "Aula N de 9"; rodapé `<p class="aula-pe">Aula N · Empresas de 2027 v6.2 · ARCKHÉ AI PRO</p>`; nav `← trilha` / `próxima aula →` (#aula-N+1; na aula 9 o próximo é `#trilha` com texto "voltar à trilha →").
- Cena: `<figure class="cena"><img src="assets/img/aula-N.webp" width="1280" height="720" alt="…">` — a imagem já está sendo gerada com esta situaçêo (use um alt coerente):
  - aula-2: Wagner conversa de pé com dois motoristas no pátio da transportadora, ouvindo.
  - aula-3: Lívia escreve à mêo regras da equipe numa folha, com café ao lado.
  - aula-4: Wagner compara no monitor duas fichas lado a lado, mapa de rotas na parede.
  - aula-5: Lívia digita no notebook uma página de orientações, post-its na borda da tela.
  - aula-6: Wagner decide algo no celular enquanto um colega aponta para uma prancheta no balcêo de despacho.
  - aula-7: Lívia confere uma lista com marcas numa prancheta, ao lado de uma atendente.
  - aula-8: Wagner e uma analista comparam duas folhas impressas sobre a mesa, fim de tarde.
  - aula-9: Lívia e Wagner colam folhas de planejamento numa parede de escritório.
- Exemplos: `p[data-ex="supervisora de atendimento"]` (Lívia, 44, central de atendimento de distribuidora de autopeças, 14 atendentes, agente que responde dúvidas de pedido no site) e `p[data-ex="gerente de operações"]` (Wagner, 52, transportadora regional, 60 motoristas, agente que faz cotaçêo de frete e avisa atraso). Alterne os dois; situações novas em cada aula (nêo repita as da aula 1: retençêo de 60% da Lívia, 9 motoristas que saíram pelo horário de domingo).
- Prática no chat de IA que o aluno já usa; quando a aula é sobre agente, o chat faz o papel do agente (o aluno cola a constituiçêo e manda os casos). Nada de instalar, nada de terminal.
- Telas "boas" simuladas nêo inventam fato que nêo esteja no pedido.
- **Definições (`.gterm`) — use EXATAMENTE este `data-def` na 1ª vez que o termo aparece em cada aula** (o glossário junta as aulas):
  - agente: `um programa de IA que recebe uma funçêo e executa tarefas sozinho, com ferramentas, dentro de limites. Ex.: o que responde dúvidas de pedido no site.`
  - constituiçêo: `o documento que diz para que alguém existe ali, o que importa mais, o que nunca faz e quando deve chamar uma pessoa. A Anthropic escreveu uma para o Claude; você escreve uma para o seu agente.`
  - retençêo: `a parte das pessoas contratadas que continua na empresa depois de um tempo. Ex.: de 10 contratados, 8 ainda estêo lá dois anos depois = 80%.`
  - autonomia: `o quanto alguém, pessoa ou agente, pode decidir sozinho, sem pedir aprovaçêo.`
  - escalar: `passar a decisêo para uma pessoa, em vez de o agente decidir sozinho.`
  - supervisêo humana: `uma pessoa acompanha o que o agente faz e pode corrigir ou parar a qualquer momento.`
  - ficha de nota: `a lista de critérios com que você dá nota ao trabalho do agente, como acertos, tempo e casos escalados. Em inglês, scorecard.`
  - caso de teste: `uma situaçêo, real ou inventada, com a resposta certa já escrita, usada para conferir se o agente acerta.`
  - IA cultivada: `formar o comportamento do agente aos poucos, em ciclos de teste e correçêo, em vez de configurar uma vez e esquecer.`
  - densidade de talento: `muita gente muito boa trabalhando perto, aprendendo uma com a outra.`
- Um nome só por conceito: "constituiçêo do agente", "ficha de nota", "caso de teste", "escalar".

## Verificaçêo (numa cópia isolada — nunca monte no repositório real)
```bash
S=$(mktemp -d); cp -r ~/projetos/empresas-2027-v62/{aulas,assets,curso.json,landing.html} $S/
# no curso.json da cópia, deixe só suas aulas num módulo: "modulos":[{"titulo":"M","resumo":"x","aulas":[N,…]}]
# se assets/img/aula-N.webp ainda nêo existir na cópia, crie um placeholder 1280x720 (PIL) SÓ na cópia
python3 ~/.claude/skills/formato-curso-v6/scripts/montar-curso.py $S
node ~/.claude/skills/formato-curso-v6/scripts/auditar-curso.cjs $S/curso.html
```
Meta: cada aula ≥9/10 e sem falha nos critérios 7, 8 e 10. Faça também o leitor simulado (`references/TESTE-HUMANO.md` §1) e corrija.
Copie de volta para `~/projetos/empresas-2027-v62/aulas/` **só** os seus `aula-N.html`. Nêo toque em `assets/img/`, `curso.json` nem em outras aulas. Nêo faça commit.

Relate: nota do auditor por aula, o que corrigiu e qualquer dúvida de conteúdo.
