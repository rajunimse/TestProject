<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="welcome.aspx.cs" Inherits="AuthenticationSample.welcome" %>

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


            // IMPORTANT: This is just example data for demonstration purposes to send *something* to GA. Populate your `customUserId` some other way. DO NOT COPY THIS.
          var prefix = ['amit', 'ajay', 'lokesh'],
              middle = ['N', 'kk', 'manker'],
              suffix = ['pune', 'jbp', 'us'],
              random = function() {
                  return Math.floor(Math.random() * 3);
              };      
              // IMPORTANT: POPULATE YOUR OWN `customUserId` HERE...
              // Simple pseudo-random user id - 27 possible values
              // This is *just* some "random" text that we're using as userIds. DO NOT COPY THIS.
              // You'll need to implement something here linked to your customer database, CRM system, mailing list or whatever you're using
            var customUserId = prefix[random()] + '-' + middle[random()] + '-' + suffix[random()]; // e.g. abc-123-rst

            //ga('create', 'UA-141146989-1', 'auto');           
             alert('<%= Session["userId"]%>');
            ga('set', 'dimension2', 'ssss');
            
            ga('set', 'dimension1', customUserId);
            ga('send', 'pageview');
            ga('send', 'pageview', '/level_1/');

          

            ga('create', 'UA-141146989-1', 'auto');
                ga('send', 'pageview',{
                  'dimension1': '<%= Session["userId"]%>',
                  'User_ID': 'testAmit'
            });

            alert('final line');

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

    <title>welcome to Cipla</title>
    <!-- Global site tag (gtag.js) - Google Analytics -->
   <%-- <script async src="https://www.googletagmanager.com/gtag/js?id=UA-140814415-5"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'UA-140814415-5');
        gtag('set', { 'user_id': 123 }); 
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
    <!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-PV6T8VN" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

    <form id="form1" runat="server">
        <div>
              <asp:Button ID="Submit1" OnClick="Login_Click" Text="Log Out" OnClientClick="GoogleAnalyticsEvent('send', 'Click', 'LogOut User', 'Login',1);"
            runat="server" />
            <br /><br /><br />
            <asp:Button ID="btnProduct" Text="Product Page" runat="server" OnClick="btnProduct_Click" />                         
            <%--<a href="Product.aspx" onclick="ga('send','click','downloads','PDF Download','whitepaper', 0);" >Go to Product Page for Downloading</a>--%>
            
            <%--<a href="Product.aspx?event=artifact" onclick="ga('send','event','artifact','Artifact Details','Read', 0);" >Go to Artifact</a>--%>

            <br />
            <a href="ContentPage.aspx?event=view" onclick="ga('send','event','viewcontent','View Content','artifacttest', 0);" >View Content Page for Artifacts</a>
             <br /><br />

            <a href="#" onclick="ga('send','event','downloads','PDF Download','whitepaper', 0);" >Download file</a>
            <br /><br />
             <a href="#" onclick="ga('send', 'event', 'Videos', 'play', 'Fall Campaign');" >Videos events</a>

            <br />

            <asp:DropDownList ID="ddlDepartment" runat="server">
                <asp:ListItem Text="Development" Value="Development"></asp:ListItem>
                <asp:ListItem Text="HR" Value="HR"></asp:ListItem>
                <asp:ListItem Text="Account" Value="Account"></asp:ListItem>
                <asp:ListItem Text="Production" Value="Production"></asp:ListItem>                
            </asp:DropDownList>

            <a href="#" onclick="ga('send', 'event', 'PulishedArtifact', 'Department1', 'Region1');" >Pulished Artifact 1</a>
            <br />
            <a href="#" onclick="ga('send', 'event', 'PulishedArtifact', 'Department2', 'Region2');" >Pulished Artifact 2</a>
            <br /><br />
            
            <%--<a href="Product.aspx" onclick="_gaq.push(['_trackEvent', 'downloads', 'click', 'whitepaper', '0']);" >Test gaq push</a>--%>

             <br /><br />
            <a href="Documents.aspx" >All documents (POC for Download file)</a>

            <br /><a href="GoogleMaps.aspx" >Google Map</a> <br />
            <br /><a href="WebSearch.aspx" >Web search and download file (POC for Search and Download file)</a> <br />
            <br />
            <h3>Region wise Artifact</h3>
            <iframe width="600" height="371" seamless frameborder="0" scrolling="no" src="https://docs.google.com/spreadsheets/d/e/2PACX-1vSvujPvBWvJLwfhLydOKdynajxve9TcSqI_D6Xll_7q_LGVCH6iQtCD9t-QKt_WlTffsU3YuyhpWr3D/pubchart?oid=693492223&amp;format=interactive"></iframe>

             <br />

        </div>
    </form>
</body>
</html>
