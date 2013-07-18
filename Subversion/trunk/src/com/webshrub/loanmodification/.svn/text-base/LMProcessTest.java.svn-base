package com.webshrub.loanmodification;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

public class LMProcessTest {
    private static final String EXCEL_FILE_PATH = "C:\\Users\\Nasha\\Desktop\\LM_live_File\\ashan_fixed.xlsx";
    private static final String TEXT_FILE_PATH = "C:\\Users\\Nasha\\Desktop\\NAVAL\\live.txt";

    private XSSFSheet excelSheet;
    private List<ExcelFileRecord> excelFileRecords = new ArrayList<ExcelFileRecord>();
    private List<TextFileRecord> textFileRecords = new ArrayList<TextFileRecord>();
    private int numberOfRecordsToMatch;

    public LMProcessTest() throws IOException, ParseException {
        readTextFile(TEXT_FILE_PATH);
        readExcelFile(EXCEL_FILE_PATH);
        numberOfRecordsToMatch = excelFileRecords.size();
    }

    private void readTextFile(String textFilePath) throws IOException, ParseException {
        BufferedReader textFileBufferedReader = new BufferedReader(new FileReader(textFilePath));
        String line;
        while ((line = textFileBufferedReader.readLine()) != null) {
            TextFileRecord textFileRecord = generateTextFileRecord(line);
            textFileRecords.add(textFileRecord);
        }
    }

    private TextFileRecord generateTextFileRecord(String line) throws ParseException {
        TextFileRecord textFileRecord = new TextFileRecord();
        textFileRecord.tokens = line.split(LMProcessConstants.TEXT_LINE_SEPARATOR);
        return textFileRecord;
    }

    private void readExcelFile(String excelFilePath) throws IOException {
        FileInputStream excelFileInputStream = new FileInputStream(excelFilePath);
        XSSFWorkbook workbook = new XSSFWorkbook(excelFileInputStream);
        excelSheet = workbook.getSheetAt(LMProcessConstants.EXCEL_FILE_SHEET_NUMBER);
        for (int rowCounter = 0; rowCounter < excelSheet.getPhysicalNumberOfRows(); rowCounter++) {
            ExcelFileRecord excelFileRecord = generateExcelFileRecord(rowCounter);
            excelFileRecords.add(excelFileRecord);
        }
    }

