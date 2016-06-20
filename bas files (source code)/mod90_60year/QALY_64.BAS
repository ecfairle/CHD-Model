'COSTS_64.BAS reads the CHDMOD output from File.out and creates
'arrays of various costs (DH Inverv, PREV, CHDCST TRT, HCCstBAckground, Stroke Costs)
'The arrays are saved in File.csi, File.csp, File.csh, File.csn, and File.css.

DECLARE SUB Parse (textline$, NumArgs%, MaxArgs%, Args$())

DIM NumArgs AS INTEGER, MaxArgs AS INTEGER, a$, Arg$(MaxArgs)
DIM BNumArgs AS INTEGER, b$, Bargs$(MaxArgs)
DIM MaxYears AS INTEGER
MaxYears = 100
DIM Year(MaxYears)
DIM Headings$(10), Range$(6)
DIM x(MaxYears, 8, 6) AS DOUBLE
DIM d(MaxYears, 8, 6) AS DOUBLE
DIM w(MaxYears, 8, 6) AS DOUBLE
DIM y(MaxYears, 8, 6) AS DOUBLE
DIM z(MaxYears, 8, 6) AS DOUBLE
DIM maxlength(5) AS INTEGER

MaxArgs = 20
b$ = COMMAND$
Parse b$, BNumArgs, MaxArgs, Bargs$()
FOR i = 1 TO 6: READ Range$(i): NEXT i
OPEN Bargs$(1) + ".out" FOR INPUT AS #1
Nage = 6
IF VAL(Bargs$(2)) = 6 THEN Nage = 6


'HEADINGS
h$ = "Total QALY"
h2$ = "Total DH QALY"

'OUTPUT FILES
OutFile1$ = Bargs$(1) + ".qly" '   QALYs
OutFile2$ = Bargs$(1) + ".qld" '   DH QALYs

WHILE NOT EOF(1)
    LINE INPUT #1, a$
    Parse a$, NumArgs, MaxArgs, Arg$()
    'IF INSTR(a$, "2016") > 0 THEN
    'PRINT a$
    'LINE INPUT "xxx", cc$
    'END IF
    IF NumArgs = 1 AND VAL(Arg$(1)) >= 1900 AND VAL(Arg$(1)) <= 2100 THEN
        k = k + 1
        Year(k) = VAL(Arg$(1))
        PRINT Year(k)

        '                                            FIND AND READ DATA FROM 1ST ARRAY
        WHILE INSTR(a$, h$) = 0 AND NOT EOF(1) 'Look for heading
            LINE INPUT #1, a$
        WEND
        IF EOF(1) THEN
            PRINT h$; " heading not found"
            STOP
        END IF
        WHILE INSTR(a$, "age range") = 0 'Look for "age range" & read in headings
            LINE INPUT #1, a$
        WEND
        Parse a$, NumArgs, MaxArgs, Arg$()
        FOR j = 3 TO NumArgs
            Headings$(j - 2) = Arg$(j)
        NEXT j
        FOR i = 1 TO Nage
            LINE INPUT #1, a$
            Parse a$, NumArgs, MaxArgs, Arg$()
            ncat = NumArgs - 1
            FOR j = 2 TO NumArgs
                w(k, j - 1, i) = VAL(Arg$(j))
                l = LEN(Arg$(j)) '                         assume no decimal point
                IF INSTR(Arg$(j), ".") > 0 THEN
                    l = LEN(MID$(Arg$(j), 1, INSTR(Arg$(j), ".") - 1))
                END IF
                IF l > maxlength(1) THEN maxlength(1) = l
                'dsum(k, j - 1, i) = dsum(k, j - 1, i) + VAL(Arg$(j))
            NEXT j
        NEXT i

        '                                                         FIND AND READ DATA FROM 2ND ARRAY
        WHILE INSTR(a$, h2$) = 0 AND NOT EOF(1) 'Look for heading
            LINE INPUT #1, a$
        WEND
        IF EOF(1) THEN
            PRINT "Heading not found"
            STOP
        END IF
        WHILE INSTR(a$, "age range") = 0 'Look for "age range" & read in headings
            LINE INPUT #1, a$
        WEND
        Parse a$, NumArgs, MaxArgs, Arg$()
        FOR j = 3 TO NumArgs
            Headings$(j - 2) = Arg$(j)
        NEXT j
        FOR i = 1 TO Nage
            LINE INPUT #1, a$
            Parse a$, NumArgs, MaxArgs, Arg$()
            ncat = NumArgs - 1
            FOR j = 2 TO NumArgs
                x(k, j - 1, i) = VAL(Arg$(j))
                l = LEN(Arg$(j)) '                         assume no decimal point
                IF INSTR(Arg$(j), ".") > 0 THEN
                    l = LEN(MID$(Arg$(j), 1, INSTR(Arg$(j), ".") - 1))
                END IF
                IF l > maxlength(2) THEN maxlength(2) = l
                'dsum(k, j - 1, i) = dsum(k, j - 1, i) + VAL(Arg$(j))
            NEXT j
        NEXT i



    END IF
WEND
CLOSE #1
OPEN OutFile1$ FOR OUTPUT AS #2
l = maxlength(1)
c$ = " "
FOR j = 1 TO l: c$ = c$ + "#": NEXT j

PRINT #2, h$
r = (ncat) / 2
PRINT #2, "Year";
s = 5
IF l <= s THEN
    FOR j = 1 TO s - l + 1: c$ = c$ + "#": NEXT j
    s = l - 1
