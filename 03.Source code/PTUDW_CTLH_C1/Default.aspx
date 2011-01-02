<%@ Page Language="C#" MasterPageFile="~/Shared/Main_3col.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="PTUDW_CTLH_C1._Default" %>

<%@ MasterType VirtualPath="~/Shared/Main_3col.Master" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="welcome">
        <p class="mytitle">
            Chào mừng bạn đến với Genius</p>
        <asp:Label ID="ltrWelcome" CssClass="normal_text" runat="server">Genius là công ty xe khách lữ hành được thành lập vào ngày 2/12/2006. Trụ sợ chính của công ty đặt tại số 227 Nguyễn Văn Cừ, phường 4, quận 5, thành phố Hồ Chí Minh. Với hệ thống chi nhánh và bến bãi được đặt trên khắp cả nước cùng với một lượng xe khách đông đảo với chất lượng cao, Genius luôn đảm bảo phục vụ quý khách mọi lúc, mọi nơi. Bên cạnh đó, đội ngũ nhân viên của công ty được tuyển chọn và đào tạo bài bản sẽ giúp cho quý khách cảm thấy hài lòng nhất về chất lượng dịch vụ.
Hiện tại, Genius cung cấp hai loại dịch vụ chính: dịch vụ xe khách chạy theo tuyến cố định và dịch vụ xe khách hợp đồng. Phương châm của chúng tôi là: chất lượng là danh dự.</asp:Label>
    </div>
    <br />
    <div id="hottour_block">
        <p class="mytitle">
            Hot Tours</p>
        <div id="img_block">
            <div class="hottour_img">
                <asp:Image ID="imgHotTour1" AlternateText="Hot tour 1" ImageUrl="~/App_Themes/MainTheme/images/pic1.jpg" runat="server" />
                <span>Phan&nbsp;Thiết</span>
            </div>
            <div class="hottour_img">
                <asp:Image ID="imgHotTour2" AlternateText="Hot tour 2" ImageUrl="~/App_Themes/MainTheme/images/pic2.jpg" runat="server" />
                <span>Đà Lạt</span>
            </div>
            <div class="hottour_img">
                <asp:Image ID="imgHotTour3" AlternateText="Hot tour 3" ImageUrl="~/App_Themes/MainTheme/images/pic3.jpg" runat="server" />
                <span>Điện Biên</span>
            </div>
            <div class="hottour_img">
                <asp:Image ID="imgHotTour4" AlternateText="Hot tour 4" ImageUrl="~/App_Themes/MainTheme/images/pic4.jpg" runat="server" />
                <span>Hạ Long</span>
            </div>
        </div>
    </div>
</asp:Content>
