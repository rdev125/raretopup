<?php
// Fungsi header dengan mengirimkan raw data excel
header("Content-type: application/vnd-ms-excel");
// Mendefinisikan nama file ekspor "hasil-export.xls"
header("Content-Disposition: attachment; filename=Maxxis_Gebyar_Ramadan.xls");
?>
<div> <h1>Maxxis Gebyar Ramadan</h1> 
<table border="1">
    <tr style="height:50px;background-color:grey">
        <th>No</th>
        <th>No Undian</th>
        <th>Nama</th>
        <th>Telp</th>
        <th>Email</th>
        <th>Jumlah Email Sama</th>
        <th>Diskualifikasi</th>
        <th>IG</th>
        <th>Kota</th>
        <th>Jenis Kendaraan</th>
        <th>Barcode</th>
        <th>Barcode Foto</th>
        <th>Struk Foto</th>
        <th>Date</th>
    </tr>
	<?php foreach($data as $i => $row): ?>
    <tr style="height:30px">
        <td><?=$i + 1?></td>
        <td><?=$row->no_undian?></td>
        <td><?=$row->nama?></td>
        <td><?=$row->telp?></td>
        <td><?=$row->email?></td>
         <td><?=isset($row->jmlemail)?$row->jmlemail:0?></td>
         <td><?=($row->diskualifikasi==1)? "✓":"×" ?></td>
        <td><?=$row->ig_username?></td>
        <td><?=$row->nama_kota?></td>
        <td><?=$row->jenis_kendaraan?></td>
        <td><?=$row->barcode?></td>
        <td><a href="<?=base_url()?>assets/uploads/<?=date('Ymd',strtotime($row->created_date))?>/<?=$row->foto_barcode?>">Show</a></td>
        <td><a href="<?=base_url()?>assets/uploads/<?=date('Ymd',strtotime($row->created_date))?>/<?=$row->foto_struck?>">Show</a></td>
        <td><?=$row->created_date?></td>
    </tr>
    <?php endforeach; ?>
</table>
</div>