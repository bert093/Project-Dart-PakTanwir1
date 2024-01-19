import 'dart:io';
class Barang{ // class yang bernama Barang
  int? id; // atribut id menggunakan tanda tanya yang berarti variabel id dapat memiliki nilai null atau kosong
  String? nama;
  int? stok;
  int? harga;
  int? total_harga;
}
// Read
// Tampil Barang ---------------------------- Pilihan 1 ----------------------------
void tampilBarang(List<Barang> data) { // adalah sebuah fungsi yang tidak mengembalikan nilai apapun, tetapi hanya menampilkan daftar barang yang ada di parameter data.
    if(data.isEmpty) { // fungsi ini akan mengecek apakah data kosong atau tidak
      print('Krik Krik ;;;;;'); // jika kosong maka akan mencetak krik krik
    } else {  // jika tidak maka akan mencetak seperti yang dibawah ini
      print('----------------------------------------------------------------------------');
      print("ID\t\tNamaBarang\t\tHargaBarang\t\tStokBarang"); // (\t) untuk mengatur posisi atau kolom dari setiap elemen.
      print('----------------------------------------------------------------------------');
      for(var item in data) { // var item ini adalah variabel dinamis yang menyimpan nilai dari setiap elemen di list data saat ini.
        print("${item.id}\t\t${item.nama}\t\t\t RP${item.harga}\t\t\t${item.stok}"); // Pada setiap iterasi tersebut, item menyimpan nilai dari objek Barang dalam list data, dan kita menggunakan item.id, item.nama, item.harga, dan item.stok untuk mencetak informasi barang dalam format tertentu.
      } // "Dalam format tertentu" merujuk pada cara informasi barang ditampilkan atau diformat saat dicetak ke konsol. Dalam konteks pernyataan print("${item.id}\t\t${item.nama}\t\t\t RP${item.harga}\t\t\t${item.stok}");, format ini melibatkan penggunaan karakter tab (\t) untuk mengatur posisi atau kolom dari setiap elemen agar membuatnya terlihat lebih rapi.
        print('----------------------------------------------------------------------------');
  }    
}