    private ExcelFileRecord generateExcelFileRecord(int rowCounter) throws IOException {
        ExcelFileRecord excelFileRecord = new ExcelFileRecord();
        excelFileRecord.customerName = getValueFromExcel(rowCounter, LMProcessConstants.CUSTOMER_NAME_INDEX_IN_EXCEL);
        excelFileRecord.initials = getValueFromExcel(rowCounter, LMProcessConstants.INITIALS_INDEX_IN_EXCEL);
        excelFileRecord.dateOfBirth = getValueFromExcel(rowCounter, LMProcessConstants.DATE_OF_BIRTH_INDEX_IN_EXCEL);
        excelFileRecord.gender = getValueFromExcel(rowCounter, LMProcessConstants.GENDER_INDEX_IN_EXCEL);
        excelFileRecord.communicationAddress = getValueFromExcel(rowCounter, LMProcessConstants.COMMUNICATION_ADDRESS_INDEX_IN_EXCEL);
        excelFileRecord.residentialAddress = getValueFromExcel(rowCounter, LMProcessConstants.RESIDENTIAL_ADDRESS_INDEX_IN_EXCEL);
        excelFileRecord.email = getValueFromExcel(rowCounter, LMProcessConstants.EMAIL_INDEX_IN_EXCEL);
        excelFileRecord.phoneNumber = getValueFromExcel(rowCounter, LMProcessConstants.PHONE_NUMBER_INDEX_IN_EXCEL);
        excelFileRecord.city = getValueFromExcel(rowCounter, LMProcessConstants.CITY_INDEX_IN_EXCEL);
        excelFileRecord.state = getValueFromExcel(rowCounter, LMProcessConstants.STATE_INDEX_IN_EXCEL);
        excelFileRecord.zipCode = getValueFromExcel(rowCounter, LMProcessConstants.ZIP_CODE_INDEX_IN_EXCEL);
        excelFileRecord.policyNumber = getValueFromExcel(rowCounter, LMProcessConstants.POLICY_NUMBER_INDEX_IN_EXCEL);
        excelFileRecord.dateOfInstigation = getValueFromExcel(rowCounter, LMProcessConstants.DATE_OF_INSTIGATION_INDEX_IN_EXCEL);
        excelFileRecord.dateOfPrime = getValueFromExcel(rowCounter, LMProcessConstants.DATE_OF_PRIME_INDEX_IN_EXCEL);
        excelFileRecord.premiumAmount = getValueFromExcel(rowCounter, LMProcessConstants.PREMIUM_AMOUNT_INDEX_IN_EXCEL);
        excelFileRecord.loanAmount = getValueFromExcel(rowCounter, LMProcessConstants.LOAN_AMOUNT_INDEX_IN_EXCEL);
        excelFileRecord.insuranceAmount = getValueFromExcel(rowCounter, LMProcessConstants.INSURANCE_AMOUNT_INDEX_IN_EXCEL);
        excelFileRecord.totalAmount = getValueFromExcel(rowCounter, LMProcessConstants.TOTAL_AMOUNT_INDEX_IN_EXCEL);
        excelFileRecord.netAmount = getValueFromExcel(rowCounter, LMProcessConstants.NET_AMOUNT_INDEX_IN_EXCEL);
        excelFileRecord.creditCardNumber = getValueFromExcel(rowCounter, LMProcessConstants.CREDIT_CARD_NUMBER_INDEX_IN_EXCEL);
        excelFileRecord.cvvNumber = getValueFromExcel(rowCounter, LMProcessConstants.CVV_NUMBER_INDEX_IN_EXCEL);
        excelFileRecord.remarks = getValueFromExcel(rowCounter, LMProcessConstants.REMARKS_INDEX_IN_EXCEL);
        excelFileRecord.representativeName = getValueFromExcel(rowCounter, LMProcessConstants.REPRESENTATIVE_NAME_INDEX_IN_EXCEL);
        excelFileRecord.representativePhoneNumber = getValueFromExcel(rowCounter, LMProcessConstants.REPRESENTATIVE_PHONE_NUMBER_INDEX_IN_EXCEL);
        excelFileRecord.representativeCode = getValueFromExcel(rowCounter, LMProcessConstants.REPRESENTATIVE_CODE_INDEX_IN_EXCEL);
        return excelFileRecord;
    }

    private String getValueFromExcel(int rowCounter, int cellCounter) throws IOException {
        XSSFRow row = excelSheet.getRow(rowCounter);
        Cell cell = row.getCell(cellCounter);
        return cell.getStringCellValue();
    }

