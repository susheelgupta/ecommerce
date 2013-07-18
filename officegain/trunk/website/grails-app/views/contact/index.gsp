<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <title>Officegain.com</title>

</head>

<body>

<div id="main_container"><div>&nbsp;</div>
    <table width="100%" style="font-family: Verdana, Arial, sans-serif;">
        <tr>
            <td>
                <h1 align="center">Contact Us</h1>
            </td>
        </tr>
        <tr>
            <td width="60%">

                <form id="contactUsForm" name="contactUsForm"
                      onSubmit="return validate(this)" method="post" action="/contact">
                    <table cellpadding="10" style="border-right: 1px solid #CCCCCC;">
                        <tr>
                            <td width="25%">To:</td>
                            <td>cs@Officegain.com</td>
                        </tr>
                        <tr>
                            <td>Subject:<sup><strong><font color="#FF0000">*</font></strong></sup></td>

                            <td><input type="radio" name="subject"
                                       value="Order / Payment
                  Related Enquiry" id="subject" checked
                                       onClick="javascript:contactus('1');"> Order / Payment Related
                            Enquiry &nbsp; <br/>
                                <input type="radio" name="subject" value="Request a Book"
                                       id="subject" onClick="javascript:contactus('2');"> Request a Book
                            &nbsp; <br/>
                                <input type="radio" name="subject" value="Business Related Query"
                                       id="subject" onClick="javascript:contactus('3');"> Business Related
                            Query &nbsp; <br/>
                                <input type="radio" name="subject"
                                       value="Features, Suggestions &amp;
                  Feedback" id="subject"
                                       onClick="javascript:contactus('4');"> Features, Suggestions &amp;

                            Feedback &nbsp; <br/>
                                <input type="radio" name="subject" value="Other" id="subject"
                                       onClick="javascript:contactus('5');"> Other &nbsp; <br/>

                        </tr>
                        <tr>
                            <td>Your Email Address:<sup><strong><font color="#FF0000">*</font></strong></sup></td>

                            <td>
                                <div style="display: none;" class="form_error" id="error_for_email">
                                &darr;&nbsp; &nbsp;&darr;</div>
                                <input type="text" name="email" id="email" value="" class="form"
                                       size="40" maxlength="96"/>

                                <div id="emailErr"></div>
                            </td>
                        </tr>
                        <tr>

                            <td valign="top" colspan="2">
                                <div id="comments" style="margin-left: 10%">How can we help you?<sup><strong><font
                                        color='#FF0000'>*</font></strong></sup> (Please mention your Order
                                Id)</div>

                                <div style="display: none;" class="form_error"
                                     id="error_for_comments">&darr;&nbsp; &nbsp;&darr;</div>

                                <div align="center"><textarea cols="56" rows="4" name="comments"
                                                              id="comments"></textarea></div>

                                <div id="commentsErr"></div>
                            </td>

                        </tr>
                        <tr>
                            <td colspan="2" align="center"><input type="submit" alt="Send Email"
                                                                  id="Send Email" value="Send Email"/></td>
                        </tr>
                    </table>
                </form>
            </td>

            <td width="40%" valign="top">
                <h2>For any query Email Us at:</h2>

                cs@Officegain.com <br/>
                <br/>

                <h2>Corporate Address</h2>
                Officegain.com, <br/>
                B - 273 / 1, <br/>
                First Floor, <br/>

                Derawal Nagar, <br/>
                Opp. Model Town 2, <br/>
                New Delhi - 110009 <br/>
            </td>
        </tr>
    </table>

</div>

</body>
</html>