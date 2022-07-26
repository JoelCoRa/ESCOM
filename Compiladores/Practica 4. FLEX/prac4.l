tdatos [int|char|float]
variable [a-z|A-Z|_][a-z|A-Z|_|0-9]*
cvalida [\".\"][\"]*
entero [1-9]+[0-9]*
decimal [0-9]+"."[0-9]*
rango [0-9|a-f|A-F][0-9|a-f|A-F]

%%

{tdatos} {printf("Tipo de Dato Valido\n");}
{variable} {printf("Variable Correcta\n");}
{cvalida} {printf("Cadena Valida\n");}
{entero} {printf("Entero Valido\n");}
{decimal} {printf("Decimal Valido\n");}
{rango}"."{rango}"."{rango}"."{rango} {printf("Direccion MAC valida\n");}
