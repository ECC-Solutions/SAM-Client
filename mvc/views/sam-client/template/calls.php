
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
                <span class="title">Scheduled Calls</span>
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
                            <span class="title">Date range: 3 July 2013 - present</span>

                        </span>
                        <li class="head">

                            <span>Company</span>
                            <span>Date</span>
                            <span>Feedback</span>
                            <span>Objective</span>

                        </li>


                        <li class="me noRecord">
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
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