END IF
FOR j = 1 TO r
    FOR i = 1 TO Nage
        PRINT #2, USING SPACE$(l - s) + "M\   \"; Range$(i);
    NEXT i
    FOR i = 1 TO Nage
        PRINT #2, USING SPACE$(l - s) + "F\   \"; Range$(i);
    NEXT i
NEXT j
PRINT #2,
FOR i = 1 TO k
    PRINT #2, USING "####"; Year(i);
    FOR M = 1 TO Nage
        PRINT #2, USING c$; w(i, 1, M);
    NEXT M
    FOR M = 1 TO Nage
        PRINT #2, USING c$; w(i, 2, M);
    NEXT M
    FOR l = 2 TO r
        FOR M = 1 TO Nage
            PRINT #2, USING "   ###.##"; w(i, 1 + 2 * (l - 1), M);
        NEXT M
        FOR M = 1 TO Nage
            PRINT #2, USING "   ###.##"; w(i, 2 * l, M);
        NEXT M
    NEXT l
    PRINT #2,
NEXT i
CLOSE #2

OPEN OutFile2$ FOR OUTPUT AS #2
l = maxlength(2)
c$ = " "
FOR j = 1 TO l: c$ = c$ + "#": NEXT j
PRINT #2, h2$
r = (ncat) / 2
PRINT #2, "Year";
s = 5
IF l <= s THEN
    FOR j = 1 TO s - l + 1: c$ = c$ + "#": NEXT j
    s = l - 1
END IF
FOR j = 1 TO r
    FOR i = 1 TO Nage
        PRINT #2, USING SPACE$(l - s) + "M\   \"; Range$(i);
    NEXT i
    FOR i = 1 TO Nage
        PRINT #2, USING SPACE$(l - s) + "F\   \"; Range$(i);
    NEXT i
NEXT j
PRINT #2,
FOR i = 1 TO k
    PRINT #2, USING "####"; Year(i);
    FOR M = 1 TO Nage
        PRINT #2, USING c$; x(i, 1, M);
    NEXT M
    FOR M = 1 TO Nage
        PRINT #2, USING c$; x(i, 2, M);
    NEXT M
    FOR l = 2 TO r
        FOR M = 1 TO Nage
            PRINT #2, USING "   ###.##"; x(i, 1 + 2 * (l - 1), M);
        NEXT M
        FOR M = 1 TO Nage
            PRINT #2, USING "   ###.##"; x(i, 2 * l, M);
        NEXT M
    NEXT l
    PRINT #2,
NEXT i
CLOSE #2


REM

DATA 35-44,45-54,55-64,65-74,75-84,85-94

DEFINT A-Z
SUB Parse (textline$, NumArgs AS INTEGER, MaxArgs AS INTEGER, Args$())
' This routine takes a line of text, c1$, and separates the individual "words"
' (that is characters except spaces, tabs, #'s and commas) into Args$()
'
' Inputs:  textline$ = text to be parsed.  MaxArgs = maximum # of words in the line.
' Outputs: Args$() = array of individual words from c1$.
'          NumArgs = number of words found.

' Usage notes: 1) NumArgs and MaxArgs are integers
'              2) MaxArgs must be specified before calling this subprogram
'              3) Args$() must be defined as a variable length array
'                 [for example: DIM Args$(n)] before calling parse.

' By:  QB4 manual.
' Modified:   David Fairley 1/24/89, 7/12/90

DIM i, l, in, delim$
REDIM Args$(MaxArgs)

in = 0
NumArgs = 0
delim$ = " #,|" + CHR$(9) + CHR$(10)

FOR i = 1 TO LEN(textline$)
    c$ = MID$(textline$, i, 1)
    IF INSTR(delim$, c$) THEN ' If a delimiter, set flag for end of word
        in = 0
    ELSE
        IF NOT in THEN 'Start a new word
            IF NumArgs = MaxArgs THEN EXIT FOR
            NumArgs = NumArgs + 1
            in = -1
        END IF
        Args$(NumArgs) = Args$(NumArgs) + c$
    END IF
NEXT i


END SUB

SUB Parse2 (textline$, NumArgs, MaxArgs, Args$(), SkipList$)

' This routine takes a line of text, c1$, and separates the individual "words"
' (that is characters except spaces, tabs, #'s and commas) into Args$()
'
' Inputs:  textline$ = text to be parsed.  MaxArgs = maximum # of words in the line.
' Outputs: Args$() = array of individual words from c1$.
'          NumArgs = number of words found.

' Usage notes: 1) NumArgs and MaxArgs are integers
'              2) MaxArgs must be specified before calling this subprogram
'              3) Args$() must be defined as a variable length array
'                 [for example: DIM Args$(n)] before calling parse.

' By:  QB4 manual.
' Modified:   David Fairley 1/24/89, 7/12/90

DIM i, l, in, delim$
REDIM Args$(MaxArgs)

in = 0
NumArgs = 0
delim$ = " #," + CHR$(9)
delim$ = SkipList$
FOR i = 1 TO LEN(textline$)
    c$ = MID$(textline$, i, 1)
    IF INSTR(delim$, c$) THEN ' If a delimiter, set flag for end of word
        in = 0
    ELSE
        IF NOT in THEN 'Start a new word
            IF NumArgs = MaxArgs THEN EXIT FOR
            NumArgs = NumArgs + 1
            in = -1
        END IF
        Args$(NumArgs) = Args$(NumArgs) + c$
    END IF
NEXT i

END SUB