    private boolean validateRepresentativePhoneNumber() {
        int counter = 0;
        String valueFromExcel = null;
        String valueFromText = null;
        boolean result = true;
        for (; counter < numberOfRecordsToMatch; counter++) {
            try {
                valueFromExcel = excelFileRecords.get(counter).representativePhoneNumber.trim();
                valueFromText = textFileRecords.get(counter).getRepresentativePhoneNumber().trim();
                if (!valueFromExcel.equals(valueFromText)) {
                    System.out.println("ERROR::::IN REPRESENTATIVE PHONE NUMBER::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
                    result = false;
                }
            } catch (Exception e) {
                result = false;
                e.printStackTrace();
                System.out.println("EXCEPTION::::IN REPRESENTATIVE PHONE NUMBER::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
            }
        }
        return result;
    }

    private boolean validateRepresentativeName() {
        int counter = 0;
        String valueFromExcel = null;
        String valueFromText = null;
        boolean result = true;
        for (; counter < numberOfRecordsToMatch; counter++) {
            try {
                valueFromExcel = excelFileRecords.get(counter).representativeName.trim();
                String[] representativeNameTokens = valueFromExcel.split(LMProcessConstants.TEXT_LINE_SEPARATOR);
                valueFromText = textFileRecords.get(counter).getRepresentativeName(representativeNameTokens.length).trim();
                if (!valueFromExcel.equals(valueFromText)) {
                    System.out.println("ERROR::::IN REPRESENTATIVE NAME::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
                    result = false;
                }
            } catch (Exception e) {
                result = false;
                e.printStackTrace();
                System.out.println("EXCEPTION::::IN REPRESENTATIVE NAME::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
            }
        }
        return result;
    }

    private boolean validateRepresentativeCode() {
        int counter = 0;
        String valueFromExcel = null;
        String valueFromText = null;
        boolean result = true;
        for (; counter < numberOfRecordsToMatch; counter++) {
            try {
                valueFromExcel = excelFileRecords.get(counter).representativeCode.trim();
                valueFromText = textFileRecords.get(counter).getRepresentativeCode().trim();
                if (!valueFromExcel.equals(valueFromText)) {
                    System.out.println("ERROR::::IN REPRESENTATIVE CODE::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
                    result = false;
                }
            } catch (Exception e) {
                result = false;
                e.printStackTrace();
                System.out.println("EXCEPTION::::IN REPRESENTATIVE CODE::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
            }
        }
        return result;
    }

    private boolean validateRemarks() {
        int counter = 0;
        String valueFromExcel = null;
        String valueFromText = null;
        boolean result = true;
        for (; counter < numberOfRecordsToMatch; counter++) {
            try {
                valueFromExcel = excelFileRecords.get(counter).remarks.trim();
                valueFromText = textFileRecords.get(counter).getRemarks().trim();
                if (!valueFromExcel.equals(valueFromText)) {
                    System.out.println("ERROR::::IN REMARKS::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
                    result = false;
                }
            } catch (Exception e) {
                result = false;
                e.printStackTrace();
                System.out.println("EXCEPTION::::IN REMARKS::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
            }
        }
        return result;
    }

    private boolean validateCreditCardNumber() {
        int counter = 0;
        String valueFromExcel = null;
        String valueFromText = null;
        boolean result = true;
        for (; counter < numberOfRecordsToMatch; counter++) {
            try {
                valueFromExcel = excelFileRecords.get(counter).creditCardNumber.trim();
                valueFromText = textFileRecords.get(counter).getCreditCardNumber().trim();
                if (!valueFromExcel.equals(valueFromText)) {
                    System.out.println("ERROR::::IN CREDIT CARD NUMBER::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
                    result = false;
                }
            } catch (Exception e) {
                result = false;
                e.printStackTrace();
                System.out.println("EXCEPTION::::IN CREDIT CARD NUMBER::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
            }
        }
        return result;
    }

    private boolean validateCVVNumber() {
        int counter = 0;
        String valueFromExcel = null;
        String valueFromText = null;
        boolean result = true;
        for (; counter < numberOfRecordsToMatch; counter++) {
            try {
                valueFromExcel = excelFileRecords.get(counter).cvvNumber.trim();
                valueFromText = textFileRecords.get(counter).getCVVNumber().trim();
                if (!valueFromExcel.equals(valueFromText)) {
                    System.out.println("ERROR::::IN CVV NUMBER::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
                    result = false;
                }
            } catch (Exception e) {
                result = false;
                e.printStackTrace();
                System.out.println("EXCEPTION::::IN CVV NUMBER::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
            }
        }
        return result;
    }

    private boolean validateInsuranceAmount() {
        int counter = 0;
        String valueFromExcel = null;
        String valueFromText = null;
        boolean result = true;
        for (; counter < numberOfRecordsToMatch; counter++) {
            try {
                valueFromExcel = excelFileRecords.get(counter).insuranceAmount.trim();
                valueFromText = textFileRecords.get(counter).getInsuranceAmount().trim();
                if (!valueFromExcel.equals(valueFromText)) {
                    System.out.println("ERROR::::IN INSURANCE AMOUNT::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
                    result = false;
                }
            } catch (Exception e) {
                result = false;
                e.printStackTrace();
                System.out.println("EXCEPTION::::IN INSURANCE AMOUNT::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
            }
        }
        return result;
    }

    private boolean validateLoanAmount() {
        int counter = 0;
        String valueFromExcel = null;
        String valueFromText = null;
        boolean result = true;
        for (; counter < numberOfRecordsToMatch; counter++) {
            try {
                valueFromExcel = excelFileRecords.get(counter).loanAmount.trim();
                valueFromText = textFileRecords.get(counter).getLoanAmount().trim();
                if (!valueFromExcel.equals(valueFromText)) {
                    System.out.println("ERROR::::IN LOAN AMOUNT::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
                    result = false;
                }
            } catch (Exception e) {
                result = false;
                e.printStackTrace();
                System.out.println("EXCEPTION::::IN LOAN AMOUNT::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
            }
        }
        return result;
    }

    private boolean validatePremiumAmount() {
        int counter = 0;
        String valueFromExcel = null;
        String valueFromText = null;
        boolean result = true;
        for (; counter < numberOfRecordsToMatch; counter++) {
            try {
                valueFromExcel = excelFileRecords.get(counter).premiumAmount.trim();
                valueFromText = textFileRecords.get(counter).getPremiumAmount().trim();
                if (!valueFromExcel.equals(valueFromText)) {
                    System.out.println("ERROR::::IN PREMIUM AMOUNT::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
                    result = false;
                }
            } catch (Exception e) {
                result = false;
                e.printStackTrace();
                System.out.println("EXCEPTION::::IN PREMIUM AMOUNT::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
            }
        }
        return result;
    }

    private boolean validateTotalAmount() {
        int counter = 0;
        String valueFromExcel = null;
        String valueFromText = null;
        boolean result = true;
        for (; counter < numberOfRecordsToMatch; counter++) {
            try {
                valueFromExcel = excelFileRecords.get(counter).totalAmount.trim();
                valueFromText = textFileRecords.get(counter).getTotalAmount().trim();
                if (!valueFromExcel.equals(valueFromText)) {
                    System.out.println("ERROR::::IN TOTAL AMOUNT::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
                    result = false;
                }
            } catch (Exception e) {
                result = false;
                e.printStackTrace();
                System.out.println("EXCEPTION::::IN TOTAL AMOUNT::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
            }
        }
        return result;
    }

    private boolean validateNetAmount() {
        int counter = 0;
        String valueFromExcel = null;
        String valueFromText = null;
        boolean result = true;
        for (; counter < numberOfRecordsToMatch; counter++) {
            try {
                valueFromExcel = excelFileRecords.get(counter).netAmount.trim();
                valueFromText = textFileRecords.get(counter).getNetAmount().trim();
                if (!valueFromExcel.equals(valueFromText)) {
                    System.out.println("ERROR::::IN NET AMOUNT::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
                    result = false;
                }
            } catch (Exception e) {
                result = false;
                e.printStackTrace();
                System.out.println("EXCEPTION::::IN NET AMOUNT::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
            }
        }
        return result;
    }

    private boolean validateDateOfInstigation() {
        int counter = 0;
        String valueFromExcel = null;
        String valueFromText = null;
        boolean result = true;
        for (; counter < numberOfRecordsToMatch; counter++) {
            try {
                valueFromExcel = excelFileRecords.get(counter).dateOfInstigation.trim();
                valueFromText = textFileRecords.get(counter).getDateOfInstigation().trim();
                if (!valueFromExcel.equals(valueFromText)) {
                    System.out.println("ERROR::::IN DATE OF INSTIGATION::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
                    result = false;
                }
            } catch (Exception e) {
                result = false;
                e.printStackTrace();
                System.out.println("EXCEPTION::::IN DATE OF INSTIGATION::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
            }
        }
        return result;
    }

    private boolean validatePolicyNumber() {
        int counter = 0;
        String valueFromExcel = null;
        String valueFromText = null;
        boolean result = true;
        for (; counter < numberOfRecordsToMatch; counter++) {
            try {
                valueFromExcel = excelFileRecords.get(counter).policyNumber.trim();
                valueFromText = textFileRecords.get(counter).getPolicyNumber().trim();
                if (!valueFromExcel.equals(valueFromText)) {
                    System.out.println("ERROR::::IN POLICY NUMBER::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
                    result = false;
                }
            } catch (Exception e) {
                result = false;
                e.printStackTrace();
                System.out.println("EXCEPTION::::IN POLICY NUMBER::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
            }
        }
        return result;
    }

    private boolean validateZipCode() {
        int counter = 0;
        String valueFromExcel = null;
        String valueFromText = null;
        boolean result = true;
        for (; counter < numberOfRecordsToMatch; counter++) {
            try {
                valueFromExcel = excelFileRecords.get(counter).zipCode.trim();
                valueFromText = textFileRecords.get(counter).getZipCode().trim();
                if (!valueFromExcel.equals(valueFromText)) {
                    System.out.println("ERROR::::IN ZIP CODE::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
                    result = false;
                }
            } catch (Exception e) {
                result = false;
                e.printStackTrace();
                System.out.println("EXCEPTION::::IN ZIP CODE::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
            }
        }
        return result;
    }

    private boolean validateState() {
        int counter = 0;
        String valueFromExcel = null;
        String valueFromText = null;
        boolean result = true;
        for (; counter < numberOfRecordsToMatch; counter++) {
            try {
                valueFromExcel = excelFileRecords.get(counter).state.trim();
                valueFromText = textFileRecords.get(counter).getState().trim();
                if (!valueFromExcel.equals(valueFromText)) {
                    System.out.println("ERROR::::IN STATE::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
                    result = false;
                }
            } catch (Exception e) {
                result = false;
                e.printStackTrace();
                System.out.println("EXCEPTION::::IN STATE::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
            }
        }
        return result;
    }

    private boolean validateCity() {
        int counter = 0;
        String valueFromExcel = null;
        String valueFromText = null;
        boolean result = true;
        for (; counter < numberOfRecordsToMatch; counter++) {
            try {
                valueFromExcel = excelFileRecords.get(counter).city.trim();
                String[] cityTokens = valueFromExcel.split(LMProcessConstants.TEXT_LINE_SEPARATOR);
                valueFromText = textFileRecords.get(counter).getCity(cityTokens.length).trim();
                if (!valueFromExcel.equals(valueFromText)) {
                    System.out.println("ERROR::::IN CITY::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
                    result = false;
                }
            } catch (Exception e) {
                result = false;
                e.printStackTrace();
                System.out.println("EXCEPTION::::IN CITY::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
            }
        }
        return result;
    }

    private boolean validatePhoneNumber() {
        int counter = 0;
        String valueFromExcel = null;
        String valueFromText = null;
        boolean result = true;
        for (; counter < numberOfRecordsToMatch; counter++) {
            try {
                valueFromExcel = excelFileRecords.get(counter).phoneNumber.trim();
                valueFromText = textFileRecords.get(counter).getPhoneNumber().trim();
                if (!valueFromExcel.equals(valueFromText)) {
                    System.out.println("ERROR::::IN PHONE NUMBER::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
                    result = false;
                }
            } catch (Exception e) {
                result = false;
                e.printStackTrace();
                System.out.println("EXCEPTION::::IN PHONE NUMBER::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
            }
        }
        return result;
    }

    private boolean validateEmail() {
        int counter = 0;
        String valueFromExcel = null;
        String valueFromText = null;
        boolean result = true;
        for (; counter < numberOfRecordsToMatch; counter++) {
            try {
                valueFromExcel = excelFileRecords.get(counter).email.trim();
                valueFromText = textFileRecords.get(counter).getEmail().trim();
                if (!valueFromExcel.equals(valueFromText)) {
                    System.out.println("ERROR::::IN EMAIL::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
                    result = false;
                }
            } catch (Exception e) {
                result = false;
                e.printStackTrace();
                System.out.println("EXCEPTION::::IN EMAIL::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
            }
        }
        return result;
    }

    private boolean validateResidentialAddress() throws IOException {
        int counter = 0;
        String valueFromExcel = null;
        String valueFromText = null;
        boolean result = true;
        for (; counter < numberOfRecordsToMatch; counter++) {
            try {
                valueFromExcel = excelFileRecords.get(counter).residentialAddress.trim();
                String[] residentialAddressTokens = valueFromExcel.split(LMProcessConstants.TEXT_LINE_SEPARATOR);
                valueFromText = textFileRecords.get(counter).getResidentialAddress(residentialAddressTokens.length).trim();
                if (!valueFromExcel.equals(valueFromText)) {
                    System.out.println("ERROR::::IN RESIDENTIAL ADDRESS:::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
                    result = false;
                }
            } catch (Exception e) {
                result = false;
                e.printStackTrace();
                System.out.println("EXCEPTION::::IN RESIDENTIAL ADDRESS:::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
            }
        }
        return result;
    }

    private boolean validateCommunicationAddress() throws IOException {
        int counter = 0;
        String valueFromExcel = null;
        String valueFromText = null;
        boolean result = true;
        for (; counter < numberOfRecordsToMatch; counter++) {
            try {
                valueFromExcel = excelFileRecords.get(counter).communicationAddress.trim();
                String[] communicationAddressTokens = valueFromExcel.split(LMProcessConstants.TEXT_LINE_SEPARATOR);
                valueFromText = textFileRecords.get(counter).getCommunicationAddress(communicationAddressTokens.length).trim();
                if (!valueFromExcel.equals(valueFromText)) {
                    System.out.println("ERROR::::IN COMMUNICATION ADDRESS:::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
                    result = false;
                }
            } catch (Exception e) {
                result = false;
                e.printStackTrace();
                System.out.println("EXCEPTION::::IN COMMUNICATION ADDRESS:::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
            }
        }
        return result;
    }

    private boolean validateGender() throws IOException {
        int counter = 0;
        String valueFromExcel = null;
        String valueFromText = null;
        boolean result = true;
        for (; counter < numberOfRecordsToMatch; counter++) {
            try {
                valueFromExcel = excelFileRecords.get(counter).gender.trim();
                valueFromText = textFileRecords.get(counter).getGender().trim();
                if (!valueFromExcel.equals(valueFromText)) {
                    System.out.println("ERROR::::IN GENDER:::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
                    result = false;
                }
            } catch (Exception e) {
                result = false;
                e.printStackTrace();
                System.out.println("EXCEPTION::::IN GENDER:::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
            }
        }
        return result;
    }

    private boolean validateDateOfBirth() {
        int counter = 0;
        String valueFromExcel = null;
        String valueFromText = null;
        boolean result = true;
        for (; counter < numberOfRecordsToMatch; counter++) {
            try {
                valueFromExcel = excelFileRecords.get(counter).dateOfBirth.trim();
                valueFromText = textFileRecords.get(counter).getDateOfBirth().trim();
                if (!valueFromExcel.equals(valueFromText)) {
                    System.out.println("ERROR::::IN DATE OF BIRTH::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
                    result = false;
                }
            } catch (Exception e) {
                result = false;
                e.printStackTrace();
                System.out.println("EXCEPTION::::IN DATE OF BIRTH::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
            }
        }
        return result;
    }

    private boolean validateDateOfPrime() {
        int counter = 0;
        String valueFromExcel = null;
        String valueFromText = null;
        boolean result = true;
        for (; counter < numberOfRecordsToMatch; counter++) {
            try {
                valueFromExcel = excelFileRecords.get(counter).dateOfPrime.trim();
                valueFromText = textFileRecords.get(counter).getDateOfPrime().trim();
                if (!valueFromExcel.equals(valueFromText)) {
                    System.out.println("ERROR::::IN DATE OF PRIME::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
                    result = false;
                }
            } catch (Exception e) {
                result = false;
                e.printStackTrace();
                System.out.println("EXCEPTION::::IN DATE OF PRIME::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
            }
        }
        return result;
    }

    private boolean validateCustomerName() throws IOException {
        int counter = 0;
        String valueFromExcel = null;
        String valueFromText = null;
        boolean result = true;
        for (; counter < numberOfRecordsToMatch; counter++) {
            try {
                valueFromExcel = excelFileRecords.get(counter).customerName.trim();
                String[] customerNameTokens = valueFromExcel.split(LMProcessConstants.TEXT_LINE_SEPARATOR);
                valueFromText = textFileRecords.get(counter).getCustomerName(customerNameTokens.length).trim();
                if (!valueFromExcel.equals(valueFromText)) {
                    System.out.println("ERROR::::IN CUSTOMER NAME:::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
                    result = false;
                }
            } catch (Exception e) {
                result = false;
                e.printStackTrace();
                System.out.println("EXCEPTION::::IN CUSTOMER NAME:::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
            }
        }
        return result;
    }

    private boolean validateInitials() {
        int counter = 0;
        String valueFromExcel = null;
        String valueFromText = null;
        boolean result = true;
        for (; counter < numberOfRecordsToMatch; counter++) {
            try {
                valueFromExcel = excelFileRecords.get(counter).initials.trim();
                valueFromText = textFileRecords.get(counter).getInitials().trim();
                if (!valueFromExcel.equals(valueFromText)) {
                    System.out.println("ERROR::::IN INITIALS:::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
                    result = false;
                }
            } catch (Exception e) {
                result = false;
                e.printStackTrace();
                System.out.println("EXCEPTION::::IN INITIALS:::::DATA MISMATCH FOUND ON LINE " + counter + " Found From Excel = " + valueFromExcel + ", Found From Text = " + valueFromText);
            }
        }
        return result;
    }

    public static void main(String[] args) throws Exception {
        LMProcessTest lmProcessTest = new LMProcessTest();
        boolean resultForRepresentativePhoneNumber = lmProcessTest.validateRepresentativePhoneNumber();
        System.out.println("Matching Result For Representative Phone Number------------->" + resultForRepresentativePhoneNumber);
        boolean resultForRepresentativeName = lmProcessTest.validateRepresentativeName();
        System.out.println("Matching Result For Representative Name------------->" + resultForRepresentativeName);
        boolean resultForRepresentativeCode = lmProcessTest.validateRepresentativeCode();
        System.out.println("Matching Result For Representative Code------------->" + resultForRepresentativeCode);
        boolean resultForRemarks = lmProcessTest.validateRemarks();
        System.out.println("Matching Result For Remarks------------->" + resultForRemarks);
        boolean resultForCreditCardNumber = lmProcessTest.validateCreditCardNumber();
        System.out.println("Matching Result For Credit Card Number------------->" + resultForCreditCardNumber);
        boolean resultForCVVNumber = lmProcessTest.validateCVVNumber();
        System.out.println("Matching Result For CVV Number------------->" + resultForCVVNumber);
        boolean resultForInsuranceAmount = lmProcessTest.validateInsuranceAmount();
        System.out.println("Matching Result For Insurance Amount------------->" + resultForInsuranceAmount);
        boolean resultForLoanAmount = lmProcessTest.validateLoanAmount();
        System.out.println("Matching Result For Loan Amount------------->" + resultForLoanAmount);
        boolean resultForPremiumAmount = lmProcessTest.validatePremiumAmount();
        System.out.println("Matching Result For Premium Amount------------->" + resultForPremiumAmount);
        boolean resultForTotalAmount = lmProcessTest.validateTotalAmount();
        System.out.println("Matching Result For Total Amount------------->" + resultForTotalAmount);
        boolean resultForNetAmount = lmProcessTest.validateNetAmount();
        System.out.println("Matching Result For Net Amount------------->" + resultForNetAmount);
        boolean resultForDateOfInstigation = lmProcessTest.validateDateOfInstigation();
        System.out.println("Matching Result For Date Of Instigation------------->" + resultForDateOfInstigation);
        boolean resultForPolicyNumber = lmProcessTest.validatePolicyNumber();
        System.out.println("Matching Result For Policy Number------------->" + resultForPolicyNumber);
        boolean resultForZipCode = lmProcessTest.validateZipCode();
        System.out.println("Matching Result For Zip Code------------->" + resultForZipCode);
        boolean resultForState = lmProcessTest.validateState();
        System.out.println("Matching Result For State------------->" + resultForState);
        boolean resultForCity = lmProcessTest.validateCity();
        System.out.println("Matching Result For City------------->" + resultForCity);
        boolean resultForPhoneNumber = lmProcessTest.validatePhoneNumber();
        System.out.println("Matching Result For Phone Number------------->" + resultForPhoneNumber);
        boolean resultForEmail = lmProcessTest.validateEmail();
        System.out.println("Matching Result For Email------------->" + resultForEmail);
        boolean resultForResidentialAddress = lmProcessTest.validateResidentialAddress();
        System.out.println("Matching Result For Residential Address------------->" + resultForResidentialAddress);
        boolean resultForCommunicationAddress = lmProcessTest.validateCommunicationAddress();
        System.out.println("Matching Result For Communication Address------------->" + resultForCommunicationAddress);
        boolean resultForGender = lmProcessTest.validateGender();
        System.out.println("Matching Result For Gender------------->" + resultForGender);
        boolean resultForDateOfBirth = lmProcessTest.validateDateOfBirth();
        System.out.println("Matching Result For Date Of Birth------>" + resultForDateOfBirth);
        boolean resultForDateOfPrime = lmProcessTest.validateDateOfPrime();
        System.out.println("Matching Result For Date Of Prime------------->" + resultForDateOfPrime);
        boolean resultForCustomerName = lmProcessTest.validateCustomerName();
        System.out.println("Matching Result For Customer Name--------------->" + resultForCustomerName);
        boolean resultForInitials = lmProcessTest.validateInitials();
        System.out.println("Matching Result For Initials------------>" + resultForInitials);
    }
}
