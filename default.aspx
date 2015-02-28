﻿﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Loan Calculator</title>
</head>
<body>
    <form id="form1" runat="server">
   
    <header>
    Dalton Leslie's Loan Calculator
    </header>
      <div id="Content">   
        <br /><br />
     
            
        Loan Amount:<asp:TextBox ID="tbLoanAmt" runat="server"></asp:TextBox>
        &nbsp;
            <span class="errorMessage">
                <asp:RequiredFieldValidator ID="rfv_name" runat="server" 
                     ControlToValidate="tbLoanAmt" 
                     ErrorMessage="** Must Enter Loan amount.">
                </asp:RequiredFieldValidator>
            </span>
          
        <br /><br />
        Annual Interest %: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        &nbsp;
            <span class="errorMessage">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                     ControlToValidate="tbAnnualInterest" 
                     ErrorMessage="** Must Enter Interest Rate.">
                </asp:RequiredFieldValidator>

            </span>
            <span class="errorMessage">
                <asp:RangeValidator ID="RangeValidator1" runat="server"
                    ControlToValidate="tbAnnualInterest" 
                    ErrorMessage="Invalid Rate" 
                    Type="Double" MinimumValue="0">
               
                </asp:RangeValidator>
                </span>
        <br /><br />

        Loan Term (Yrs): <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        &nbsp;
            <span class="errorMessage">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                     ControlToValidate="tbLoanTerm" 
                     ErrorMessage="** Must Enter Loan Term.">
                </asp:RequiredFieldValidator>
            </span>
         
        <br /><br />

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" />
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Clear" />
        
        <br />
            
        </div>
        <% If Not IsPostBack Then %>
            <p> Welcome to my mortgage calculator. Please complete the field above to have your monthly payment and loan repayment schedule calculated for you.</p>
        <% Else%>
        <br />
                
        Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>
        
        <br /><br />
        
        <asp:GridView ID="loanGridView" runat="server" >
            <RowStyle CssClass="row" />
            <AlternatingRowStyle CssClass="altRow" />
        </asp:GridView>
        <br /> 
        <%End If%>
    </form>
</body>
</html>
