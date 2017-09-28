<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Calculator</title>
        <link rel="stylesheet" type="text/css" href="./stylesheet.css">
    </head>
    <body>
        <h1>Simple Salary Calculator</h1>
        <hr>
        <br>
        <div id="inputTable">
            <form name="myForm" action="results.jsp" method="post">
                <table>
                    <tbody>
                        <tr>
                            <td>Hours Worked:</td>
                            <td><input type="text" name="hoursWorked" value="" size="50"/></td>
                        </tr>
                        <tr>
                            <td>Hourly Pay:</td>
                            <td><input type="text" name="hourlyPay" value="" size="50"/></td>
                        </tr>
                        <tr>
                             <td>Pre-Tax Deduction:</td>
                             <td><input type="text" name="preTaxDeduct" value="" size="50"/></td>
                        </tr>
                        <tr>
                            <td>Post-Tax Deduction:</td>
                            <td><input type="text" name="postTaxDeduct" value="" size="50"/></td>
                        </tr>
                    </tbody>
                </table>
                <input type="reset" value="Clear" name="clear" />
                <input type="submit" value ="Submit" name="submit" />
            </form>
        </div>
    </body>
</html>
