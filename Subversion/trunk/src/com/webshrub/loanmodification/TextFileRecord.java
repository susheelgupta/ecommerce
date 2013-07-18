package com.webshrub.loanmodification;

import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: Ahsan.Javed
 * Date: 6/7/13
 * Time: 10:51 PM
 */
class TextFileRecord {
    public String[] tokens;
    public int currentTokenPosition;
    public String representativePhoneNumber;
    public String representativeName;
    public String creditCardNumber;
    public String insuranceAmount;
    public String loanAmount;
    public String premiumAmount;
    public String totalAmount;
    public String dateOfBirth;
    public String customerName;

    public String getRepresentativePhoneNumber() {
        currentTokenPosition = tokens.length - 1;
        representativePhoneNumber = tokens[currentTokenPosition].trim();
        return representativePhoneNumber.replaceAll("-", "").trim();
    }

    public String getRepresentativeName(int length) {
        currentTokenPosition = currentTokenPosition - 1;
        int tokenStopPosition = currentTokenPosition - length;
        List<String> representativeNames = new ArrayList<String>(length);
        for (; currentTokenPosition > tokenStopPosition; currentTokenPosition--) {
            representativeNames.add(tokens[currentTokenPosition]);
        }
        StringBuilder representativeNameBuilder = new StringBuilder();
        for (int index = length - 1; index >= 0; index--) {
            representativeNameBuilder.append(representativeNames.get(index)).append(" ");
        }
        representativeName = representativeNameBuilder.toString().toUpperCase().trim();
        return representativeName;
    }

    public String getRepresentativeCode() {
        StringBuilder representativeCodeBuilder = new StringBuilder();
        char firstChar = representativeName.charAt(0);
        String representativePhoneNumber = this.representativePhoneNumber.replaceAll("-", "");
        char lastChar = representativeName.charAt(representativeName.length() - 1);
        representativeCodeBuilder.append(firstChar).append("-").append(representativePhoneNumber).append("-").append(lastChar);
        return representativeCodeBuilder.toString();
    }

    public String getRemarks() {
        return tokens[currentTokenPosition].toUpperCase().trim();
    }

    public String getCreditCardNumber() {
        currentTokenPosition = currentTokenPosition - 1;
        Double creditCardNumberDouble = Double.parseDouble(tokens[currentTokenPosition].trim());
        creditCardNumber = BigDecimal.valueOf(creditCardNumberDouble).toPlainString();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(creditCardNumber.substring(0, 4)).append("-").append(creditCardNumber.substring(4, 8)).append("-").append(creditCardNumber.substring(8, 12)).append("-").append(creditCardNumber.substring(12));
        return stringBuilder.toString().trim();
    }

    public String getCVVNumber() {
        return creditCardNumber.substring(creditCardNumber.length() - 3);
    }

    public String getInsuranceAmount() {
        currentTokenPosition = currentTokenPosition - 1;
        insuranceAmount = tokens[currentTokenPosition];
        return tokens[currentTokenPosition] + ".01";
    }

    public String getLoanAmount() {
        currentTokenPosition = currentTokenPosition - 1;
        loanAmount = tokens[currentTokenPosition];
        return tokens[currentTokenPosition] + ".01";
    }

    public String getPremiumAmount() {
        currentTokenPosition = currentTokenPosition - 1;
        premiumAmount = tokens[currentTokenPosition];
        return tokens[currentTokenPosition] + ".01";
    }

    public String getTotalAmount() {
        BigDecimal insuranceAmountBD = BigDecimal.valueOf(Double.parseDouble(insuranceAmount));
        BigDecimal loanAmountBD = BigDecimal.valueOf(Double.parseDouble(loanAmount));
        BigDecimal totalAmountBD = insuranceAmountBD.add(loanAmountBD);
        totalAmount = totalAmountBD.toPlainString();
        return totalAmountBD.toPlainString() + "1";
    }

    public String getNetAmount() {
        BigDecimal insuranceAmountBD = BigDecimal.valueOf(Double.parseDouble(insuranceAmount));
        BigDecimal loanAmountBD = BigDecimal.valueOf(Double.parseDouble(loanAmount));
        BigDecimal premiumAmountBD = BigDecimal.valueOf(Double.parseDouble(premiumAmount));
        BigDecimal totalAmountBD = BigDecimal.valueOf(Double.parseDouble(totalAmount));
        BigDecimal netAmountBD = insuranceAmountBD.add(loanAmountBD).add(premiumAmountBD).add(totalAmountBD);
        return netAmountBD.toPlainString() + "1";
    }

    public String getDateOfInstigation() throws ParseException {
        currentTokenPosition = currentTokenPosition - 1;
        DateFormat dateFormatter = new SimpleDateFormat("MM/dd/yyyy");
        Date date = dateFormatter.parse(tokens[currentTokenPosition]);
        DateFormat newFormat = new SimpleDateFormat("dd/MM/yyyy");
        return newFormat.format(date);
    }

