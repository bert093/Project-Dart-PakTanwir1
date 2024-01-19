import 'dart:io'; // pada baris pertama ini saya membuat import 'dart:io'; library dart:io menyediakan fungsi untuk input dan output data, seperti membaca data dari keyboard, menulis data ke layar dan membuka file.
import 'barang1.dart'; // pada baris ini saya mengimpor objek class barang1.dart di file yang berbeda agar bisa digunakan atau dipanggil di file project1 ini.
// SA Elektronik
// "Sinar Abadi"
void main(){ // void main adalah fungsi utama dari program, untuk menjalankan program utama
  List<Barang> data = []; // adalah sebuah pernyataan untuk mendeklarasikan sebuah variabel bernama data yang bertipe List<Barang>. List<Barang> berarti sebuah list atau koleksi yang berisi objek-objek dari kelas Barang. Kelas Barang sendiri diimpor dari file barang1.dart yang berisi definisi atribut dan metode yang dimiliki oleh objek Barang. 
  String kembali = "y"; // String kembali = "y"; adalah deklarasi variabel kembali dengan nilai awal "y". Variabel kembali ini digunakan untuk menyimpan nilai pilihan pengguna untuk kembali ke menu atau tidak.
  while (kembali == "y") {  // while (kembali == "y") adalah pernyataan while yang akan dieksekusi berulang kali selama nilai variabel kembali sama dengan "y".
    print('''  //Triple quote adalah tanda kutip tiga yang dapat digunakan untuk mencetak teks multibaris tanpa perlu menggunakan karakter \n untuk mengakhiri baris.
||=================================================||
||     Selamat Datang Di Toko SA Elektronik!       ||
||=================================================||                                        
||     PT. Indoritel Makmur Internasional Tbk      ||
||           Jl. Rinjani, kel. Kayangan            ||
||       Kec. Bayan, Kab. Lombok Utara, 83354      ||
||=================================================||
||1. Tampil Barang Belanja                         ||                        
||2. Tambah Barang                                 ||                      
||3. Ubah Barang                                   ||                   
||4. Hapus Barang                                  ||                     
||5. Pencarian Barang                              ||      
||6. Transaksi Barang                              ||       
=====================================================
  ''');
    stdout.write('Pilih dari 1-6: '); // karena project yang disuruh buat ada ketentuan seperti di atas. makanya kami ingin agar pilihan tersebut bisa di baca
    int pilih = int.parse(stdin.readLineSync()!); // tapi karena input user itu tipe datanya String maka dari itu kita harus mengubahnya ke integer. Bisa juga kita buat variabel pilih ini menjadi tipe data String sehingga kita tidak perlu mengubahnya ke integer dengan catatan casenya akan di kasih tanda kutip 2 ""tapi pada kasus ini kami menggunakan tipe data integer karena kami mau.
    switch(pilih) { // kami membuat switch dengan nama variabel pilih sesuai dengan yang di atas
      case 1: // ini case ke 1
       tampilBarang(data); // Fungsi tampilBarang(data) pada program dart ini digunakan untuk menampilkan daftar barang yang tersedia di toko SA Elektronik. Fungsi ini menerima parameter data yang merupakan list dari objek Barang yang diimpor dari file barang1
       break;
      case 2:
       tambahBarang(data);
        break;
      case 3:
       ubahBarang(data);
       break;
      case 4:
       hapusBarang(data);
       break;
      case 5:
       pencarianBarang(data);
      case 6:
       transaksiBarang(data);
       break;
      default:
       print('Tidak Ada Pilihan Di Menu.');
       break;
    }
    stdout.write('Kembali Ke menu? y/t: ');
    kembali = stdin.readLineSync()!;
  }
}