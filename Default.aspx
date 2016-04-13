
<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PBIEmbeddedWebForms._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <input type="hidden" id="accessTokenText" runat="server" value="" />
      <input type="hidden" id="embedUrlText" runat="server" value="" />

<iframe ID="iFrameEmbedReport" src="" height="768px" width="1024px" frameborder="1" seamless></iframe>
 
   
    <!-- Js function to assign iframe embedUrl and access token -->
     <script type="text/javascript">

          window.onload = function () {

              //debugger;
              // find the iFrame on the page and handle the loaded event.
              var iframe = document.getElementById('iFrameEmbedReport');
              iframe.src = document.getElementById('MainContent_embedUrlText').value;  //embedReportUrl;
              iframe.onload = postActionLoadReport;
              // post the access token to the iFrame to load the tile
              function postActionLoadReport() {
                  // get the app token.
                  accessToken = document.getElementById('MainContent_accessTokenText').value;//{generate app token};
                  // construct the push message structure
                  var m = { action: "loadReport", accessToken: accessToken };
                  message = JSON.stringify(m);
                  // push the message.
                  iframe = document.getElementById('iFrameEmbedReport');
                  iframe.contentWindow.postMessage(message, "*");
              }
          };

    </script>
 
</asp:Content>
