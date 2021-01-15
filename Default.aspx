<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <style type = "text/css">
        body
        {
            font-family:Arial;
            font-size:10pt;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
<asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
    runat="server" AutoGenerateColumns="false">
    <Columns>
        <asp:BoundField DataField="Id" ItemStyle-CssClass="Id" HeaderText="Id" ItemStyle-Width="30" />
        <asp:BoundField DataField="Name" ItemStyle-CssClass="Name" HeaderText="Name" ItemStyle-Width="150" />
        <asp:BoundField DataField="Description" ItemStyle-CssClass="Description" HeaderText="Description"
            ItemStyle-Width="150" />
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton Text="View" ID="lnkView" runat="server" />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<div id="dialog" style="display: none">
    <b>Id:</b> <span id="id"></span>
    <br />
    <b>Name:</b> <span id="name"></span>
    <br />
    <b>Description:</b> <span id="description"></span>
</div>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js" type="text/javascript"></script>
<link href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/start/jquery-ui.css"
    rel="stylesheet" type="text/css" />
<script type="text/javascript">
    $(document).on("click", "[id*=lnkView]", function () {
        $("#id").html($(".Id", $(this).closest("tr")).html());
        $("#name").html($(".Name", $(this).closest("tr")).html());
        $("#description").html($(".Description", $(this).closest("tr")).html());
        $("#dialog").dialog({
            title: "View Details",
            buttons: {
                Ok: function () {
                    $(this).dialog('close');
                }
            },
            modal: true
        });
        return false;
    });
</script>
    </form>
</body>
</html>