    public String getPolicyNumber() {
        currentTokenPosition = currentTokenPosition - 1;
        return tokens[currentTokenPosition];
    }

    public String getZipCode() {
        currentTokenPosition = currentTokenPosition - 1;
        return tokens[currentTokenPosition];
    }

    public String getState() {
        currentTokenPosition = currentTokenPosition - 1;
        return tokens[currentTokenPosition].toUpperCase().trim();
    }

    public String getCity(int length) {
        currentTokenPosition = currentTokenPosition - 1;
        int tokenStopPosition = currentTokenPosition - length;
        List<String> cityNames = new ArrayList<String>(length);
        for (; currentTokenPosition > tokenStopPosition; currentTokenPosition--) {
            cityNames.add(tokens[currentTokenPosition]);
        }
        StringBuilder cityNameBuilder = new StringBuilder();
        for (int index = length - 1; index >= 0; index--) {
            cityNameBuilder.append(cityNames.get(index)).append(" ");
        }
        return cityNameBuilder.toString().toUpperCase().trim();
    }

    public String getPhoneNumber() {
        return tokens[currentTokenPosition];
    }

    public String getEmail() {
        currentTokenPosition = currentTokenPosition - 1;
        return tokens[currentTokenPosition].toLowerCase().trim();
    }

    public String getResidentialAddress(int length) {
        currentTokenPosition = currentTokenPosition - 1;
        int tokenStopPosition = currentTokenPosition - length;
        List<String> residentialAddresses = new ArrayList<String>(length);
        for (; currentTokenPosition > tokenStopPosition; currentTokenPosition--) {
            residentialAddresses.add(tokens[currentTokenPosition]);
        }
        StringBuilder residentialAddressBuilder = new StringBuilder();
        for (int index = length - 1; index >= 0; index--) {
            residentialAddressBuilder.append(residentialAddresses.get(index)).append(" ");
        }
        return residentialAddressBuilder.toString().toLowerCase().trim();
    }

    public String getCommunicationAddress(int length) {
        int tokenStopPosition = currentTokenPosition - length;
        List<String> communicationAddresses = new ArrayList<String>(length);
        for (; currentTokenPosition > tokenStopPosition; currentTokenPosition--) {
            communicationAddresses.add(tokens[currentTokenPosition]);
        }
        StringBuilder communicationAddressBuilder = new StringBuilder();
        for (int index = length - 1; index >= 0; index--) {
            communicationAddressBuilder.append(communicationAddresses.get(index)).append(" ");
        }
        return communicationAddressBuilder.toString().toLowerCase().trim();
    }

    public String getGender() {
        return tokens[currentTokenPosition].toUpperCase().trim();
    }

    public String getDateOfBirth() throws ParseException {
        currentTokenPosition = currentTokenPosition - 1;
        DateFormat dateFormatter = new SimpleDateFormat("MM/dd/yyyy");
        dateOfBirth = tokens[currentTokenPosition];
        Date date = dateFormatter.parse(dateOfBirth);
        DateFormat newFormat = new SimpleDateFormat("dd/MM/yy");
        dateOfBirth = newFormat.format(date);
        return dateOfBirth;
    }

    public String getDateOfPrime() throws ParseException {
        DateFormat dateFormatter = new SimpleDateFormat("dd/MM/yy");
        Date date = dateFormatter.parse(dateOfBirth);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.YEAR, 26);
        calendar.add(Calendar.DATE, 4);
        if (calendar.get(Calendar.YEAR) == 2000) {
            DateFormat newFormatFor2000 = new SimpleDateFormat("MM/dd/yyyy");
            return newFormatFor2000.format(calendar.getTime());
        } else {
            DateFormat newFormat = new SimpleDateFormat("MM/dd/yy");
            return newFormat.format(calendar.getTime());
        }
    }

    public String getCustomerName(int length) {
        currentTokenPosition = currentTokenPosition - 1;
        int tokenStopPosition = currentTokenPosition - length;
        List<String> customerNames = new ArrayList<String>(length);
        for (; currentTokenPosition > tokenStopPosition; currentTokenPosition--) {
            customerNames.add(tokens[currentTokenPosition]);
        }
        StringBuilder customerNameBuilder = new StringBuilder();
        for (int index = length - 1; index >= 0; index--) {
            String customerNameToken = customerNames.get(index);
            String titledCustomerNameToken = customerNameToken.replace(customerNameToken.charAt(0), Character.toUpperCase(customerNameToken.charAt(0)));
            customerNameBuilder.append(titledCustomerNameToken).append(" ");
        }
        customerName = customerNameBuilder.toString().trim();
        return customerName;
    }

    public String getInitials() {
        StringBuilder initialsBuilder = new StringBuilder();
        String[] customerNameTokens = customerName.split(" ");
        for (String customerNameToken : customerNameTokens) {
            initialsBuilder.append(customerNameToken.charAt(0)).append(" ");
        }
        return initialsBuilder.toString().trim();
    }
}
