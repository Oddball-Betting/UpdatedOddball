<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="WebApplication1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <style>
       *{
        padding:0;
        margin:0;
        box-sizing: border-box;
       } 
       body {
           background-image: linear-gradient(to left, rgb(182, 244, 146), rgb(51, 139, 147));
       }
       .row {
         /*  box-shadow: 12px 12px 12px gray; // Boxshadowing*/
           background: white;
           border-radius: 10px;
           margin: 30px;
           
       }

       .lbl1 {
         color:red;
         font-size:12pt;
         font-weight:bold;
           
       }

       img {
        height: 70px;
        width: 70px;
        border-top-left-radius: 10px;
        border-bottom-left-radius: 10px;
       border-top-right-radius: 10px;
        border-bottom-right-radius: 10px;   
        
    
       }
       

       .btn3 {
        
        border: limegreen;
        outline: lightgreen;
        height: 50px;
        width:100%;
        background: green;
        color: white;
        border-radius: 4px;
        font-weight: bold;
        font-size: 12pt;
       }
       .btn1:hover {
           background: white;
           border: 1px solid;
           color: black;
       }
    </style>
   
    
    <div class="container">
         <div class="row"> 
             
               <div class="card">
                <div class="card-body">
                    <label></label>
                    
                   
            
            
            
                 <center>
                  <h1 class="font-weight-bold">Oddball</h1>
                  <h4> Create Account</h4>
                               <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                                
                                 <label></label>
                 </center>
                
                     <div class="form-group">
                     
                            <center>
                         
                           
                            <asp:TextBox placeholder="Email" CssClass="form-control" ID="Textbox3" runat="server" ></asp:TextBox>
                           </center>
                        </div>
                     </div>
                     <div class="form-group">
                        <div class=" col">
                            
                           <center>
                            
                            <asp:TextBox placeholder="First Name" CssClass="form-control" ID="Textbox4" runat="server" ></asp:TextBox>

                           </center>
                        </div>
                     </div>
                    <div class="form-group">
                        <div class=" col">
                            
                           <center>
                            
                            <asp:TextBox placeholder="Last Name" CssClass="form-control"  ID="Textbox5" runat="server" ></asp:TextBox>

                           </center>
                        </div>
                     </div>
                    <div class="form-group">
                        <div class=" col">
                            
                           <center>
                            
                            <asp:TextBox placeholder="Username" CssClass="form-control"  ID="Textbox6" runat="server" ></asp:TextBox>

                           </center>
                        </div>
                     </div>
                    <div class="form-group">
                        <div class=" col">
                            
                           <center>
                            
                            <asp:TextBox placeholder="Password" CssClass="form-control" ID="Textbox7" runat="server" ></asp:TextBox>

                           </center>
                        </div>
                     </div>
                    <div class="form-group">
                        <div class=" col">
                            
                           <center>
                            <label> Date of Birth MM/DD/YYYY </label>
                            <asp:TextBox Text="01/01/2020" CssClass="form-control" ID="Textbox8" runat="server" ></asp:TextBox>
                               
                           </center>
                        </div>
                     </div>
                    <div class="form-group">
                        <div class=" col">
                            
                           <center>
                            
                            <asp:TextBox placeholder="Country" CssClass="form-control" ID="Textbox9" runat="server" ></asp:TextBox>

                           </center>
                        </div>
                     </div>
                    <div class="form-group">
                        <div class=" col">
                            
                           <center>
                            
                            <asp:TextBox placeholder="ST" CssClass="form-control" ID="Textbox10" runat="server" ></asp:TextBox>

                           </center>
                        </div>
                     </div>
                    <div class="form-group">
                        <div class=" col">
                            
                           <center>
                            
                            <asp:TextBox placeholder="Street" CssClass="form-control" ID="Textbox11" runat="server" ></asp:TextBox>

                           </center>
                        </div>
                     </div>
                    <div class="form-group">
                        <div class=" col">
                            
                           <center>
                            
                            <asp:TextBox placeholder="City" CssClass="form-control" ID="Textbox12" runat="server" ></asp:TextBox>

                           </center>
                        </div>
                     </div>
                    <div class="form-group">
                        <div class=" col">
                            
                           <center>
                            
                            <asp:TextBox placeholder="Zip" CssClass="form-control" ID="Textbox13" runat="server" ></asp:TextBox>

                           </center>
                        </div>
                     </div>
                    <div class="form-group">
                        <div class=" col">
                            
                           <center>
                            
                            <asp:TextBox placeholder="Phone Number" CssClass="form-control" ID="Textbox14" runat="server" ></asp:TextBox>

                           </center> 
                        </div>
                        
                     </div>
                     <div class="form-group">
                         <center>  
                        <asp:Button ID="Button1" CssClass="btn3" OnClick="Button4_Click" runat="server" Text="Create Account" />

                         </center>
                </div>
                 
            </div>
                  
             </div>
             
         


     </div>
</asp:Content>





