
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Information</title>
        <link rel="stylesheet" type="text/css" href="./stylesheet.css">
    </head>
    
    <% 
        double hoursWorked = Double.parseDouble(request.getParameter("hoursWorked"));
        double hourlyPay = Double.parseDouble(request.getParameter("hourlyPay"));
        double preTaxDeduct = Double.parseDouble(request.getParameter("preTaxDeduct"));
        double postTaxDeduct = Double.parseDouble(request.getParameter("postTaxDeduct"));
        double grossPay = 0;
        double regularHours = 0;
        double otHours = 0;
        double otPayRate = 0;
        double otPay = 0;
        double regularPay = 0;
        double taxablePay = grossPay - preTaxDeduct;
        double taxAmount = 0;
        double postTaxPay = taxablePay - taxAmount;
        double netPay = postTaxPay - postTaxDeduct;
        
        if (hoursWorked > 40) {
            regularHours = 40;
            otHours = hoursWorked - 40;
            otPayRate = hourlyPay *1.5;
            otPay = otHours * otPayRate;
            regularPay = regularHours * hourlyPay;
            grossPay = regularPay + otPay;
        }
        else{   
            grossPay = hoursWorked * hourlyPay;
        }
        if (grossPay < 500) {
            taxAmount = taxablePay * 0.18;
        }
        else {
            taxAmount = taxablePay * 0.22;
        }
    %>
    
    <body>
        <h1>Salary Info</h1>
        
        <table id="resultsTable"; border="1px solid white">
            <tbody>
                <tr>
                    <td>Total Hours Worked</td>
                    <td><%= hoursWorked %></td>
                </tr>
                 <tr>
                    <td>Hourly Rate</td>
                    <td><%= hourlyPay %></td>
                </tr>
                 <tr>
                    <td># Hours Overtime</td>
                    <td><%= otHours %></td>
                </tr>
                 <tr>
                    <td>Overtime Hourly Rate</td>
                    <td><%= otPayRate %></td>
                </tr>
                 <tr>
                    <td>Gross Pay</td>
                    <td><%= grossPay %></td>
                </tr>
                 <tr>
                    <td>Pre-tax Deduction</td>
                    <td><%= preTaxDeduct %></td>
                </tr>
                 <tr>
                    <td>Pre-tax Pay</td>
                    <td><%= taxablePay %></td>
                </tr>
                 <tr>
                    <td>Tax Amount</td>
                    <td><%= taxAmount %></td>
                </tr>
                 <tr>
                    <td>Post-tax Pay</td>
                    <td><%= postTaxPay %></td>
                </tr>
                 <tr>
                    <td>Post-tax Deduction</td>
                    <td><%= postTaxDeduct %></td>
                </tr>
                 <tr>
                    <td>Net Pay</td>
                    <td><%= netPay %></td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
