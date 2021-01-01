<div class="row" >

    <div class="col-lg-6 col-md-6" >
        <div class="panel panel-yellow">
            <div class="panel-heading">
        <h1>CMS </h1><p style='display:inline'>(Content Management System)</p>
            </div>
                <div class="panel-footer">
                <p>
                ระบบการจัดการเนื้อหาเว็บ
                </p>
                </div>
        </div>
    </div>


                <div class="col-lg-6 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-6">
                                    <i class="fa fa-comments fa-5x"></i>
                                        <div>จำนวนครั้งเข้าชมเว็บ</div>
                                </div>
                                <div class="col-xs-6 text-right">
                                    <div class="huge">
                                      <?php
                                      $this->load->helper('file');

                                      $string = read_file('./counter.txt');
                                      echo $string;

                                      ?>
                                    </div>

                                </div>
                            </div>
                        </div>

                            <div class="panel-footer">

                                <p>
                                  สถิติยอดชมเว็บทุกหน้าที่เข้าชม คิดเป็นจำนวนครั้ง
                                </p>
                            </div>

                    </div>
                </div>
            </div>
