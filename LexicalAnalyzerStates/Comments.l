%option noyywrap

%{
#include <stdio.h>
#include <stdlib.h>
%}

%%



%%

void main(){
	FILE * fp; 
	fopen_s(&fp,"test.txt","r");
	yyin =fp;
	yylex();
}