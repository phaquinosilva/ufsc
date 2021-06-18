package exercicios;

import java.util.Scanner;

public class Ex24 {
    public static void main(String[] args) {
        int dia = new Scanner(System.in).nextInt();
        int mes, diaMes, diaSemana;
        String[] nomeMes = {
            "", "janeiro", "fevereiro", "março", "abril", "maio", "junho", "julho", "agosto",
            "setembro", "outubro", "novembro", "dezembro"
        };
        String[] nomeSemana = {
            "segunda", "terca", "quarta", "quinta", "sexta", "sabado", "domingo"
        };

        //encontra o mes  e o dia do mes;
        if (dia <= 31) {
            mes = 1;
            diaMes = dia;
        } else if (dia > 31 && dia <= 59) {
            mes = 2;
            diaMes = dia - 31;
        } else if (dia > 59 && dia <= 90) {
            mes = 3;
            diaMes = dia - 59;
        } else if (dia > 90 && dia <= 120) {
            mes = 4;
            diaMes = dia - 90;
        } else if (dia > 120 && dia <= 151) {
            mes = 5;
            diaMes = dia - 120;
        } else if (dia > 151 && dia <= 181) {
            mes = 6;
            diaMes = dia - 151;
        } else if (dia > 181 && dia <= 212) {
            mes = 7;
            diaMes = dia - 181;
        } else if (dia > 212 && dia <= 243) {
            mes = 8;
            diaMes = dia - 212;
        } else if (dia > 243 && dia <= 273) {
            mes = 9;
            diaMes = dia - 243;
        } else if (dia > 273 && dia <= 304) {
            mes = 10;
            diaMes = dia - 273;
        } else if (dia > 304 && dia <= 334) {
            mes = 11;
            diaMes = dia - 304;
        } else {
            mes = 12;
            diaMes = dia - 334;
        }

        //encontra o dia da semana
        if (mes == 1) {
            diaSemana = (dia+2)%7;             
        } else if (mes == 2) {
            diaSemana = (dia+2)%7;             
        } else if (mes == 3) {
            diaSemana = (dia+2)%7;             
        } else if (mes == 4) {
            diaSemana = (dia+2)%7;             
        } else if (mes == 5) {
            diaSemana = (dia+2)%7;
        } else if (mes == 6) {
            diaSemana = (dia+2)%7;
        } else if (mes == 7) {
            diaSemana = (dia+2)%7;
        } else if (mes == 8) {
            diaSemana = (dia+2)%7;
        } else if (mes == 9) {
            diaSemana = (dia+2)%7;
        } else if (mes == 10) {
            diaSemana = (dia+2)%7;     
        } else if (mes == 11) {
            diaSemana = (dia+2)%7;
        } else {
            diaSemana = (dia+2)%7;
        }
        
        System.out.printf("%s, %d de %s", nomeSemana[diaSemana], diaMes, nomeMes[mes]);

    }
}
