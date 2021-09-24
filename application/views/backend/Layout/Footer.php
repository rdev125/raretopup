  <!-- Main Footer -->
  <footer class="main-footer">
    <!-- To the right -->
    <div class="float-right d-none d-sm-inline">
      Rare Top Up
    </div>
    <!-- Default to the left -->
    <strong>Copyright &copy; 2021 <a href="https://adminlte.io"></a>IT Rare Top Up.</strong> AdminLTE.io.
  </footer>
</div>
<!-- ./wrapper -->

<!-- page script -->
<script>
  $(function () {
    $("#dataTable").DataTable();
    
    $(".cb_diskualifikasi").on("click",function(e){
        let element = $(this);
        var iddata = $(this).data("id")
        var emaildata = $(this).data("email")
        var isChecked = $(this).prop("checked")? 1 : 0;
        $.post( "https://maxxis.id/event/giftevent/diskualifikasi", { id: iddata, diskualifikasi: isChecked, email: emaildata })
          .done(function( data ) {
              classmail = emaildata.replace(/@/g, "")
              classmail = classmail.replaceAll('.', "")
              console.log(classmail);
              $('.'+classmail).text(data);
        });
    })
  });
</script>
</body>
</html>