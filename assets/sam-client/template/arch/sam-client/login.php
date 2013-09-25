<div class="login">
    <div class="login_container">
        <div class="login_content">
            <form name="login_form">
                <div class="line_container">
                    <label>Email</label>
                    <div class="input_container">
                        <input type="text" value="" placeholder="Type your email" name="username" />
                    </div>
                    <!--line_container-->
                </div>
                <!--line_container-->
                <div class="line_container">
                    <label>Password</label>
                    <div class="input_container">
                        <input type="password" value="" placeholder="Type your password" name="password" />
                    </div>
                    <!--line_container-->
                </div>
                <!--line_container-->
                <?php if ($error == true || isset($error)) { ?>
                <div class="line_container" style="margin-bottom:0;">
                    <label style="color:red; line-height:1.5"><?php echo $error; ?></label>
                </div>
                <div class="line_container" style="margin-bottom:0;">
                    <label style="color:#1155CC; line-height:1.5"><?php echo $message; ?></label>
                </div>
                <?php } ?>
                <div class="line_container clearfix">
                    <div class="blue_button">
                        <button type="submit" id="login">Login</button>
                    </div>
                    <!--blue_button-->
                </div>
                <!--line_container-->
            </form>
        </div>
    </div>
    <!--login_container-->
</div>
<!--login-->
<div class="loginFooter">
    <p style="padding-bottom:10px; border-bottom:1px solid #f7f7f7;">
        S.A.M Cloud Sys.<br />
        Usage of this website is internally for the employees <br />of <b>ECC Solutions</b> only. <br /><br />
        Sales Account Management Sys. v.1 2012
    </p>
    <p style="border-top:1px solid #ccc; padding-top:10px;">
        If you don't know what to do next, you might reached here by mistake, could you please try to go to our website <a href="http://www.eccsolutions.net" title="">http://www.eccsolutions.net</a>
    </p>
</div>