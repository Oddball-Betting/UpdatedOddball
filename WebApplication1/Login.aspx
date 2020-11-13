<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.WebForm2" %>
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

       .btn2 {
        
        border: limegreen;
        outline: lightgreen;
        height: 50px;
        width:100%;
        background: #2592EC;
        color: white;
        border-radius: 4px;
        font-weight: bold;
        font-size: 12pt;
        margin-bottom: 25px;
       }
       img {
        height: 70px;
        width: 70px;
        border-top-left-radius: 10px;
        border-bottom-left-radius: 10px;
       border-top-right-radius: 10px;
        border-bottom-right-radius: 10px;   
        
    
       }
       

       .btn1 {
        
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
                    <center><img src="Images/download (1).png"></img> </center>
                   
            
            
            
                 <center>
                  <h1 class="font-weight-bold">Oddball</h1>
                  <h4> Sign into your Account</h4>
                                <label></label>
                                <asp:Label ID="Label1" CssClass="lbl1" runat="server" Text=""></asp:Label>
                                 <label></label>
                 </center>
                
                     <div class="form-group">
                     
                            <center>
                            
                           
                            <asp:TextBox placeholder="Username" CssClass="form-control" ID="Textbox1" runat="server" ></asp:TextBox>
                           </center>
                        </div>
                     </div>
                     <div class="form-group">
                        <div class=" col">
                            
                           <center>
                            
                            <asp:TextBox placeholder="Password" CssClass="form-control" ID="Textbox2" runat="server" ></asp:TextBox>
                        <label></label>
                               <asp:CheckBox ID="CheckBox1" Text="Remember Me" runat="server"></asp:CheckBox>
                            
                               </center>
                        </div>
                     </div>
                     <div class="form-group">
                         <center>
                          <asp:Button ID="Button1" OnClick="Button1_Click" CssClass="btn1" runat="server" Text="Log In" >  </asp:Button>
                      
                             
                             
                        </center>
                         


                     </div>
                    
                            <center>
                                <label> </label>
                                 
                                <label></label>
                      <asp:Button ID="Button2" OnClick="Button2_Click" CssClass="btn2" runat="server" Text="Create Account">  </asp:Button>
                          
                            

                            </center>
                

                </div>
                 
            </div>
                  
             </div>
             
         


</asp:Content>



