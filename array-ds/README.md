# 🔄 Algoritmo de Reversão de Arrays (Reverse Array)

Este diretório contém as implementações para o clássico problema de **Reversão de Arrays**, frequentemente encontrado em plataformas de programação competitiva (como HackerRank, LeetCode) e entrevistas técnicas.

## 📖 Sobre o Problema

O objetivo é simples: dado um array ou lista de elementos, você deve inverter a ordem de seus elementos. O elemento no índice `0` troca de lugar com o elemento no índice `N-1`, o índice `1` com o `N-2`, e assim sucessivamente.

**Exemplo:**
- **Entrada:** `A = [1, 4, 3, 2]`
- **Saída:** `[2, 3, 4, 1]`

## 🧠 A Lógica Central: Técnica dos Dois Ponteiros

Embora muitas linguagens ofereçam funções embutidas para inverter listas, a implementação algorítmica fundamental baseia-se na técnica de **Two Pointers (Dois Ponteiros)**:

1. Inicialize um ponteiro `left` no índice inicial (`0`).
2. Inicialize um ponteiro `right` no índice final (`N - 1`).
3. Enquanto `left < right`:
   - Armazene temporariamente o valor de `A[left]`.
   - Substitua `A[left]` por `A[right]`.
   - Substitua `A[right]` pelo valor armazenado temporariamente.
   - Avance `left` (`left++`) e recue `right` (`right--`).

### 📊 Complexidade
- **Tempo:** $\mathcal{O}(N)$ - O array é percorrido pela metade (N/2), mas assintoticamente o tempo de execução cresce linearmente com o tamanho do array.
- **Espaço:** $\mathcal{O}(1)$ (In-Place) ou $\mathcal{O}(N)$ (Cópia). 

---

## 💻 Implementações, Nuances e Melhores Práticas por Linguagem

### ☕ Java
Em Java, a escolha da abordagem depende do tipo de dado (Primitivo vs. Objeto).
- **Nuances:** Arrays primitivos (`int[]`) não possuem um método `.reverse()` nativo na biblioteca padrão que funcione diretamente sem conversão de tipos (boxing/unboxing). 
- **Melhor meio:** Para arrays primitivos, a técnica de dois ponteiros manual é a mais eficiente. Para listas de objetos (`List<Integer>`), use `Collections.reverse(list)`. No Java 21+, listas suportam o método de visualização `list.reversed()`.
- **Dica:** Evite converter primitivos para `List` apenas para usar `Collections.reverse`, pois o *overhead* de memória é significativo devido ao Autoboxing.

### ⚙️ C++
C++ brilha com a biblioteca padrão (STL - Standard Template Library).
- **Nuances:** Em C++, passamos dados geralmente por referência ou via `std::vector`. A STL tem funções prontas altamente otimizadas.
- **Melhor meio:** Utilize `std::reverse(v.begin(), v.end())` importando `<algorithm>`. Ele modifica o vetor *in-place*.
- **Dica:** Se precisar de uma cópia invertida sem alterar a original, você pode usar iteradores reversos para criar um novo vetor: `std::vector<int> rev(v.rbegin(), v.rend());`.

### 🦀 Rust
Rust força você a pensar em mutabilidade e posse (*ownership*).
- **Nuances:** O compilador (Borrow Checker) garantirá que você não crie condições de corrida. Para alterar um array, ele *deve* ser passado como referência mutável (`&mut [T]`).
- **Melhor meio:** Se for *in-place*, use `a.reverse()`, que é um método nativo otimizado em *slices*. Se a assinatura pedir o retorno de um novo `Vec`, clone os dados e inverta a cópia.
- **Dica:** Entenda a diferença entre `&[T]` (fatia de leitura) e `&mut [T]` (fatia de escrita). A função nativa `.reverse()` exige acesso exclusivo (`&mut`).

### 🐍 Python
Python enfatiza o código limpo e "pythônico".
- **Nuances:** As listas em Python são dinâmicas. Temos duas formas primárias: métodos que alteram a lista original (`list.reverse()`) e operações que criam uma nova (`[::-1]` ou `reversed()`).
- **Melhor meio:** Use o *slicing* `[::-1]` se precisar retornar uma nova lista. Ele é implementado em C no back-end (CPython) e é incrivelmente rápido, embora consuma memória extra $O(N)$. Se memória for um problema, use `list.reverse()`.
- **Dica:** O built-in `reversed(lista)` retorna um *iterador* reverso em vez de uma nova lista, o que é perfeito (e $O(1)$ de espaço) para quando você quer apenas percorrer a lista de trás para frente usando um `for`.

### 🌐 TypeScript / JavaScript
O ecossistema JS/TS sofreu mutações recentes em relação a essas funções.
- **Nuances:** Historicamente, o método `array.reverse()` sempre foi destrutivo (altera o array original *in-place*) e também retorna a referência para ele mesmo, o que causava muitos bugs inadvertidos.
- **Melhor meio:** Com a chegada do ECMAScript 2023, foi introduzido o método **`toReversed()`**, que inverte o array e retorna um **novo** array, deixando o original intacto.
- **Dica:** Em bases de código modernas de React/Angular, evite `array.reverse()`, pois a mutação de estado direto quebra os ciclos de renderização. Dê preferência a `array.toReversed()` ou espalhe os itens antes: `[...array].reverse()`.

### 🐧 Bash
Bash não é uma linguagem de uso geral e lidar com arrays pode ser sintaticamente complexo.
- **Nuances:** Arrays no Bash usam indexação iniciada em 0, mas extrair comprimentos e iterar requer uma sintaxe bem específica (ex: `${#arr[@]}`).
- **Melhor meio:** Iterar de trás para frente usando um loop `for` do estilo C e preencher um novo array dinamicamente.
- **Dica:** O Bash pode ser muito lento para loops grandes de processamento de texto. Se for inverter milhares de linhas ou itens vindos do terminal, prefira delegar o trabalho a ferramentas nativas do sistema UNIX como `tac` (o reverso do `cat`) ou usar `awk`/`sed`.

---

## 🎯 Conclusão de Melhores Práticas
Ao resolver este problema no dia a dia corporativo:
1. **Sempre prefira as funções da biblioteca padrão** antes de escrever seu próprio loop. Elas são mais legíveis, bem testadas e quase sempre rodam códigos otimizados em nível de máquina.
2. **Questione a Mutabilidade:** "Eu posso modificar este array original?" Se sim, vá de *in-place*. Se este array representa um estado global ou é compartilhado por diferentes threads (ou componentes de UI), SEMPRE gere um novo array (cópia).