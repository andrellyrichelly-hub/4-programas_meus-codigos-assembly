; Programa: Verifica se numero no endereco 50 eh IMPAR
; Resultado: ACC = 1 se IMPAR, ACC = 0 se PAR
; Teste: 8 = PAR, retorna ACC=00
      ORG 00
INICIO: LDA 50   ; Carrega o numero
        AND 01   ; AND com 1
        JZ E_PAR ; Se Zero, eh par
        LDA 01   ; Se nao, carrega 1 = IMPAR
        JMP FIM
E_PAR:  LDA 00   ; Carrega 0 = PAR
FIM:    HLT

      ORG 50
NUM:  DB 08      ; Numero de teste: 8

      END