<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Doodle.aspx.cs" Inherits="Doodle" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Doodle Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .user-list {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Doodle Admin Console</h1>

            <div class="user-list">
                <asp:GridView ID="GridViewUsers" runat="server" AutoGenerateColumns="false">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="ID" />
                        <asp:BoundField DataField="Username" HeaderText="Username" />
                        <asp:BoundField DataField="Role" HeaderText="Role" />
                        <asp:ButtonField ButtonType="Button" Text="Edit" CommandName="EditUser" />
                        <asp:ButtonField ButtonType="Button" Text="Delete" CommandName="DeleteUser" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>

    <script runat="server">

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindUserGrid();
            }
        }

        private void BindUserGrid()
        {
            // Example users, replace with your actual user service call
            var users = new List<User>
            {
                new User { Id = 1, Username = "admin", Role = "admin" },
                new User { Id = 2, Username = "user1", Role = "user" },
                new User { Id = 3, Username = "user2", Role = "user" },
            };

            GridViewUsers.DataSource = users;
            GridViewUsers.DataBind();
        }

        protected void GridViewUsers_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditUser")
            {
                // Handle edit user logic
            }
            else if (e.CommandName == "DeleteUser")
            {
                // Handle delete user logic
            }
        }

        public class User
        {
            public int Id { get; set; }
            public string Username { get; set; }
            public string Role { get; set; }
        }

    </script>
</body>
</html>
