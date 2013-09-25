<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title><?php echo $title; ?> - S.A.M CLOUD Sys. - ECC Solutions</title>
        <!--meta-->
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="robots" content="noindex, nofollow" />
        <meta name="language" content="<?php echo isset($language) ? $language : 'en'; ?>" />
        <meta name="description" content="<?php echo isset($description) ? $description : ''; ?>" />
        <meta name="keywords" content="<?php echo isset($keyword) ? $keyword : ''; ?>" />
        <meta http-equiv="Content-Language" content="en" />
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/samCloud/css/global.css" />
        <script data-main="<?php echo base_url(); ?>assets/samCloud/js/main" src="<?php echo base_url(); ?>assets/samCloud/js/libs/require/require.js"></script>
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