<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HelloWorld.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <script type="text/javascript">
function ShowCurrentTime() {
PageMethods.GetCurrentTime(document.getElementById("<%=txtUserName.ClientID%>").value, OnSuccess);
}
function OnSuccess(response, userContext, methodName) {
alert(response);
}
    </script>

            <form id="form1" runat="server">
            <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
            </asp:ScriptManager>
            <div>
            Your Name :
            <asp:TextBox ID="txtUserName" runat="server" ></asp:TextBox>
            <input id="btnGetTime" type="button" value="Show Current Time" onclick="ShowCurrentTime()"/>
            </div>
            </form>
</body>
</html>
