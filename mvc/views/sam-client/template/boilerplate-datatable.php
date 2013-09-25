<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title><?php echo $title; ?>S.A.M Sys. - ECC Solutions</title>
        <!--meta-->
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="robots" content="noindex, nofollow" />
        <meta name="language" content="en" />
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <meta http-equiv="Content-Language" content="ar-EG" />
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/samCloud/css/global.css" />
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    </head>
    <body>
        <div class="pusherMsg"></div>
        <div class="pushNotification"></div>
        <?php if (count($Notices) >= 1) { ?>
            <div class="noticeBox">
                <div class="closeNotice"><a href="javascript:void(0)" onclick="javascript:removeNotice()" title=""><img src="<?php echo base_url() . "assets/samCloud/images/delete.png" ?>" alt="" /></a></div>
                <?php foreach ($Notices as $noticeRow) { ?>
                    <h1><?php echo $noticeRow->subject_notif; ?></h1>
                    <p><?php echo $noticeRow->message_notif; ?></p>
                <?php } ?>
            </div>
        <?php } ?>	
        <div id="wrapper" class="clearfix">
            <div id="bar">
                <!--<div class="system_logo">
                        <a href="" title="">
                                <img src="<?php echo base_url() . "assets/samCloud/images/transparent.gif"; ?>" class="logo esq" alt="" />
                        </a>
                </div>-->
                <!--system_logo-->
                <div class="company_logo">
                    <a href="" title="">
                        <img src="<?php echo base_url() . "assets/samCloud/images/transparent.gif"; ?>" class="logoImg ecc" alt="" />
                    </a>				
                </div>
                <!--company_logo-->
                <ul class="navigation">
                    <li style="border-right:none;">
                        <a href="javascript:void(0)" onclick="dataTable('calls', '0')" data-func="dataTable('calls')" title="" name="calls managment">
                            <span class="icon">
                                <img src="<?php echo base_url(); ?>assets/samCloud/images/transparent.gif" alt="" class="icons phone" style="margin-top:0px" />
                            </span>
                        </a>
                        <a href="javascript:void(0)" onclick="insert('calls')" data-func="insert('calls')" title="" name="new call">
                            <span class="icon">
                                <img src="<?php echo base_url(); ?>assets/samCloud/images/transparent.gif" alt="" class="icons newCallIco" style="margin-top:0px" />
                            </span>
                        </a>
                    </li>	
                    <li>
                        <a href="javascript:void(0)" onclick="dataTable('companies', '0')" data-func="dataTable('companies')" title="" name="Companies">
                            <span class="icon">
                                <img src="<?php echo base_url(); ?>assets/samCloud/images/transparent.gif" alt="" class="icons company" style="margin-top:0px" />
                            </span>
                        </a>
                        <a href="javascript:void(0)" onclick="dataTable('accounts', '0')" data-func="dataTable('accounts')" title="" name="Account owners">
                            <span class="icon">
                                <img src="<?php echo base_url(); ?>assets/samCloud/images/transparent.gif" alt="" class="icons account" style="margin-top:4px;" />
                            </span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)" onclick="dataTable('products', '0')" data-func="dataTable('products')" title="" name="Products">
                            <span class="icon">
                                <img src="<?php echo base_url(); ?>assets/samCloud/images/transparent.gif" alt="" class="icons product" style="margin-top:2px;" />
                            </span>
                        </a>
                        <a href="javascript:void(0)" onclick="dataTable('resources', '0')" data-func="dataTable('resources')" title="" name="Resources">
                            <span class="icon">
                                <img src="<?php echo base_url(); ?>assets/samCloud/images/transparent.gif" alt="" class="icons resource" style="margin-top:0px" />
                            </span>
                        </a>
                    </li>

                    <li style="border-right:none;">
                        <a href="javascript:void(0)" onclick="dataTable('employees', '0')" data-func="dataTable('employees')" title="" name="Employees">
                            <span class="icon">
                                <img src="<?php echo base_url(); ?>assets/samCloud/images/transparent.gif" alt="" class="icons profile" style="margin-top:4px;" />
                            </span>
                        </a>
                        <a href="javascript:void(0)" onclick="dataTable('departments', '0')" data-func="dataTable('departments')" title="" name="Departments">
                            <span class="icon">
                                <img src="<?php echo base_url(); ?>assets/samCloud/images/transparent.gif" alt="" class="icons folder" style="margin-top:4px;" />
                            </span>
                        </a>
                    </li>				


                </ul>
                <!--naviagation-->
                <div class="user_profile">
                    <div class="logout">
                        <a href="<?php echo base_url(); ?>samCloud/logout.html" title="logout">
                            <img class="icons logout_icon" alt="" src="<?php echo base_url(); ?>assets/samCloud/images/transparent.gif"></span>
                        </a>
                    </div>
                    <!--logout-->
                    <div class="myprofile">
                        <div class="emp_profile">
                            <div class="img">
                                <?php foreach ($Emp as $emp) { ?>
                                    <?php
                                    $this->db->SELECT('*');
                                    $this->db->FROM('ecc_employee_empmeta');
                                    $this->db->WHERE('idemp_empmeta', $emp->id_emp);
                                    $meta = $this->db->GET();

                                    $thisMeta = array();
                                    foreach ($meta->result() as $row2) {
                                        $thisMeta[$row2->metaKey_empmeta] = $row2->metaValue_empmeta;
                                    }//meta 

                                    $MetaEmp = array(
                                        'first_name' => $thisMeta['first_name'],
                                        'last_name' => $thisMeta['last_name'],
                                        'position' => $thisMeta['position'],
                                        'avatar' => $thisMeta['avatar'],
                                        'mobile' => $thisMeta['mobile']
                                    );
                                    ?>
                                    <img src="<?php echo base_url(); ?>post_data/employees/photo/<?php echo $MetaEmp['avatar']; ?>" alt="<?php echo $name . " a " . $position; ?>" />
                                <?php } ?>
                            </div>
                            <div class="name bold"><?php echo $MetaEmp['first_name'] . " " . $MetaEmp['last_name']; ?></div>
                            <div class="position gray"><?php echo $MetaEmp['position']; ?></div>
                        </div>
                        <!--emp_profile-->

                    </div>
                    <!--user_profile-->
                    <div class="blue_button" style="display:none;">
                        <a href="javascript:void(0)" onclick="javascript:insert('calls')" title="">
                            <span class="icon"><img class="icons phone_w" alt="" src="<?php echo base_url(); ?>assets/samCloud/images/transparent.gif"></span>
                            <span class="title">new call</span>										
                        </a>
                    </div>
                    <!--blue_button-->
                    <div class="blue_button">
                        <a href="javascript:void(0)" onclick="dataTable('reports')" title="" name="Reports">
                            <span class="icon"><img src="<?php echo base_url(); ?>assets/samCloud/images/transparent.gif" alt="" class="icons reports_w" style="margin-top:1px;" /></span>
                            <span class="title">Reports</span>										
                        </a>
                    </div>
                    <!--blue_button-->

                    <ul class="notificationBox">

                        <li>
                            <a href="javascript:void(0)" title="">
                                <span class="icon"><img class="icons phone_notification" alt="" src="<?php echo base_url(); ?>assets/samCloud/images/transparent.gif"></span>
                                <span class="title PullCount"><?php echo count($pullCount); ?></span>								
                            </a>
                        </li>
                        <div class="notificationList" style="display:none"></div>
                        <!--notificationList-->
                    </ul>
                    <!--notification-->	

                </div>
                <!--user_profile-->
            </div>
            <!--side-->
            <div id="container">
                
                
                
