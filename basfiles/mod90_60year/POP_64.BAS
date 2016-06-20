'POP.BAS reads the de and dh(1-10) population data
'and produces a file of the sum (total population) for each
'age-range/gender group and for each year of the simulation.
'The command line is POP FILE and the output is FILE.pop.

DECLARE SUB Parse (textline$, NumArgs%, MaxArgs%, Args$())
DIM AgeCats AS INTEGER
AgeCats = 6
DIM MaxYears AS INTEGER
MaxYears = 100
DIM NumArgs AS INTEGER, MaxArgs AS INTEGER, A$, Arg$(MaxArgs)
DIM BNumArgs AS INTEGER, B$, Bargs$(MaxArgs)
DIM Year(MaxYears), x(MaxYears, 6, 10) AS DOUBLE
DIM y(MaxYears, 6, 10) AS DOUBLE
DIM Headings$(10), Range$(AgeCats)

MaxArgs = 20
B$ = COMMAND$
Parse B$, BNumArgs, MaxArgs, Bargs$()
FOR i = 1 TO AgeCats: READ Range$(i): NEXT i
OPEN Bargs$(1) + ".out" FOR INPUT AS #1

'INPUT "Heading:", h$
h$ = "Total Pop (DE)"
'INPUT "Output file name:", OutFile$
OutFile$ = Bargs$(1) + ".pop"
WHILE NOT EOF(1)
    LINE INPUT #1, A$
    Parse A$, NumArgs, MaxArgs, Arg$()
    IF NumArgs = 1 AND VAL(Arg$(1)) >= 1900 AND VAL(Arg$(1)) <= 2100 THEN
        k = k + 1
        Year(k) = VAL(Arg$(1))
        PRINT Year(k)
        WHILE INSTR(A$, h$) = 0 AND NOT EOF(1) 'Look for heading
            LINE INPUT #1, A$
        WEND
        IF EOF(1) THEN
            PRINT "Heading not found"
            STOP
        END IF
        WHILE INSTR(A$, "age range") = 0 'Look for "age range" & read in headings
            LINE INPUT #1, A$
        WEND
        Parse A$, NumArgs, MaxArgs, Arg$()
        FOR j = 3 TO NumArgs
            Headings$(j - 2) = Arg$(j)
        NEXT j
        FOR i = 1 TO AgeCats
            LINE INPUT #1, A$
            Parse A$, NumArgs, MaxArgs, Arg$()
            ncat = NumArgs - 1
            FOR j = 2 TO NumArgs
                x(k, j - 1, i) = VAL(Arg$(j))
            NEXT j
        NEXT i
    END IF
WEND
CLOSE #1

OPEN Bargs$(1) + ".out" FOR INPUT AS #2

h$ = "Total Pop (DH 1-10)"
k = 0
WHILE NOT EOF(2)
    LINE INPUT #2, A$
    Parse A$, NumArgs, MaxArgs, Arg$()
    IF NumArgs = 1 AND VAL(Arg$(1)) >= 1900 AND VAL(Arg$(1)) <= 2100 THEN
        k = k + 1
        Year(k) = VAL(Arg$(1))
        PRINT Year(k)
        WHILE INSTR(A$, h$) = 0 AND NOT EOF(2) 'Look for heading
            LINE INPUT #2, A$
        WEND
        IF EOF(2) THEN
            PRINT "Heading not found"
            STOP
        END IF
        WHILE INSTR(A$, "age range") = 0 'Look for "age range" & read in headings
            LINE INPUT #2, A$
        WEND
        Parse A$, NumArgs, MaxArgs, Arg$()
        FOR j = 3 TO NumArgs
            Headings$(j - 2) = Arg$(j)
        NEXT j
        FOR i = 1 TO AgeCats
            LINE INPUT #2, A$
            Parse A$, NumArgs, MaxArgs, Arg$()
            ncat = NumArgs - 1
            FOR j = 2 TO NumArgs
                y(k, j - 1, i) = VAL(Arg$(j)) + x(k, j - 1, i)
            NEXT j
        NEXT i
    END IF
WEND
CLOSE #2

OPEN OutFile$ FOR OUTPUT AS #3
PRINT #3, h$
r = (ncat) / 2
PRINT #3, "Year ";
FOR j = 1 TO r
    FOR i = 1 TO AgeCats
        PRINT #3, USING "   M\   \"; Range$(i);
    NEXT i
    FOR i = 1 TO AgeCats
        PRINT #3, USING "   F\   \"; Range$(i);
    NEXT i
NEXT j
PRINT #3,
FOR i = 1 TO k
    PRINT #3, USING "####"; Year(i);
    FOR m = 1 TO AgeCats
        PRINT #3, USING " ##########"; y(i, 1, m);
    NEXT m
    FOR m = 1 TO AgeCats
        PRINT #3, USING " ##########"; y(i, 2, m);
    NEXT m
    FOR l = 2 TO r
        FOR m = 1 TO AgeCats
            PRINT #3, USING "   ###.##"; y(i, 1 + 2 * (l - 1), m);
        NEXT m
        FOR m = 1 TO AgeCats
            PRINT #3, USING "   ###.##"; y(i, 2 * l, m);
        NEXT m
    NEXT l
    PRINT #3,
NEXT i
CLOSE #3
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

