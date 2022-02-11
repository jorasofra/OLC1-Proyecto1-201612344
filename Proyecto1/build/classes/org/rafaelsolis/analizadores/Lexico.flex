/*
 * Analizador Léxico del Proyecto 1 
 * del Curso Organización y Compiladores 1
 * Primer Semestre 2022
 * Sección B
 * José Rafael Solis Franco
 * 201612344
**/

package org.rafaelsolis.analizadores;
import java_cup.runtime.Symbol;

%%
%class Lexico
%public
%line
%char
%cup
%unicode
%ignorecase

%init{
    yyline=1;
    yychar=1;
%init}

BLANCOS=[ \r\t]+

ID=[a-zA-Z]+["_"|(D)|a-zA-Z]*
ASIGNACION="->"
COMENT_MLINEA="<!""!"*([^!>]|[^!]">"|"!"[^>])*"!"*"!>"
COMENT_ULINEA=("//".*\r\n)|("//".*\n)|("//".*\r)
CADENA_COMILLAS=["]([^\"\n]|(\\\"))*["]
CONJUNTO=[a-zA-Z("~")a-zA-Z]|[0-9("~")0-9]|[a-zA-Z(","a-zA-Z)*]|[0-9(","0-9)*]|[!-&("~")!-&]|[!-&(","!-&)*]
SEPARADOR="%%"
%%

"conj" { return new Symbol(sym.RCONJ,yyline,yychar,yytext()); }

";" { return new Symbol(sym.PYCOMA,yyline,yychar,yytext()); }
":" { return new Symbol(sym.DPUNTOS,yyline,yychar,yytext()); }
"{" { return new Symbol(sym.LLAVEA,yyline,yychar,yytext()); }
"}" { return new Symbol(sym.LLAVEC,yyline,yychar,yytext()); }
"." { return new Symbol(sym.CONCATENACION,yyline,yychar,yytext()); }
"|" { return new Symbol(sym.DISYUNCION,yyline,yychar,yytext()); }
"*" { return new Symbol(sym.CKLEENE,yyline,yychar,yytext()); }
"+" { return new Symbol(sym.CPOSITIVA,yyline,yychar,yytext()); }
"?" { return new Symbol(sym.CANULABLE,yyline,yychar,yytext()); }

\n {yychar=1;}

{BLANCOS} {}

{ID} {return new Symbol(sym.ID,yyline,yychar,yytext());}
{ASIGNACION} {return new Symbol(sym.ASIGNACION,yyline,yychar,yytext());}
{CONJUNTO} {return new Symbol(sym.CONJUNTO,yyline,yychar,yytext());}
{SEPARADOR} {return new Symbol(sym.SEPARADOR,yyline,yychar,yytext());}

{COMENT_MLINEA} {return new Symbol(sym.COMENT_MLINEA,yyline,yychar,yytext());}
{COMENT_ULINEA} {return new Symbol(sym.COMENT_ULINEA,yyline,yychar,yytext());}
{CADENA_COMILLAS} {return new Symbol(sym.CADENA_COMILLAS,yyline,yychar,yytext());}


. {
    System.out.println("Este es un error lexico: " + yytext() + 
    ", en la linea " + yyline + ", en la columna: " + yychar);
}

