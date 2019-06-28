<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="AuthenticationSample.Product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-141146989-1"></script>
    <script>
             window['GoogleAnalyticsObject'] = 'ga';
              window['ga'] = window['ga'] || function() {
                (window['ga'].q = window['ga'].q || []).push(arguments)
            };

          window.dataLayer = window.dataLayer || [];
          function gtag(){dataLayer.push(arguments);}
          gtag('js', new Date());
            gtag('config', 'UA-141146989-1');


            ga('create', 'UA-141146989-1', 'auto');
                ga('send', 'pageview',{
                  'dimension1': '<%= Session["userId"]%>',
                  'User_ID': 'testAmit'
            });
            
        </script>

     <!-- Google Tag Manager -->
        <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
        'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
            })(window, document, 'script', 'dataLayer', 'GTM-PV6T8VN');

            ga('set', 'ConvertKit', '148');

        </script>
    <!-- End Google Tag Manager -->
    <title>Cipla Product Details</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <h3>Cipla Product</h3>

        </div>
    </form>
</body>
</html>

