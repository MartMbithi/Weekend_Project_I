<!-- jQuery -->
<script src="plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- SweetAlert2 -->
<script src="plugins/sweetalert2/sweetalert2.min.js"></script>
<!-- Init Sweet Alerts -->
<?php if (isset($success)) { ?>
    <script>
        Swal.fire({
            position: 'top-end',
            icon: 'success',
            title: '<?php echo $success; ?>',
            showConfirmButton: false,
            timer: 1500
        })
    </script>

<?php } ?>

<?php if (isset($err)) { ?>
    <script>
        Swal.fire({
            position: 'top-end',
            icon: 'errror',
            title: '<?php echo $err; ?>',
            showConfirmButton: false,
            timer: 1500
        })
    </script>

<?php } ?>

<?php if (isset($info)) { ?>
    <script>
        Swal.fire({
            position: 'top-end',
            icon: 'info',
            title: '<?php echo $info; ?>',
            showConfirmButton: false,
            timer: 1500
        })
    </script>

<?php }
?>
<!-- Data Tables -->