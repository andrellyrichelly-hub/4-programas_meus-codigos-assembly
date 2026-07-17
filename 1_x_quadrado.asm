; Programa: X^2 usando somas repetidas
; Teste: 3^2 = 9, retorna ACC=09
      ORG 00
INICIO: LDA 00   ; ACC = 0. Vai guardar o resultado
        STA 52   ; RESULTADO = 0
        LDA 50   ; Carrega X
        STA 51   ; CONTADOR = X
LOOP:   LDA 51   ; Carrega CONTADOR
        JZ FIM   ; Se CONTADOR = 0, acabou
        LDA 52   ; Carrega RESULTADO
        ADD 50   ; RESULTADO = RESULTADO + X
        STA 52   ; Salva RESULTADO
        LDA 51   ; Carrega CONTADOR
        SUB 01   ; CONTADOR = CONTADOR - 1
        STA 51   ; Salva CONTADOR
        JMP LOOP ; Volta pro LOOP
FIM:    LDA 52   ; Carrega resultado final no ACC
        HLT

      ORG 50
X:    DB 03      ; X = 3
CONT: DB 00      ; Contador
RES:  DB 00      ; Resultado

      ORG 01
UM:   DB 01      ; Constante 1
      END