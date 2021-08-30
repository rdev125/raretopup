<?php
// Fungsi header dengan mengirimkan raw data excel
header("Content-type: application/vnd-ms-excel");
// Mendefinisikan nama file ekspor "hasil-export.xls"
header("Content-Disposition: attachment; filename=TetepBagusTanpaBungkus.xls");
?>
<div>
    <h1>Data Pelanggan</h1> 
    <table border="1">
        <tr class="bg-secondary text-light">
          <th>No</th>
          <th>Nama/th>
          <th>No HP</th>
          <th>Email</th>
          <th>Toko</th>
        </tr>
    	<?php foreach($data as $i => $row): ?>
            <tr>
              <td><?=$i + 1?></td>
              <td><?=$row->nama?></td>
              <td><?=$row->hp?></td>
              <td><?=$row->email?></td>
              <td><?=$row->distributor_id?></td>
            </tr>
        <?php endforeach; ?>
    </table>
</div>