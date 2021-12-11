<script src="../public/backend_assets/vendor/global/global.min.js"></script>
<script src="../public/backend_assets/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
<script src="../public/backend_assets/vendor/chart.js/Chart.bundle.min.js"></script>
<script src="../public/backend_assets/js/custom.min.js"></script>
<script src="../public/backend_assets/js/deznav-init.js"></script>
<script src="../public/backend_assets/vendor/owl-carousel/owl.carousel.js"></script>

<!-- Chart piety plugin files -->
<script src="../public/backend_assets/vendor/peity/jquery.peity.min.js"></script>

<!-- Apex Chart -->
<script src="../public/backend_assets/vendor/apexchart/apexchart.js"></script>

<!-- Dashboard 1 -->
<script src="../public/backend_assets/js/dashboard/dashboard-1.js"></script>
<!-- Data Table Js -->
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.25/datatables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.7.1/js/dataTables.buttons.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.7.1/js/buttons.html5.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/1.7.1/js/buttons.print.min.js"></script>


<script>
    $(document).ready(function() {
        $('.data-table').DataTable();
    });

    $(document).ready(function() {
        $('#export-data-table').DataTable({
            dom: 'Bfrtip',
            buttons: [
                'csv', 'excel', 'pdf', 'print'
            ]
        });
    });
    /* Render Paypal Buttons */
</script>


<!-- Alert Js -->
<script src="../public/plugins/iziToast/iziToast.min.js"></script>
<!-- Initialize Alerts -->
<?php if (isset($success)) { ?>
    <script>
        iziToast.success({
            title: 'Success',
            position: 'bottomLeft',
            transitionIn: 'flipInX',
            transitionOut: 'flipOutX',
            transitionInMobile: 'fadeInUp',
            transitionOutMobile: 'fadeOutDown',
            message: '<?php echo $success; ?>',
        });
    </script>

<?php } ?>

<?php if (isset($err)) { ?>
    <script>
        iziToast.error({
            title: 'Error',
            timeout: 10000,
            resetOnHover: true,
            position: 'bottomLeft',
            transitionIn: 'flipInX',
            transitionOut: 'flipOutX',
            transitionInMobile: 'fadeInUp',
            transitionOutMobile: 'fadeOutDown',
            message: '<?php echo $err; ?>',
        });
    </script>

<?php } ?>

<?php if (isset($info)) { ?>
    <script>
        iziToast.warning({
            title: 'Warning',
            position: 'bottomLeft',
            transitionIn: 'flipInX',
            transitionOut: 'flipOutX',
            transitionIn: 'fadeInUp',
            transitionInMobile: 'fadeInUp',
            transitionOutMobile: 'fadeOutDown',
            message: '<?php echo $info; ?>',
        });
    </script>

<?php }
?>