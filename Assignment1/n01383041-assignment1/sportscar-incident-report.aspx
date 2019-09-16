<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sportscar-incident-report.aspx.cs" Inherits="n01383041_assignment1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sportscar Incident Report</title>
</head>
<body>
    <h1>Car Incident Report</h1>
    <form id="form1" runat="server">
        <div>
            <h2>Please fill out the information below:</h2>
            <section>
                <label>First Name:</label>
                <asp:TextBox runat="server" ID="aspx_client_fname" placeholder="e.g. Gavin"></asp:TextBox>
                <label>Last Name:</label>
                <asp:TextBox runat="server" ID="aspx_client_lname" placeholder="e.g. Smith"></asp:TextBox>
                <div>
                    <label>E-mail Address:</label>
                    <asp:TextBox runat="server" ID="aspx_client_email" placeholder="g.smith@me.com"></asp:TextBox>
                </div>
            </section>
            <section>
                <h2>About the Incident</h2>
                <h3>What time did the incident take place?</h3>
                <asp:DropDownList runat="server" ID="aspx_time_of_incident">
                    <asp:ListItem Text="00:01-06:00" Value="midnight_to_six_am"></asp:ListItem>
                    <asp:ListItem Text="06:01-12:00" Value="six_am_to_noon"></asp:ListItem>
                    <asp:ListItem Text="12:01-18:00" Value="noon_to_six_pm"></asp:ListItem>
                    <asp:ListItem Text="18:01-00:00" Value="six_pm_to_midnight"></asp:ListItem>
                </asp:DropDownList>
                <h3>How many vehicles were involved in the incident?</h3>
                <asp:DropDownList runat="server" ID="aspx_number_of_vehicles">
                    <asp:ListItem Text="1" Value="aspx_one_vehicles"></asp:ListItem>
                    <asp:ListItem Text="2" Value="aspx_two_vehicles"></asp:ListItem>
                    <asp:ListItem Text="3+" Value="aspx_three_or_more_vehicles"></asp:ListItem>
                </asp:DropDownList>
                <h3>What type of vehicle was being driven when the incident happened?</h3>
                <asp:RadioButtonList runat="server" ID="aspx_car_type">
                    <asp:ListItem Text="Sedan" Value="type_sedan"></asp:ListItem>
                    <asp:ListItem Text="S.U.V" Value="type_suv"></asp:ListItem>
                    <asp:ListItem Text="Crossover" Value="type_crossover"></asp:ListItem>
                    <asp:ListItem Text="Other" Value="type_other"></asp:ListItem>
                </asp:RadioButtonList>
            </section>
            <section>
                <h2>More Info</h2>
                <h3>What level is your driver's license</h3>
                <asp:RadioButton runat="server" Text="G1 |" ID="aspx_g1_license" GroupName="aspx_client_license" />
                <asp:RadioButton runat="server" Text="G2 |" ID="aspx_g2_license" GroupName="aspx_client_license" />
                <asp:RadioButton runat="server" Text="G" ID="aspx_g_license" GroupName="aspx_client_license" />
                <h3>Please select all that apply:</h3>
                <asp:CheckBoxList runat="server" ID="aspx_client_statements">
                    <asp:ListItem Text="Are you a citizen or Permenant Resident of this country?" Value="aspx_is_citizen"></asp:ListItem>
                    <asp:ListItem Text="Have you been in an incident within the last 5 years?" Value="aspx_had_incident"></asp:ListItem>
                    <asp:ListItem Text="Is the vehicle registered under the name stated above?" Value="aspx_is_registered_under_name"></asp:ListItem>
                </asp:CheckBoxList>
            </section>
            <asp:Button Text="Submit" ID="Submit" runat="server" />

        </div>
    </form>
</body>
</html>
