'CHDDEASUM File reads the CHDMOD output from File.out and creates
'arrays of bridge, DH, Chronic and total CHD deaths for all years, by age/sex.
'The arrays are saved in File.chb, File.ch1, File.ch2, File.chr, and File.chs.

DECLARE SUB Parse (textline$, NumArgs%, MaxArgs%, Args$())

DIM NumArgs AS INTEGER, MaxArgs AS INTEGER, A$, Arg$(MaxArgs)
DIM BNumArgs AS INTEGER, B$, Bargs$(MaxArgs)
DIM Year(50), x(40, 8, 6), Headings$(10), Range$(6)
DIM dsum(40, 8, 6), w(40, 8, 6), y(40, 8, 6), z(40, 8, 6)

MaxArgs = 20
B$ = COMMAND$
Parse B$, BNumArgs, MaxArgs, Bargs$()
FOR i = 1 TO 6: READ Range$(i): NEXT i
OPEN Bargs$(1) + ".out" FOR INPUT AS #1
Nage = 6
IF VAL(Bargs$(2)) = 6 THEN Nage = 6

FOR i = 1 TO 40
    FOR j = 1 TO 8
        FOR l = 1 TO 6
            dsum(i, j, l) = 0!
        NEXT l
    NEXT j
NEXT i

'HEADINGS
h$ = "CHD Deaths (Bridge)"
h2$ = "Acute CHD Death 11-17"
h3$ = "Acute CHD Death 1-10"
h4$ = "Chronic CHD Death"

'OUTPUT FILES
OutFile1$ = Bargs$(1) + ".chb"
OutFile2$ = Bargs$(1) + ".ch1"
OutFile3$ = Bargs$(1) + ".ch2"
OutFile4$ = Bargs$(1) + ".chr"
OutFile5$ = Bargs$(1) + ".chs"

WHILE NOT EOF(1)
    LINE INPUT #1, A$
    Parse A$, NumArgs, MaxArgs, Arg$()
    IF NumArgs = 1 AND VAL(Arg$(1)) >= 1900 AND VAL(Arg$(1)) <= 2100 THEN
        k = k + 1
        Year(k) = VAL(Arg$(1))
        PRINT Year(k)

        'FIND AND READ DATA FROM 1ST ARRAY
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
        FOR i = 1 TO Nage
            LINE INPUT #1, A$
            Parse A$, NumArgs, MaxArgs, Arg$()
            ncat = NumArgs - 1
            FOR j = 2 TO NumArgs
                w(k, j - 1, i) = VAL(Arg$(j))
                dsum(k, j - 1, i) = dsum(k, j - 1, i) + VAL(Arg$(j))
            NEXT j
        NEXT i

        'FIND AND READ DATA FROM 2ND ARRAY
        WHILE INSTR(A$, h2$) = 0 AND NOT EOF(1) 'Look for heading
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
        FOR i = 1 TO Nage
            LINE INPUT #1, A$
            Parse A$, NumArgs, MaxArgs, Arg$()
            ncat = NumArgs - 1
            FOR j = 2 TO NumArgs
                x(k, j - 1, i) = VAL(Arg$(j))
                dsum(k, j - 1, i) = dsum(k, j - 1, i) + VAL(Arg$(j))
            NEXT j
        NEXT i

        ' FIND AND READ DATA FROM 3RD ARRAY
        WHILE INSTR(A$, h3$) = 0 AND NOT EOF(1) 'Look for heading
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
        FOR i = 1 TO Nage
            LINE INPUT #1, A$
            Parse A$, NumArgs, MaxArgs, Arg$()
            ncat = NumArgs - 1
            FOR j = 2 TO NumArgs
                y(k, j - 1, i) = VAL(Arg$(j))
                dsum(k, j - 1, i) = dsum(k, j - 1, i) + VAL(Arg$(j))
            NEXT j
        NEXT i

        ' FIND AND READ DATA FROM 4TH ARRAY
        WHILE INSTR(A$, h4$) = 0 AND NOT EOF(1) 'Look for heading
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
        FOR i = 1 TO Nage
            LINE INPUT #1, A$
            Parse A$, NumArgs, MaxArgs, Arg$()
            ncat = NumArgs - 1
            FOR j = 2 TO NumArgs
                z(k, j - 1, i) = VAL(Arg$(j))
                dsum(k, j - 1, i) = dsum(k, j - 1, i) + VAL(Arg$(j))
            NEXT j
        NEXT i


    END IF
WEND
CLOSE #1
OPEN OutFile1$ FOR OUTPUT AS #2
PRINT #2, h$
r = (ncat) / 2
PRINT #2, "Year ";
FOR j = 1 TO r
    FOR i = 1 TO Nage
        PRINT #2, USING "   M\   \"; Range$(i);
    NEXT i
    FOR i = 1 TO Nage
        PRINT #2, USING "   F\   \"; Range$(i);
    NEXT i
