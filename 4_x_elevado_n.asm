; Programa: Calcula X^N. Ex: 2^3 = 2*2*2
; Teste: 2^3 = 8, retorna ACC=08
      ORG 00
INICIO: LDA 53   ; Carrega N
        SUB 01   ; N = N - 1
        STA 53   ; Salva N. Ex: 2^3 faz 2 loops
        LDA 50   ; ACC = X
        STA 54   ; RESULTADO = X
LOOP_N: LDA 53   ; Carrega N
        JZ FIM   ; Se N = 0, acabou
        LDA 51   ; Carrega X
        STA 55   ; CONT_MULT = X. Vamos multiplicar RES*X
        LDA 00   ; Zera ACC pra nova multiplicacao
LOOP_M: LDA 55   ; Carrega CONT_MULT
        JZ FIM_M ; Se 0, terminou multiplicacao
        LDA 54   ; Carrega RESULTADO
        ADD 50   ; RES = RES + X
        STA 54   ; Salva RES
        LDA 55   ; Carrega CONT_MULT
        SUB 01   ; CONT_MULT--
        STA 55   ; Salva
        JMP LOOP_M ; Volta pro LOOP_M
FIM_M:  LDA 53   ; Carrega N
        SUB 01   ; N--
        STA 53   ; Salva N
        JMP LOOP_N ; Volta pro LOOP_N
FIM:    LDA 54   ; Resultado final no ACC
        HLT

      ORG 50
X:    DB 02      ; Base X = 2
CONT: DB 00      ; Contador multiplicacao
RES:  DB 00      ; Resultado
N:    DB 03      ; Expoente N = 3. 2^3 = 8
MULT: DB 00      ; Contador mult
CONT_N: DB 00    ; Contador N

      ORG 01
UM:   DB 01
      END