<div class="box PreviewHere">
    <script type="text/javascript">
        $(function() {

            $('ul.tabs li a').click(function() {
                $(this).addClass('selected');
                $(this).parent().siblings().find('a.selected').removeClass('selected');
            })
            //tabs
            $('.gray_light a').click(function() {
                $('ul.tabs li a.addnew').addClass('selected');
                $('ul.tabs li a.addnew').parent().siblings().find('a.selected').removeClass('selected');
            });
            $('.close').click(function() {
                $('.notification_box').removeRow();
            });

        });
        setTimeout(function() {
            $.ajax({
                type: 'GET',
                url: "<?php echo base_url() . 'boffice/dataTable/calls/0'; ?>",
                //data: {},//add variables
                beforeSend: function() {
                    //this is were the loading image load
                    //$('.PreviewHere').append('<div class="preloading"><img src="<?php echo base_url() . "assets/images/loading.gif"; ?>" alt="تحميل" /></div>').show();
                },
                success: function(data) {
                    //successful request, do somthing with the data
                    //$('.PreviewHere').html(data).show();
                    //$(".preloading").remove();
                },
                error: function() {
                    //failed request
                },
                datatype: 'html'
            })//ajax		
        }, 10);
    </script>

    <div class="box_container">
        <div class="box_header">
            <div class="blue_button">
                <span class="icon"><img src="<?php echo base_url(); ?>assets/boffice/images/transparent.gif" alt="" class="icons account_w" /></span>
                <span class="title">Scheduled</span>						
            </div>
            <!--blue_button-->
            <?php if ($level == 1 || ($level == 3 && $manager == true)) { ?>						
                <div class="gray_light" style="float:right;">
                    <a href="javascript:void(0)" onclick="dataTable('notifications')" title="" name="Notifications">
                        <span class="icon" style="float:left;"><img src="<?php echo base_url(); ?>assets/boffice/images/transparent.gif" alt="" class="icons notification" /></span>
                        <span class="title" style="float:left;">Notifications</span>
                    </a>
                </div>
                <!--blue_button-->
            <?php } ?>										
        </div>
        <!--box_header-->
        <div class="box_content">
            <ul class="tabs clearfix">
                    <li>
                        <a href="javascript:void(0)" onclick="dataTable('calls')" title="" class="selected">
                            <span class="icon"><img src="<?php echo base_url(); ?>assets/boffice/images/transparent.gif" alt="" class="icons profile" /></span>
                            <span class="title">All Calls</span>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0)" onclick="javascript:insert('<?php echo $type; ?>')" title="" class="addnew">
                            <span class="icon"><img src="<?php echo base_url(); ?>assets/boffice/images/transparent.gif" alt="" class="icons edit" /></span>
                            <span class="title">Add new</span>
                        </a>
                    </li>										
            </ul>
            <!--tabs-->
            <div class="box_content_container loadDatahere">
                <div class="box_content">
                    <!--<h1>All Accounts</h1>-->
                    <ul class="data_table clearfix">
                        <script type="text/javascript">
        $(function() {

            //data table
            $('ul.data_table li:odd').addClass('odd');
            $('ul.data_table li:nth-child(3)').css('border-top', 'none');
            var row = $('ul.data_table li.head span').length;
            var width = $('ul.data_table li.head').width();
            var column = width / row;
            var first = width * 0.2;
            var whole = width - first;
            var finalWidth = whole / (row - 1);

            var Cols = $('ul.data_table li.head span').length;


            if (Cols == '1') {
                $('ul.data_table li span:first-child').addClass('name');
                $('ul.data_table li span').css('width', '99.5%');
                //$('ul.data_table li span.name').css('width', first-6);			
            } else {
                $('ul.data_table li span:first-child').addClass('name');
                $('ul.data_table li span').css('width', finalWidth - 6);
                $('ul.data_table li span.name').css('width', first - 6);
            }

        });
                        </script>									
                        
												

                        
                            <span class="header_title">
                                <span class="title">All upcoming calls</span>
                                <span class="gray_light">
                                    <a href="javascript:void(0)" onclick="javascript:insert('<?php echo $type; ?>')" title="">
                                        add new
                                    </a>
                                </span>
                            </span>
                            <li class="head">

                                    <span></span>

                            </li>

                            
                                <li class="me noRecord">
                                    <span>No records available</span>
                                </li>
                                <span class="bottom_state gray">No records available</span>									


                          		

                    </ul>
                </div>
            </div>
            <!--box_content_container-->					
        </div>
        <!--box_content-->
    </div>
    <script type="text/javascript">
        $(function() {
            /*
             //data table
             $('ul.data_table li:odd').addClass('odd');
             $('ul.data_table li:nth-child(3)').css('border-top', 'none');
             var row = $('ul.data_table li.head span').length;
             var width = $('ul.data_table li.head').width();
             var column = width/row;
             var first = width*0.2;
             var whole = width - first;
             var finalWidth = whole/(row-1);
         
             var Cols = $('ul.data_table li.head span').length;
         
         
             if(Cols == '1'){
             $('ul.data_table li span:first-child').addClass('name');
             $('ul.data_table li span').css('width', '99.5%');		
             //$('ul.data_table li span.name').css('width', first-6);			
             }else{
             $('ul.data_table li span:first-child').addClass('name');
             $('ul.data_table li span').css('width', finalWidth-6);		
             $('ul.data_table li span.name').css('width', first-6);			
             }
             */


            $('ul.tabs li a').click(function() {
                $(this).addClass('selected');
                $(this).parent().siblings().find('a.selected').removeClass('selected');
            })
            //tabs
            $('.gray_light a').click(function() {
                $('ul.tabs li a.addnew').addClass('selected');
                $('ul.tabs li a.addnew').parent().siblings().find('a.selected').removeClass('selected');
            });
            $('.close').click(function() {
                $('.notification_box').removeRow();
            });
        });
    </script>
</div>
<!--box-->

<footer class="clearfix">
    <div class="right_footer">
        <div class="footer_logo">
            <a href="" title="">
                <img alt="" class="logoImg ecc" src="<?php echo base_url(); ?>assets/boffice/images/transparent.gif">
            </a>
        </div>
        <div class="powered">Powered by ECC Solutions<br />all rights reserved 2012 - <?php echo date('Y'); ?></div>
    </div>
    <div class="left_footer">
        S.A.M Cloud Sys.<br /> 
        Usage of this website is internally for the employees of <b>ECC Solutions</b> only. <br /><br />
        Sales Account Management Sys. v.1 2012
    </div>
</footer>
</div>
<!--container-->
</div>
<!--wrapper-->
<script type="text/javascript" src="<?php echo base_url(); ?>samCloud/initial.html"></script>
</body>
</html>
                