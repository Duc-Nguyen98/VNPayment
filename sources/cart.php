<?php
	include_once('config.php');
	$dt=new database();
?>	
<div class="main-content">
	<div class="cart">
		<div class="table-cart">
			<form action="sources/update_cart.php?update" method="post">
			<table boder="1px" cellspacing="10px">
				<tr>
					<th>Sản Phẩm</th>
					<th>Giá</th>
					<th>Ram</th>
					<th>Số lượng</th>
					<th>Tổng</th>
					<th>action</th>
				</tr>
				<?php
					$total_price_cart=0;
					$i=0;
					$info_order ="";
					foreach ($_SESSION as $key => $value) {
						if (substr($key,0,5)=='cart_') {
							$id=substr($key,5);
							$dt->select("SELECT * FROM product WHERE id='$id'");
							$i++;
							while ($row=$dt->fetch()) {
								$lsSize = explode(", ", $row['size_type']);
								if ($_SESSION['cart_'.$row['id']] != 0) {
									$info_order = $info_order." ".$row['name_product']." x".$_SESSION['cart_'.$row['id']]." ".$lsSize[0].",";
								?>
								<tr>
									<td class="img-cart"><img src="admin/sources/product/uploads/<?php echo $row['image_link'] ?>"> <span><?php echo $row['name_product'] ?></span></td>
									<td class="price-cart"><?php if ($row['discount'] > 0) {
										echo number_format($row['discount'])." VNĐ";
									}else {
										echo number_format($row['price'])." VNĐ";
									} ?></td>

									<td><select name="size">
										<?php
											
											foreach($lsSize as $key=>$value){
										?>
											<option><?php echo $value, PHP_EOL; ?></option>
										<?php
											}
										?>
									</select></td>
									
									<td class="quantity-cart">
										<input  type="number" value="<?php echo $_SESSION["cart_".$id] ?>" min="0" step="1" name="total_<?php echo $i ?>">
									</td>
									<td class="total-cart" id="total_price_<?php echo $id ?>"><?php if ($row['discount'] > 0) {
										echo number_format($row['discount']* $_SESSION["cart_".$id])." VNĐ";
										$total_price_cart+=$row['discount']* $_SESSION["cart_".$id];
									}else {
										echo number_format($row['price']* $_SESSION["cart_".$id])." VNĐ";
										$total_price_cart+=$row['price']* $_SESSION["cart_".$id];
									} ?></td>
									<td class="action-cart"><a href="sources/update_cart.php?id=<?php echo $id?>&remove">X</a></td>
									
								</tr>
								<?php
								}
							}
						}
					}
				?>
				<tr>
					
				</tr>
			</table>
			<div class="footer-table">
				<a href="?index.php">Tiếp tục mua hàng</a>
				<input type="submit" value="Cập nhật">
				<p class="total-price-cart">Tổng tiền: <?php echo number_format($total_price_cart).' VNĐ'; ?></p>
			</div>
			</form>
		</div>
		<div class="shipping-cart">
			<table>
			<style>
				.online{
					background-color:#3498db; 
					text-align:center;
					color:#fff;
				}
				a :hover{
					background-color: #e74c3c;
				}
			</style>
				<tr>
					<td>
						<form action="sources/order.php" method="post" class="shipping offline">
							<input required="required"  type="text" name="txh_name"  placeholder="Họ tên" />
							<input required="required" type="email" name="txt_email"  placeholder="Email" />
							<input required="required" type="text" name="txt_phone" id="mobile"  placeholder="Số điện thoại" />
							<input required="required" type="text" name="txt_address"  placeholder="Địa chỉ" />
							<input required="required" name="txt_gia" type="hidden"  value="<?php echo $total_price_cart ?> "/>
							<input required="required" type="submit" class="checkmobile" name="submit" value="Đặt hàng">
						 	
							<input required="required" type="hidden"  name="info_order" value="<?php echo $info_order ?>">
						</form>
						<br />
						<a href="http://localhost:8080/datn/vnpay_php" class="checkmobile shipping offline online" >Đặt hàng online</a>
					</td>
				</tr>
			</table>
		</div>
	</div>
</div>

<script type="text/javascript">
$(document).ready(function() {
    $('body').on('click','.checkmobile', function() {
    var vnf_regex = /((09|03|07|08|05)+([0-9]{8})\b)/g;
    var mobile = $('#mobile').val();
    if(mobile !==''){
        if (vnf_regex.test(mobile) == false) 
        {
            alert('Số điện thoại của bạn không đúng định dạng!');
            return false;
        }else{
            return true;
        }
    }
    });
});
</script>