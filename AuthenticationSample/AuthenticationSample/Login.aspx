<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AuthenticationSample.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-141146989-1"></script>
        <script>
          window.dataLayer = window.dataLayer || [];
          function gtag(){dataLayer.push(arguments);}
          gtag('js', new Date());
          gtag('config', 'UA-141146989-1');
        </script> 
    <title>Login GA Cipla</title>


    <!-- Global site tag (gtag.js) - Google Analytics -->
    <%--<script async src="https://www.googletagmanager.com/gtag/js?id=UA-140814415-5"></script>--%>
    <%--<script>
        //window.dataLayer = window.dataLayer || [];
        //function gtag() { dataLayer.push(arguments); }
        //gtag('js', new Date());

        //gtag('config', 'UA-140814415-5');
        //gtag('set', { 'user_id': 'A Test User' }); // Set the user ID using signed-in user_id.

        //function GoogleAnalyticsEvent(action, label, category, dim1, Paramvalue) {
        //    (function (i, s, o, g, r, a, m) {
        //        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
        //            (i[r].q = i[r].q || []).push(arguments)
        //        }, i[r].l = 1 * new Date(); a = s.createElement(o),
        //            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        //    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        //    ga('create', 'UA-140814415-5', 'auto');
        //    ga('set', 'dimension1', dim1);
        //    //ga('set', 'userId', 'raju.nimse@extentia.com');
        //    ga('send', {
        //        'hitType': 'event',          // Required.
        //        'eventCategory': category,   // Required.
        //        'eventAction': action,      // Required.
        //        'eventLabel': label,
        //        'eventValue': Paramvalue

        //    });
    </script>--%>


   <%-- <script>

        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'UA-140814415-5');
        gtag('set', { 'user_id': 111 }); 
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
                m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-140814415-5', 'auto');
        ga('set', 'userId', '147');
        ga('set', 'dimension1', 'Author');
        ga('send', 'pageview');


        function GoogleAnalyticsEvent(action, label, category, dim1, Paramvalue) {
            debugger;
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date(); a = s.createElement(o),
                    m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
            })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

            ga('create', 'UA-140814415-5', 'auto');
            ga('set', 'dimension1', dim1);
            //ga('set', 'userId', 'raju.nimse@extentia.com');
            ga('send', {
                'hitType': 'event',          // Required.
                'eventCategory': category,   // Required.
                'eventAction': action,      // Required.
                'eventLabel': label,
                'eventValue': Paramvalue

            });
        }
    </script>--%>
</head>
<body>
    <form id="form1" runat="server">
        <h3>Login Page</h3>
        <table>
            <tr>
                <td>UserName:</td>
                <td>
                    <asp:TextBox ID="UserName" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                        ControlToValidate="UserName"
                        Display="Dynamic"
                        ErrorMessage="Cannot be empty."
                        runat="server" />
                </td>
            </tr>
            <tr>
                <td>Password:</td>
                <td>
                    <asp:TextBox ID="UserPass" TextMode="Password"
                        runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                        ControlToValidate="UserPass"
                        ErrorMessage="Cannot be empty."
                        runat="server" />
                </td>
            </tr>
            <tr>
                <td>Remember me?</td>
                <td>
                    <asp:CheckBox ID="chkboxPersist" runat="server" />
                </td>
            </tr>
        </table>
        <asp:Button ID="Submit1" OnClick="Login_Click" Text="Log In" OnClientClick="GoogleAnalyticsEvent('send', 'Click', 'Login User', 'Login',1);"
            runat="server" />
        <p>
            <asp:Label ID="Msg" ForeColor="red" runat="server" />
        </p>
    </form>
</body>
</html>
