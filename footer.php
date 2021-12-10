<?php
	include_once("config.php");
	$dt=new database();
	
?>
<div class="footer">
		<div class="footer-top">
			<div class="container">
				<div class="social-footer">
					<a href="#"><i class="fab fa-facebook-f"></i></a>
					<a href="#"><i class="fab fa-youtube"></i></a>
					<a href="#"><i class="fab fa-skype"></i></a>
				</div>
			</div>
		</div>
		<div class="main-footer">
			<div class="container">
				<div class="box-footer-left">
					<h3>Giới thiệu</h3>
					<?php

						$dt->select("SELECT * FROM info");
						$row=$dt->fetch();
					?>
					<p><?php echo $row['info_footer'] ?></p>
				</div>
				<div class="box-footer-right">
					<h3>Liên Hệ</h3>
					<ul>
	                    <li>
	                        <p><i class="fa fa-home"></i>Số 25 Đường Bến Tượng - TP Thái Nguyên</p>
	                        <p><i class="sp-ic fa fa-mobile" ></i>0972358500</p>
	                        <p><i class="sp-ic fa fa-envelope"></i>tuanb@gmail.com</p>
	                    </li>
	                </ul>
				</div>
				<div class="box-footer-right">
					<h3>DANH MỤC</h3>
					<ul>
						<?php
							$dt->select("SELECT * FROM product_type");
							while ($row=$dt->fetch()) {

							?>
							<li><a href="index.php?view=product_type&id=<?php echo $row['id'] ?>&product_type=<?php echo $row['name_product_type'] ?>"><?php echo $row['name_product_type'] ?></a></li>
							<?php
							}
						?>
					</ul>
				
			</div>
			</div>
			
		</div>
	</div> <!-- end footer -->