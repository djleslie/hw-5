﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <titleLoan Calculator</title>
  <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
</head>
<body>
    <form id="form1" runat="server">
   
    <header>
    Dalton Leslie's Loan Calculator
    </header>
     
     
            
      Loan Amount:<asp:TextBox ID="tbLoanAmt" runat="server"></asp:TextBox>
        &nbsp;
                <asp:RequiredFieldValidator ID="fieldValidator" runat="server" 
                     ControlToValidate="tbLoanAmt" 
                     ErrorMessage="* Must Enter Loan amount." BorderStyle="Solid"></asp:RequiredFieldValidator>
           
           <br /><br />
        Annual Interest %: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        &nbsp;
            <asp:RequiredFieldValidator ID="FieldValidator1" runat="server" 
                     ControlToValidate="tbAnnualInterest" 
                     ErrorMessage="* Must Enter Interest Rate." BorderStyle="Solid"></asp:RequiredFieldValidator>

           
            
        <br /><br />

        Loan Term (Yrs): <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        &nbsp;
                <asp:RequiredFieldValidator ID="FieldValidator2" runat="server" 
                     ControlToValidate="tbLoanTerm" 
                     ErrorMessage="* Must Enter Loan Term." BorderStyle="Solid"></asp:RequiredFieldValidator>
           
             <asp:RangeValidator
             ControlToValidate="tbLoanTerm"
             MinimumValue="0"
             MaximumValue="100"
            Type="Double"
            EnableClientScript="false"
            ErrorMessage="Must be a reasonable number"
                runat="server" BorderStyle="Solid" />
                
                <br /><br />


        <div class ="Buttons">
   &nbsp;&nbsp;&nbsp;&nbsp
     <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate"/>
     <asp:Button ID="Button1" runat="server" Text="Clear"/>
     </div>
        <br />
            
        
        <% If Not IsPostBack Then %>
            <p> Welcome to my mortgage calculator. Please complete the field above to have your monthly payment and loan repayment schedule calculated for you...</p>
        <% Else%>
        <br />
         
        <div class ="MonthlyPmt" > 
        <h1>Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label></h1>
        </div>
        <br />
        <br />
        
        <div class="GridView">
        <asp:GridView ID="loanGridView" runat="server" BackColor="White" BorderColor="#00FFFF" BorderStyle="solid" BorderWidth="8px" CellPadding="10" ForeColor="Black" GridLines="Vertical" >
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle CssClass="row" BackColor="#F7F7DE" />
            <AlternatingRowStyle CssClass="altRow" BackColor="White" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        </div>
        <br /> 
        <%End If%>
    </form>
</body>
</html>
