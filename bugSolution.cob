```cobol
01  WS-DATA-RECORD.
    05  WS-ID         PIC 9(5).
    05  WS-NAME       PIC X(20).
    05  WS-AMOUNT     PIC 9(7)V99.

01  WS-WORK-AREAS.
    05  WS-TOTAL-AMOUNT PIC 9(9)V99 VALUE 0.  

01  EOF              PIC X VALUE 'N'.

PROCEDURE DIVISION.
    PERFORM UNTIL EOF = 'Y'
        READ DATA-FILE AT END MOVE 'Y' TO EOF
        IF EOF = 'N' THEN
            ADD WS-AMOUNT TO WS-TOTAL-AMOUNT
        END-IF
    END-PERFORM.
    DISPLAY "Total amount:" WS-TOTAL-AMOUNT.
    STOP RUN.
```