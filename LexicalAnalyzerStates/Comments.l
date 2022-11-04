%option noyywrap
%x MULTIPLELINECOMMENTS
%{
#include <stdio.h>
#include <stdlib.h>
FILE *fp1;
%}


%%

\/\* { BEGIN MULTIPLELINECOMMENTS; }
<MULTIPLELINECOMMENTS>\*\/ { BEGIN INITIAL; }
<MULTIPLELINECOMMENTS>(.|\n)

<INITIAL>(.|\n) { fprintf(fp1,"%s",yytext) ;} 


%%

void main(){
	FILE * fp; 
	fopen_s(&fp,"test.txt","r");
	fopen_s(&fp1,"output.txt","w");
	yyin =fp;
	yylex();
	fclose(fp);
	fclose(fp1);
}