NEXT j
PRINT #2,
FOR i = 1 TO k
    PRINT #2, USING "####"; Year(i);
    FOR m = 1 TO Nage
        PRINT #2, USING " ########"; w(i, 1, m);
    NEXT m
    FOR m = 1 TO Nage
        PRINT #2, USING " ########"; w(i, 2, m);
    NEXT m
    FOR l = 2 TO r
        FOR m = 1 TO Nage
            PRINT #2, USING "   ###.##"; w(i, 1 + 2 * (l - 1), m);
        NEXT m
        FOR m = 1 TO Nage
            PRINT #2, USING "   ###.##"; w(i, 2 * l, m);
        NEXT m
    NEXT l
    PRINT #2,
NEXT i
CLOSE #2

OPEN OutFile2$ FOR OUTPUT AS #2
PRINT #2, h2$
r = (ncat) / 2
PRINT #2, "Year ";
FOR j = 1 TO r
    FOR i = 1 TO Nage
        PRINT #2, USING "   M\   \"; Range$(i);
    NEXT i
    FOR i = 1 TO Nage
        PRINT #2, USING "   F\   \"; Range$(i);
    NEXT i
NEXT j
PRINT #2,
FOR i = 1 TO k
    PRINT #2, USING "####"; Year(i);
    FOR m = 1 TO Nage
        PRINT #2, USING " ########"; x(i, 1, m);
    NEXT m
    FOR m = 1 TO Nage
        PRINT #2, USING " ########"; x(i, 2, m);
    NEXT m
    FOR l = 2 TO r
        FOR m = 1 TO Nage
            PRINT #2, USING "   ###.##"; x(i, 1 + 2 * (l - 1), m);
        NEXT m
        FOR m = 1 TO Nage
            PRINT #2, USING "   ###.##"; x(i, 2 * l, m);
        NEXT m
    NEXT l
    PRINT #2,
NEXT i
CLOSE #2

OPEN OutFile3$ FOR OUTPUT AS #2
PRINT #2, h3$
r = (ncat) / 2
PRINT #2, "Year ";
FOR j = 1 TO r
    FOR i = 1 TO Nage
        PRINT #2, USING "   M\   \"; Range$(i);
    NEXT i
    FOR i = 1 TO Nage
        PRINT #2, USING "   F\   \"; Range$(i);
    NEXT i
NEXT j
PRINT #2,
FOR i = 1 TO k
    PRINT #2, USING "####"; Year(i);
    FOR m = 1 TO Nage
        PRINT #2, USING " ########"; y(i, 1, m);
    NEXT m
    FOR m = 1 TO Nage
        PRINT #2, USING " ########"; y(i, 2, m);
    NEXT m
    FOR l = 2 TO r
        FOR m = 1 TO Nage
            PRINT #2, USING "   ###.##"; y(i, 1 + 2 * (l - 1), m);
        NEXT m
        FOR m = 1 TO Nage
            PRINT #2, USING "   ###.##"; y(i, 2 * l, m);
        NEXT m
    NEXT l
    PRINT #2,
NEXT i
CLOSE #2

OPEN OutFile4$ FOR OUTPUT AS #2
PRINT #2, h4$
r = (ncat) / 2
PRINT #2, "Year ";
FOR j = 1 TO r
    FOR i = 1 TO Nage
        PRINT #2, USING "   M\   \"; Range$(i);
    NEXT i
    FOR i = 1 TO Nage
        PRINT #2, USING "   F\   \"; Range$(i);
    NEXT i
NEXT j
PRINT #2,
FOR i = 1 TO k
    PRINT #2, USING "####"; Year(i);
    FOR m = 1 TO Nage
        PRINT #2, USING " ########"; z(i, 1, m);
    NEXT m
    FOR m = 1 TO Nage
        PRINT #2, USING " ########"; z(i, 2, m);
    NEXT m
    FOR l = 2 TO r
        FOR m = 1 TO Nage
            PRINT #2, USING "   ###.##"; z(i, 1 + 2 * (l - 1), m);
        NEXT m
        FOR m = 1 TO Nage
            PRINT #2, USING "   ###.##"; z(i, 2 * l, m);
        NEXT m
    NEXT l
    PRINT #2,
NEXT i
CLOSE #2

OPEN OutFile5$ FOR OUTPUT AS #2
PRINT #2, "SUM OF "; h$; " AND "; h2$; " AND "; h3$; " AND "; h4$
r = (ncat) / 2
PRINT #2, "Year ";
'FOR j = 1 TO r - 1
FOR i = 1 TO Nage
    PRINT #2, USING "   M\   \"; Range$(i);
NEXT i
FOR i = 1 TO Nage
    PRINT #2, USING "   F\   \"; Range$(i);
NEXT i
'NEXT j
PRINT #2,
FOR i = 1 TO k
    PRINT #2, USING "####"; Year(i);
    FOR m = 1 TO Nage
        PRINT #2, USING " ########"; dsum(i, 1, m);
    NEXT m
    FOR m = 1 TO Nage
        PRINT #2, USING " ########"; dsum(i, 2, m);
    NEXT m
    '    FOR l = 2 TO r - 1
    '   FOR m = 1 TO Nage
    '  PRINT #2, USING "   ###.##"; dsum(i, 1 + 2 * (l - 1), m);
    ' NEXT m
    'FOR m = 1 TO Nage
    'PRINT #2, USING "   ###.##"; dsum(i, 2 * l, m);
    'NEXT m
    'NEXT l
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

