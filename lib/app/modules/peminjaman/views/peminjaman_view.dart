import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:petugas_perpustakaan_c/app/data/model/response_pinjam.dart';

import '../controllers/peminjaman_controller.dart';

class PeminjamanView extends GetView<PeminjamanController> {
  const PeminjamanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Peminjaman View'),
          centerTitle: true,
        ),
        body: controller.obx((state) => ListView.separated(
          itemCount: state!.length,
          itemBuilder: (context, index){
            Datapinjam datapinjam = state[index];
            return ListTile(
              title: Text("Peminjam : ${datapinjam.user?.username}"),
              subtitle: Text("Nama Buku : ${datapinjam.book?.judul}\nTanggal Pinjam : ${datapinjam.tanggalPinjam}\nTanggal Kembali : ${datapinjam.tanggalKembali}\nStatus : ${datapinjam.status}"),
            );
          },
          separatorBuilder: (context, index)=> Divider(),
        ))
    );
  }
}
