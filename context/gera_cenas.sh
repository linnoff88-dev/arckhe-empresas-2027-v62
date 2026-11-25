#!/bin/bash
# Cenas das aulas (gerar-cena.py: Codex image_gen; fallback flux). Sem texto, sem robô. Uso: gera_cenas.sh [chave ...]
cd "$(dirname "$0")/.."
G=~/.claude/skills/formato-curso-v6/scripts/gerar-cena.py
declare -A S=(
 [trilha]="Uma supervisora de atendimento de 44 anos e um gerente de operações de 52 anos, brasileiros, conversam numa sala de reuniêo simples diante de um quadro branco com três colunas desenhadas a caneta, sem letras legíveis."
 [aula-1]="Uma supervisora de atendimento de 44 anos, brasileira, numa central de atendimento, olha no notebook um gráfico de barras simples com ar pensativo; ao fundo, atendentes com fones de ouvido."
 [aula-2]="Um gerente de operações de 52 anos, brasileiro, conversa de pé com dois motoristas no pátio de uma transportadora, ouvindo com atençêo, caminhões ao fundo, manhê."
 [aula-3]="Uma supervisora de atendimento de 44 anos, brasileira, escreve à mêo numa folha regras da equipe, ao lado de uma xícara de café, numa mesa de escritório simples."
 [aula-4]="Um gerente de operações de 52 anos, brasileiro, na sala dele na transportadora, compara no monitor duas fichas lado a lado, com um mapa de rotas na parede."
 [aula-5]="Uma supervisora de atendimento de 44 anos, brasileira, digita no notebook uma página de orientações, concentrada, com post-its coloridos na borda da tela."
 [aula-6]="Um gerente de operações de 52 anos, brasileiro, segura o celular e decide algo enquanto um colega aponta para uma prancheta, no balcêo de despacho da transportadora."
 [aula-7]="Uma supervisora de atendimento de 44 anos, brasileira, confere uma lista com marcas de verificaçêo numa prancheta, sentada ao lado de uma atendente que olha a tela."
 [aula-8]="Um gerente de operações de 52 anos, brasileiro, e uma analista de 30 e poucos anos comparam duas folhas impressas sobre a mesa, fim de tarde, luz da janela."
 [aula-9]="Uma supervisora de atendimento de 44 anos e um gerente de operações de 52 anos, brasileiros, colam folhas de planejamento numa parede de escritório, clima de começo de projeto."
)
L=("$@"); [ ${#L[@]} -eq 0 ] && L=("${!S[@]}")
n=0; for k in "${L[@]}"; do (python3 $G assets/img/$k.webp "${S[$k]}" > context/cena-$k.log 2>&1 && echo "$k OK" || echo "$k FALHOU") & n=$((n+1)); [ $((n%3)) -eq 0 ] && wait; done; wait
