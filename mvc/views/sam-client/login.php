<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title><?php echo isset($title) ? $title . " - " : ''; ?> S.A.M CLOUD Sys. - ECC Solutions</title>
        <!--meta-->
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="robots" content="noindex, nofollow" />
        <meta name="language" content="<?php echo isset($language) ? $language : 'en'; ?>" />
        <?php if (isset($description)) { ?>
            <meta name="description" content="<?php echo isset($description) ? $description : ''; ?>" />
        <?php }if (isset($keywords)) { ?>
            <meta name="keywords" content="<?php echo isset($keywords) ? $keywords : ''; ?>" />
        <?php } ?>
        <meta http-equiv="Content-Language" content="en" />
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/sam-client/css/global.css" />
        <script type="text/javascript" src="<?php echo base_url(); ?>assets/sam-client/js/libs/jquery.js"></script>
    </head>

    <body class="loginPage">
        <div id="wrapper" class="clearfix">

            <div class="login">
                <div class="showStatus" style="display:none;">
                    
                    <div class="overlay_black"></div>
                    <div class="status">
                        <a href="#" class="closethis" title=""><img class="close_icon" src="<?php echo base_url(); ?>assets/sam-client/images/close_icon.png" alt="click to close" /></a>
                        <div class="statusHere"></div>
                    </div>
                </div>
                <div class="login_container">
                    <div class="login_content">
                        <form name="login_form">
                            <div class="line_container">
                                <label>Email</label>
                                <div class="input_container">
                                    <input type="text" value="<?php echo set_value('username'); ?>" name="username" />
                                </div>
                                <!--line_container-->
                            </div>
                            <!--line_container-->
                            <div class="line_container">
                                <label>Password</label>
                                <div class="input_container">
                                    <input type="password" value="" name="password" />
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
            <script>
                $('.closethis').click(function(){
                    $('.showStatus').hide();
                });
                var submitPublish = function(event) {
                    event.preventDefault();
                    event.stopPropagation();

                    var data = new FormData(document.forms.namedItem("login_form"));
                    $(".pageHere").append('<div class="preloading"><img src="<?php echo base_url() . "assets/images/loading.gif"; ?>" alt="loading" /></div>').show();
                    var request = new XMLHttpRequest();
                    request.open('POST', '<?php echo base_url() . "sam-client/i/login" ?>');
                    //show loading
                    $('.showStatus').show();
                    $('.statusHere').html('Please wait while we authenticating you ... ');

                    request.send(data);
                    request.onreadystatechange = function()
                    {
                        if (request.readyState === 4) {
                            //var response = request.responseText.split(',');
                            var response = $.parseJSON(request.responseText);
                            //var response = request.responseText;
                            if (response.status === true) {
                                //the user logged in successfully
                                window.location.replace('<?php echo base_url(); ?>sam-client/sam');
                                $('.showStatus').show();                                
                                $('.statusHere').html(response.responseText);                                
                            } else {
                                //where is an error occurred
                                $('.showStatus').show();
                                $('.statusHere').html(response.error);
//                                setTimeout(function() {
//                                    $('.showStatus').hide();
//                                }, 30000);

                            }

                        }

                    };
                };

                //insert translation
                var publish = document.getElementById('login');
                publish.addEventListener('click', submitPublish);
            </script>

        </div>
        <!--wrapper-->
    </body>
</html>