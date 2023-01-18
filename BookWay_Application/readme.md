LATAR BELAKANG Kelompok kami membuat program penyewaan buku yang bernama
BookWay. Program ini memiliki tujuan untuk proses transaksi penyewaan
buku yang dilakukan oleh anggota agar buku yang keluar tercatat secara
rinci dan terproses dengan benar.

AUTHORS - Annisa Indriani (2502028821) - Hendi Sulistio (2540125296) -
Vanessa Oktaviani (2501963551) - Keannu Gida (2501988466)

MENU APLIKASI Aplikasi ini memiliki 4 menu utama, yaitu sebagai berikut
: - add Book -\> Menambah buku ke dalam database - view Book -\> Melihat
daftar buku yang tersedia - rent Book -\> Melakukan transaksi sewa buku
- Return Book -\> Melakukan pengembalian buku yang sudah disewa
sebelumnya

CARA KERJA APLIKASI Cara kerja aplikasi ini adalah peran pengguna
aplikasi dibagi menjadi dua, yaitu admin dan user. Fitur-fitur ADMIN :
Admin melakukan login terlebih dahulu. (login) Admin dapat masuk ke menu
add Book untuk menambah koleksi buku baru. (add Book) Admin dapat masuk
ke menu view Book untuk melihat seluruh daftar buku yang ada pada
database. (view Book) Fitur-fitur USER : User melakukan registrasi
terlebih dahulu. (register) User melakukan login. (login) User dapat
masuk ke menu view Book untuk melihat daftar buku yang tersedia. (view
Book) User dapat masuk ke menu rent Book untuk melakukan transaksi sewa
buku. (rent Book) User dapat masuk ke menu return Book untuk melakukan
pengembalian buku apabila ada. (return Book)

DATABASE Pada database program ini terdapat 5 tabel, yaitu sebagai
berikut : appuser id -\> id akun (primary key) username -\> username
akun password -\> password akun role\_id -\> peran akun (antara user dan
admin) 1 untuk user dan 2 untuk admin

books id -\> id buku (primary key) title -\> judul buku author -\>
penulis buku year -\> tahun terbit buku harga -\> harga buku

history id -\> id akun (primary key) username -\> username akun book\_id 
-\> id buku book\_title -\> judul buku harga -\> harga buku phone -\>
nomor telepon akun payment -\> metode pembayaran date\_rent -\>
timestamp penyewaan buku date\_return -\> timestamp pengembalian buku

status id -\> id buku (primary key) status -\> status buku (sudah
disewakan atau belum)

tmp name -\> teks untuk menyimpan variabel nama

Aplikasi ini menggunakan JavaFX-19 dan versi java SE-17 
