# Resumo Econômico - Bonus-Hora

**Autor:** Thales Rangel  
**Projeto:** Bonus-Hora — Moeda social baseada em tempo para trocas comunitárias

---

## Visão Geral

O Bonus-Hora é uma moeda social baseada em tempo criada para facilitar a troca de serviços dentro de comunidades.  

A regra fundamental do sistema é:

**1 hora de serviço = 1 token Bonus-Hora**

Isso cria uma relação direta entre o tempo humano e o valor econômico.

---

## Variáveis Principais

- **H** = número de horas de serviço prestadas  
- **BH** = tokens Bonus-Hora gerados  
- **R** = coeficiente de reputação  
- **V** = fator de verificação do serviço  
- **T** = total de tokens em circulação  

---

## Equação de Geração de Tokens

Os tokens são gerados sempre que um serviço verificado é concluído:

$$
BH = H \times V
$$

Onde:

- **BH** = tokens gerados  
- **H** = número de horas de serviço  
- **V** = fator de verificação (0 ≤ V ≤ 1)  

**Exemplo:**  

Um serviço dura 3 horas e é verificado:

$$
BH = 3 \times 1 = 3 \text{ tokens Bonus-Hora}
$$

---

## Ajuste de Reputação

Para aumentar a confiabilidade, introduz-se um coeficiente de reputação:

$$
R = \frac{\text{serviços concluídos}}{\text{total de serviços}}
$$

O valor ajustado dos tokens:

$$
BH_{\text{ajustado}} = BH \times R
$$

**Exemplo:**  

- BH = 4 tokens  
- R = 0,9  

$$
BH_{\text{ajustado}} = 4 \times 0,9 = 3,6 \text{ tokens}
$$

---

## Balanço de Circulação

O total de tokens deve refletir o total de tempo contribuído pela comunidade:

$$
T = \sum H
$$

Onde:

- **T** = total de tokens Bonus-Hora em circulação  
- **H** = total de horas de serviços prestados  

---

## Equação de Troca de Serviços

- Quando um usuário **recebe** um serviço:

$$
Saldo_{\text{usuário}} = Saldo_{\text{usuário}} - BH
$$

- Quando um usuário **fornece** um serviço:

$$
Saldo_{\text{usuário}} = Saldo_{\text{usuário}} + BH
$$

---

## Fator de Governança Comunitária

Um coeficiente de governança pode ser aplicado:

$$
BH_{\text{final}} = BH \times G
$$

Onde:

- **G** = fator de aprovação da governança (0 ≤ G ≤ 1)  

---

## Princípio de Estabilidade Econômica

A economia do Bonus-Hora permanece estável quando:

$$
\text{Total de Tokens} \approx \text{Total de Horas Contribuídas}
$$

$$
T \approx \sum H
$$

---

## Evolução do Modelo a Longo Prazo

Futuras versões do sistema poderão incluir:

- Verificação de identidade descentralizada  
- Governança ponderada pela reputação  
- Aplicação de contratos inteligentes  
- Decisões comunitárias via DAO  

---

**Resumo:**  
O modelo matemático do Bonus-Hora garante que cada token represente de forma transparente e confiável o tempo efetivamente contribuído, incentivando a participação ativa e mantendo o equilíbrio econômico dentro da comunidade.