// Create
// Tambah Barang ---------------------------- Pilihan 2 ----------------------------
void tambahBarang(List<Barang> data) { // adalah sebuah fungsi yang tidak mengembalikan nilai apapun, tetapi hanya menampilkan tambah barang yang ada di parameter data.
  String kembali = "y";
  while (kembali == "y") { // selama variabel kembali sama dengan huruf y maka kode didalamnya akan terus di eksekusi jika mengetik huruf y
  stdout.write('Masukkan ID Barang: '); 
  var idPengguna = int.parse(stdin.readLineSync()!); // digunakan untuk membaca input dari pengguna melalui konsol (standar input). dan tanda ! bahwa isinya tidak boleh kosong 
  stdout.write('Masukkan Nama Barang: ');
  var namaPengguna = stdin.readLineSync()!;
  stdout.write("Masukkan Jumlah Barang: ");
  var stkPengguna = int.parse(stdin.readLineSync()!);
  stdout.write("Masukkan Harga Per Barang: ");
  var hargaPengguna = int.parse(stdin.readLineSync()!);
  Barang baru = Barang(); // Pernyataan Barang baru = Barang(); digunakan untuk membuat sebuah objek baru dari kelas Barang
  // Barang(); Ini adalah operator penugasan yang digunakan untuk memberikan nilai awal ke variabel baru. Dalam hal ini, kita menggunakan konstruktor kelas Barang() untuk membuat objek baru dari kelas Barang dan memberikan objek tersebut ke variabel baru.
  baru.id = idPengguna; // Menetapkan nilai atribut id dari objek baru dengan nilai dari variabel idPengguna yang diperoleh dari input pengguna.
  // menetapkan nilai atribut id dari class barang yang bersifat integer untuk di objek baru? 
  // baru.id kita asumsikan bahwa nilai dari variabel id yang kita set harus bertipe int. karena variabel id ini pada class Barang tipe datanya integer.
  baru.nama = namaPengguna;
  baru.stok = stkPengguna;
  baru.harga = hargaPengguna;
  data.add(baru); // // Menambahkan objek baru ke dalam list data
  print('Terimakasih Telah Berbelanja Di Toko Kami!');
  stdout.write('Tambah Barang Lagi? y/t: ');
  kembali = stdin.readLineSync()!;
 }
}
// Update
// Ubah Barang ---------------------------- Pilihan 3 ----------------------------
void ubahBarang(List<Barang> data) {
  String kembali = 'y';
  while (kembali == 'y') {
    stdout.write('Masukkan ID Barang Yang Ingin Diubah: ');
    int idBarang = int.parse(stdin.readLineSync()!);
    for (int i = 0; i < data.length; i++) {
      if (data[i].id == idBarang) { // Dalam setiap iterasi, program memeriksa apakah ID dari barang pada indeks ke-i dalam list data sama dengan ID yang dimasukkan oleh pengguna (idBarang).
      stdout.write("Ganti Nama Barang: ${data[i].nama} menjadi: ");
      var namaBaru = stdin.readLineSync()!;
      stdout.write("Ganti Stok: ${data[i].stok} menjadi: ");
      var stkBaru = int.parse(stdin.readLineSync()!);
      stdout.write("Ganti harga barang: ${data[i].harga} menjadi: ");
      var hargaBaru = int.parse(stdin.readLineSync()!);
      Barang baru = Barang();
      baru.id = idBarang;
      baru.nama = namaBaru;
      baru.stok = stkBaru;
      baru.harga = hargaBaru;
      data[i] = baru;
      }
      print('Barang Berhasil Diubah!');
      stdout.write('Ubah Barang Lagi? y/t: ');
      kembali = stdin.readLineSync()!;
    }
  }
}
// Delete
// Hapus Barang ---------------------------- Pilihan 4 ----------------------------
void hapusBarang(List<Barang> data) {
  String kembali = 'y';
  while (kembali == 'y') {
    stdout.write('Masukkan ID Barang Yang Ingin Dihapus: ');
    var idBarang = int.parse(stdin.readLineSync()!);
    for (int i = 0; i < data.length; i++) {
      if (data[i].id == idBarang) {
        data.removeAt(i);
        print('Barang ${idBarang} Berhasil Dihapus!');
      }
    }
    stdout.write('Hapus Barang Lagi? y/t: ');
    kembali = stdin.readLineSync()!;
  }
}
// Search
// Pencarian Barang ---------------------------- Pilihan 5 ----------------------------
void pencarianBarang(List<Barang> data) {
  String kembali = 'y';
  while (kembali == 'y') {
    stdout.write('Masukkan ID Barang: ');
    var idBarang = int.parse(stdin.readLineSync()!);
    for (int i = 0; i < data.length; i++) {
      if (data[i].id == idBarang) {
      print('----------------------------------------------------------------------------');
      print("ID\t\tNamaBarang\t\tHargaBarang\t\tStokBarang");
      print('----------------------------------------------------------------------------');
      for(var item in data) {
        print("${item.id}\t\t${item.nama}\t\t\t RP${item.harga}\t\t\t${item.stok}");
      }



        print('----------------------------------------------------------------------------');
      }
      stdout.write('Cari Barang Lagi? y/t: ');
      kembali = stdin.readLineSync()!;
    }
  }
}
// Transaksi Barang ---------------------------- Pilihan 6 ----------------------------
void transaksiBarang(List<Barang> data) {
  String kembali = 'y';
  while (kembali == 'y') {
    stdout.write('Masukkan ID Barang Yang Ingin Dibeli: ');
    var idBarang = int.parse(stdin.readLineSync()!);
    for (int i = 0; i < data.length; i++) {
      if (data[i].id == idBarang) {
        stdout.write('Masukkan Jumlah Barang Yang ingin dibeli: ');
        var jumlahBeli = int.parse(stdin.readLineSync()!);
        if (jumlahBeli <= data[i].stok!) {
          stdout.write('Masukkan Saldo: ');
          var saldo = int.parse(stdin.readLineSync()!);

        Barang beli = Barang();
        beli.id = idBarang;
        beli.nama = data[i].nama;
        beli.harga = data[i].harga;
        beli.stok = data[i].stok! - jumlahBeli;
        beli.total_harga = data[i].harga! * jumlahBeli;
        data[i] = beli;
        
        print('Transaksi Berhasil');
print('''

||====================================================================||
||        Terimakakasih Telah Berbelanja di Toko SA Elektronik!       ||
||====================================================================||                                        
||              PT. Indoritel Makmur Internasional Tbk                ||
||           Jl. Jend. Sudirman Kav. 52-53, Senayan, Jakarta          ||
||                  NPWP: 01.123.456.7-891.000                        ||
||====================================================================||
         Nama Barang: ${data[i].nama} ${beli.total_harga}
          Jumlah Beli: $jumlahBeli                         
          total: ${beli.total_harga}                         
          saldo: $saldo                                     
          kembali: ${saldo - beli.total_harga!}           
======================================================================
''');
        }
        stdout.write('Kembali Ke Transaksi? y/t: ');
        kembali = (stdin.readLineSync()!);
      }
    }
  }
}