<?php
/*
 * Created on Fri Oct 15 2021
 *
 *  Devlan - devlan.co.ke 
 *
 * devlaninc18@gmail.com
 *
 * +254 740 847 563 / +254 799 155 770
 *
 * The Devlan End User License Agreement
 *
 * Copyright (c) 2021 DevLan
 *
 * 1. GRANT OF LICENSE
 * Devlan hereby grants to you (an individual) the revocable, personal, non-exclusive, and nontransferable right to
 * install and activate this system on two separated computers solely for your personal and non-commercial use,
 * unless you have purchased a commercial license from Devlan. Sharing this Software with other individuals, 
 * or allowing other individuals to view the contents of this Software, is in violation of this license.
 * You may not make the Software available on a network, or in any way provide the Software to multiple users
 * unless you have first purchased at least a multi-user license from Devlan.
 *
 * 2. COPYRIGHT 
 * The Software is owned by Devlan and protected by copyright law and international copyright treaties. 
 * You may not remove or conceal any proprietary notices, labels or marks from the Software.
 *
 * 3. RESTRICTIONS ON USE
 * You may not, and you may not permit others to
 * (a) reverse engineer, decompile, decode, decrypt, disassemble, or in any way derive source code from, the Software;
 * (b) modify, distribute, or create derivative works of the Software;
 * (c) copy (other than one back-up copy), distribute, publicly display, transmit, sell, rent, lease or 
 * otherwise exploit the Software.  
 *
 * 4. TERM
 * This License is effective until terminated. 
 * You may terminate it at any time by destroying the Software, together with all copies thereof.
 * This License will also terminate if you fail to comply with any term or condition of this Agreement.
 * Upon such termination, you agree to destroy the Software, together with all copies thereof.
 *
 * 5. NO OTHER WARRANTIES. 
 * DEVLAN  DOES NOT WARRANT THAT THE SOFTWARE IS ERROR FREE. 
 * DEVLAN SOFTWARE DISCLAIMS ALL OTHER WARRANTIES WITH RESPECT TO THE SOFTWARE, 
 * EITHER EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO IMPLIED WARRANTIES OF MERCHANTABILITY, 
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT OF THIRD PARTY RIGHTS. 
 * SOME JURISDICTIONS DO NOT ALLOW THE EXCLUSION OF IMPLIED WARRANTIES OR LIMITATIONS
 * ON HOW LONG AN IMPLIED WARRANTY MAY LAST, OR THE EXCLUSION OR LIMITATION OF 
 * INCIDENTAL OR CONSEQUENTIAL DAMAGES,
 * SO THE ABOVE LIMITATIONS OR EXCLUSIONS MAY NOT APPLY TO YOU. 
 * THIS WARRANTY GIVES YOU SPECIFIC LEGAL RIGHTS AND YOU MAY ALSO 
 * HAVE OTHER RIGHTS WHICH VARY FROM JURISDICTION TO JURISDICTION.
 *
 * 6. SEVERABILITY
 * In the event of invalidity of any provision of this license, the parties agree that such invalidity shall not
 * affect the validity of the remaining portions of this license.
 *
 * 7. NO LIABILITY FOR CONSEQUENTIAL DAMAGES IN NO EVENT SHALL DEVLAN  OR ITS SUPPLIERS BE LIABLE TO YOU FOR ANY
 * CONSEQUENTIAL, SPECIAL, INCIDENTAL OR INDIRECT DAMAGES OF ANY KIND ARISING OUT OF THE DELIVERY, PERFORMANCE OR 
 * USE OF THE SOFTWARE, EVEN IF DEVLAN HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES
 * IN NO EVENT WILL DEVLAN  LIABILITY FOR ANY CLAIM, WHETHER IN CONTRACT 
 * TORT OR ANY OTHER THEORY OF LIABILITY, EXCEED THE LICENSE FEE PAID BY YOU, IF ANY.
 */

/* Load System Details */
$ret = "SELECT * FROM system_settings ";
$stmt = $mysqli->prepare($ret);
$stmt->execute(); //ok
$res = $stmt->get_result();
while ($system_settings = $res->fetch_object()) {
?>
	<footer class="site-footer">
		<div class="container">
			<div class="row mb-5">
				<div class="col-md-4">
					<h3 class="mb-4">About</h3>
					<p class="mb-4">
						<?php echo $system_settings->sys_about; ?>
					</p>
					<ul class="list-unstyled ">
						<li class="d-flex"><span class="mr-3"><span class="icon ion-ios-location"></span></span><span class=""><?php echo $system_settings->sys_address; ?></span></li>
						<li class="d-flex"><span class="mr-3"><span class="icon ion-ios-telephone"></span></span><span class=""><?php echo $system_settings->sys_contacts; ?></span></li>
						<li class="d-flex"><span class="mr-3"><span class="icon ion-email"></span></span><span class=""><?php echo $system_settings->sys_email; ?></span></li>
					</ul>
				</div>
				<div class="col-md-2">
					<h3 class="mb-4">Links</h3>
					<ul class="list-unstyled ">
						<li><a href="about">About</a></li>
						<li><a href="sign_in">Sign Up</a></li>
						<li><a href="sign_up">Sign In</a></li>
					</ul>
				</div>
				<div class="col-md-3">
					<h3 class="mb-4">Our Services</h3>
					<ul class="list-unstyled blog-entry-footer">
						<?php
						/* Load Services */
						$ret = "SELECT * FROM services  ";
						$stmt = $mysqli->prepare($ret);
						$stmt->execute(); //ok
						$res = $stmt->get_result();
						while ($service = $res->fetch_object()) {
						?>
							<li><a href="#">
									<span class="post-meta">
										<?php echo $service->service_name; ?></span>
									<h3>Ksh:<?php echo $service->service_rate; ?></h3>
								</a>
							</li>
						<?php } ?>
					</ul>
				</div>
				<div class="col-md-3">
					<h3>Connect</h3>
					<p>
						<a href="#" class="p-2"><span class="fa fa-facebook"></span></a>
						<a href="#" class="p-2"><span class="fa fa-twitter"></span></a>
						<a href="#" class="p-2"><span class="fa fa-instagram"></span></a>
					</p>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-7 text-center">
					Copyright &copy;<script>
						document.write(new Date().getFullYear());
					</script> All rights reserved | Crafted With <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://devlan.co.ke" target="_blank">DevLan</a>
				</div>
			</div>
		</div>
	</footer>
<?php } ?>