# reversing array in Assembly x86 

section .text

; Assinatura equivalente em C: void reverse_array(int* arr, int n);
; Registradores de argumento (System V ABI)7
; RDI = arr (pointeiro base do inicio do array)
; RSI = n   (tamanho do array)


reverse_array:
    ; 1. Verifica se o tamanho do array é menor ou igual a 1
    cmp rsi, 1
    jle .done      ; Se for <= 1, pula para o final (nada  a inverter)

    ; 2. Configura o ponteiro da direita (fim do array)
    ; O ultimo elemento está no índice (n -1)

    dec rsi     ; RSI = n -1
    shl rsi, 2  ; RSI = (n - 1) * 4 (each int has 4 bytes)
    lea rcx, [rdi + rsi]    ; RSX agora contém o endereço de memória do ultimo elemento

    .loop:
    ; 3. Verifica se os ponteiros (esquerdo e direito) se encontraram ou cruzaram

    cmp rdi, rcx ; Se (left >= right), termina o loop
    jge .done

    ; 4 Operação de troca SWAP - usando registradores temporarios
    mov eax, dword [rdi] ; Carraga o inteiro do pointer esquedo em EAX
    mov edx, dword [rcx] ; Carrega o valor da esquerda do endereço da direita

    ; 5 Move os ponteiros (Avança left, recua right)

    add rdi. 4
    sub rcx, 4

    ;6  Volta para o ínicio do loop

    jmp .loop

.done 
    ret
