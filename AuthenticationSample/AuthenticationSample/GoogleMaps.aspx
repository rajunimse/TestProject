<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GoogleMaps.aspx.cs" Inherits="AuthenticationSample.GoogleMaps" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
   
    <!-- Global site tag (gtag.js) - Google Analytics -->
                <script async src="https://www.googletagmanager.com/gtag/js?id=UA-142311717-1"></script>
                <script>
                    window['GoogleAnalyticsObject'] = 'ga';
                      window['ga'] = window['ga'] || function() {
                        (window['ga'].q = window['ga'].q || []).push(arguments)
                    };

                  window.dataLayer = window.dataLayer || [];
                  function gtag(){dataLayer.push(arguments);}
                  gtag('js', new Date());
                  gtag('config', 'UA-142311717-1');

                  ga('create', 'UA-142311717-1', 'auto');
                    ga('send', 'pageview',{
                      'dimension1': '<%= Session["userId"]%>'
                    });

                    ga('set', 'dimension1', '<%= Session["userId"]%>');

                    alert('<%= Session["userId"]%>');
                </script>
        
        <!-- Google Tag Manager -->
            <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
            new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
            j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
            'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
                })(window, document, 'script', 'dataLayer', 'GTM-WK26NHJ');

                 
                ga('set', 'ConvertKit', '148'); 
            </script>
            <!-- End Google Tag Manager -->

    <title>Google Map Page 3:33</title>
    </head>
<%--<head>
    <title>Simple Map</title>
    <meta name="viewport" content="initial-scale=1.0">
    <meta charset="utf-8">
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
  </head>--%>
<body>

    <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-WK26NHJ" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>

    <form id="form1" runat="server">

    Use Case</form>

    Level 1: Display the total count of published artifacts per the Region
    <br />
    <iframe width="600" height="371" seamless frameborder="0" scrolling="no" src="https://docs.google.com/spreadsheets/d/e/2PACX-1vQv5djySqZ7QNxXRamW6kKDr2fRephGwPg3eT8Y2vL3Eq2XRPdys6oXeoHs203hvQgchNasEquNcpKE/pubchart?oid=857727180&amp;format=interactive"></iframe>

    <br />
    <br />
    Direct Link
    https://docs.google.com/spreadsheets/d/e/2PACX-1vQv5djySqZ7QNxXRamW6kKDr2fRephGwPg3eT8Y2vL3Eq2XRPdys6oXeoHs203hvQgchNasEquNcpKE/pubchart?oid=857727180&format=interactive

           <div id="map"></div>
            <%--<script>
              var map;
              function initMap() {
                map = new google.maps.Map(document.getElementById('map'), {
                  center: {lat: -34.397, lng: 150.644},
                  zoom: 8
                });
              }
            </script>
            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhqXsxWX4mr_k6UBSPldnFmUIBaF1z7jk&callback=initMap" async defer></script>--%>
    
</body>
</html>
