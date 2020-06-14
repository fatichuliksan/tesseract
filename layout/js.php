 <!-- Bootstrap core JavaScript-->
 <script src="<?= base_url() ?>public/vendor/jquery/jquery.min.js"></script>
 <script src="<?= base_url() ?>public/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
 <script src="<?= base_url() ?>public/vendor/bootstrap-4.1.3/dist/js/bootstrap.min.js"></script>

 <!-- Core plugin JavaScript-->
 <script src="<?= base_url() ?>public/vendor/jquery-easing/jquery.easing.min.js"></script>

 <!-- Page level plugin JavaScript-->
 <script src="<?= base_url() ?>public/vendor/chart.js/Chart.min.js"></script>
 <script src="<?= base_url() ?>public/vendor/datatables/jquery.dataTables.js"></script>
 <script src="<?= base_url() ?>public/vendor/datatables/dataTables.bootstrap4.js"></script>
 <script src="<?= base_url() ?>public/vendor/sweetalert2/sweetalert2.min.js"></script>
 <script src="<?= base_url() ?>public/vendor/select2/js/select2.full.min.js"></script>

 <!-- Custom scripts for all pages-->
 <script src="<?= base_url() ?>public/js/sb-admin.min.js"></script>

 <!-- Demo scripts for this page-->
 <script src="<?= base_url() ?>public/js/demo/datatables-demo.js"></script>
 <!-- <script src="<?= base_url() ?>public/js/demo/chart-area-demo.js"></script> -->

 <script>
     function hapus(url) {
         Swal.fire({
             title: 'anda yakin akan hapus data ini?',
             // text: "You won't be able to revert this!",
             type: 'warning',
             showCancelButton: true,
             confirmButtonColor: '#3085d6',
             cancelButtonColor: '#d33',
             confirmButtonText: 'Ya',
             cancelButtonText: 'Tidak'
         }).then((result) => {
             if (result.value) {
                 $.post(url, {
                     action: "DELETE"
                 }).done(function(data) {
                     Swal.fire(
                         'Berhasil!',
                         'Data telah dihapus',
                         'success'
                     )
                     setTimeout(function() {
                         window.location.reload();
                     }, 1000)
                 }).fail(function(res, b) {
                     let response = JSON.parse(res.responseText);
                     message = 'Data gagal dihapus';
                     if (response) {
                         message = response.message;
                     }
                     Swal.fire(
                         'Gagal!',
                         message,
                         'error'
                     )
                 });
             }
         })
     }
 </script>