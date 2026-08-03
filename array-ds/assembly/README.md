# 🧠 Como Funciona? (Explicação Passo a Passo)

Parâmetros e Registradores:De acordo com a convenção de chamada (ABI), o primeiro argumento (arr) é passado no registrador RDI e o segundo (n) no registrador RSI.RDI age como nosso ponteiro "left".
Cálculo do Ponteiro "Right" (RCX):Para acessar o final do array, precisamos da aritmética de ponteiros: EndereçoBase + (Índice * TamanhoDoTipo).Como um inteiro de 32 bits ocupa 4 bytes, subtraímos 1 do tamanho total e multiplicamos por 4 usando shl rsi, 2 (Shift Left 2 vezes é o mesmo que multiplicar por 4, e é mais rápido que a instrução mul).A instrução lea (Load Effective Address) calcula esse endereço e o armazena em RCX. 

Agora, RCX é o nosso ponteiro "right".O Loop de Troca (Swap):Não podemos mover dados diretamente de memória para memória no x86 (ex: mov [rdi], [rcx] é inválido).

Portanto, carregamos os valores da memória para os registradores de uso geral EAX e EDX (usamos as versões de 32 bits dos registradores RAX/RDX porque nossos inteiros são de 32 bits).
Em seguida, escrevemos os valores cruzados de volta na memória.Avanço dos Ponteiros:Adicionamos 4 a RDI (avançando um inteiro para a frente) e subtraímos 4 de RCX (recuando um inteiro).

ComplexidadeTempo: $\mathcal{O}(N)$ - Lemos e escrevemos a memória para a metade dos elementos do array.Espaço: $\mathcal{O}(1)$ - A reversão é feita de forma estritamente in-place. Apenas alguns registradores de CPU são usados. Nenhum byte adicional de memória RAM foi alocado.