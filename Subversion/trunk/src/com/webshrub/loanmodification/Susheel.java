package com.webshrub.loanmodification;

import java.math.BigDecimal;
public class Susheel {
    public static void main(String[]args){
        String sus = " s u s h e e e l ";
        String s1 = "101";
        String s2 = "101";
        String s3 = "101";
        Double d1 = 2.0;
        Double d2 = 2.0;

        BigDecimal big1 = BigDecimal.valueOf(Double.parseDouble(s1));
        BigDecimal big2 = BigDecimal.valueOf(Double.parseDouble(s2));
        BigDecimal big3 = BigDecimal.valueOf(Double.parseDouble(s3));
        BigDecimal sumBD = big1.add(big2).add(big3);
//        int convertVal = Integer.valueOf(sumBD.intValue());
        System.out.print(sumBD);
        System.out.print(sus);
        System.out.print(d1+d2);
    }
}
