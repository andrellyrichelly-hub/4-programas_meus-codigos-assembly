; Programa: Verifica se numero no endereco 50 eh PAR
; Resultado: ACC = 1 se PAR, ACC = 0 se IMPAR
; Teste: 8 = PAR, retorna ACC=01
      ORG 00
INICIO: LDA 50   ; Carrega o numero pra testar
        AND 01   ; Faz AND com 1. Se resultado 0, eh par
        JZ E_PAR ; Se Zero, pula pra E_PAR
        LDA 00   ; Se nao, carrega 0 = IMPAR
        JMP FIM
E_PAR:  LDA 01   ; Carrega 1 = PAR
FIM:    HLT      ; Para o programa

      ORG 50     ; Dados comecam no endereco 50
NUM:  DB 08      ; Numero de teste: 8

      END