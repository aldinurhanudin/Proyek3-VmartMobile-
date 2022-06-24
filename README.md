# Proyek3-VmartMobile-
![ic_launcher](https://user-images.githubusercontent.com/79299597/173383853-404d69b0-1fbd-43f5-a0ff-e001991d294d.png)


<ol>
  <li>Dart Dasar(SRP)</li>
  <li>PBO dart</li>
  <li>UML class Diagram</li>
  <li>SOLID principles</li>
  <li>UI flutter</li>
  <li>API</li>
  <li>CRUD Flutter</li>
  <li>Shared Preferences</li>
  <li>firebase</li>
</ol>
<br>

## API
link github di bawah berisikan API
<br>
https://github.com/aldinurhanudin/Vmart_API/tree/master/web_vmart/app/Http/Controllers/API


<br>






## UI Flutter
<b>berikut tampilan atau UI dari aplikasi yang sudah kami buat</b>
<br>
<img src="https://github.com/aldinurhanudin/Proyek3-VmartMobile-/blob/main/Vmart/login/assets/splashpage.png" height="300" width="150"><img src="https://github.com/aldinurhanudin/Proyek3-VmartMobile-/blob/main/Vmart/login/assets/getstarted.jpg" height="300" width="150">
<img src="https://github.com/aldinurhanudin/Proyek3-VmartMobile-/blob/main/Vmart/login/assets/login.jpg" height="300" width="150">
<img src="https://github.com/aldinurhanudin/Proyek3-VmartMobile-/blob/main/Vmart/login/assets/register.jpg" height="300" width="150">
<img src="https://github.com/aldinurhanudin/Proyek3-VmartMobile-/blob/main/Vmart/login/assets/favorite.jpg" height="300" width="150">
<img src="https://github.com/aldinurhanudin/Proyek3-VmartMobile-/blob/main/Vmart/login/assets/home.jpg" height="300" width="150">
<img src="https://github.com/aldinurhanudin/Proyek3-VmartMobile-/blob/main/Vmart/login/assets/allproduk.jpg" height="300" width="150">
<img src="https://github.com/aldinurhanudin/Proyek3-VmartMobile-/blob/main/Vmart/login/assets/detailproduk.jpg" height="300" width="150">
<img src="https://github.com/aldinurhanudin/Proyek3-VmartMobile-/blob/main/Vmart/login/assets/keranjang.jpg" height="300" width="150">
<img src="https://github.com/aldinurhanudin/Proyek3-VmartMobile-/blob/main/Vmart/login/assets/checkout.jpg" height="300" width="150">
<img src="https://github.com/aldinurhanudin/Proyek3-VmartMobile-/blob/main/Vmart/login/assets/alert.png" height="300" width="150">
<img src="https://github.com/aldinurhanudin/Proyek3-VmartMobile-/blob/main/Vmart/login/assets/profile.jpg" height="300" width="150">
<img src="https://github.com/aldinurhanudin/Proyek3-VmartMobile-/blob/main/Vmart/login/assets/bantuan.jpeg" height="300" width="150">
<img src="https://github.com/aldinurhanudin/Proyek3-VmartMobile-/blob/main/Vmart/login/assets/alamat.jpeg" height="300" width="150">
<img src="https://github.com/aldinurhanudin/Proyek3-VmartMobile-/blob/main/Vmart/login/assets/firebase notif.png" height="300" width="150">
<br>


## UML Class Diagram 

<b>berikut class DIagram yang sudah kami buat</b>
<br>
<img src="https://github.com/aldinurhanudin/Proyek3-VmartMobile-/blob/main/Vmart/login/assets/diagram.jpg" >
<br>
## CRUD
<b>Login</b><br>
https://github.com/aldinurhanudin/Proyek3-VmartMobile-/blob/main/Vmart/login/lib/login_page.dart
<br>
<b>Register</b><br>
https://github.com/aldinurhanudin/Proyek3-VmartMobile-/blob/main/Vmart/login/lib/register_page.dart
<br>
<b>Produk</b>
<br>
https://github.com/aldinurhanudin/Proyek3-VmartMobile-/blob/main/Vmart/login/lib/allproduct_page.dart
<br>
https://github.com/aldinurhanudin/Proyek3-VmartMobile-/blob/main/Vmart/login/lib/product_detail.dart
<br>
<b>Checkout</b><br>
https://github.com/aldinurhanudin/Proyek3-VmartMobile-/blob/main/Vmart/login/lib/checkout_page.dart
<br>
<b>Alamat</b><br>
https://github.com/aldinurhanudin/Proyek3-VmartMobile-/blob/main/Vmart/login/lib/address.dart
<br>

## SOLID
### Single Responsibility Principle(SRP)
<b>berikut diagram <b>Single Responsibility Principle (SRP)</b> yang dimana Setiap class tidak boleh memiliki lebih dari satu tanggung jawab, hanya satu tanggung jawab</b><br>
### penjelasan
class diagram di bawah merupakan contoh dari SRP yang dimana profilMenu hanya bertugas untuk membuat menu yang ada di profile, frofilepic bertugas untuk mengatur tampilan foto yang ada di profile, body bertugas untuk mengatur kerangka profile, dan profileScreen bertugas untuk menampilan tampian profile. 
<br> dari penjelasan di atas bahwasannya stiap kelas memiliki tanggung jawab, dan hanya memiliki satu tanggung jawab
<br>
![solid-profile](https://user-images.githubusercontent.com/79299597/174068520-f1e6a2c8-6667-4574-8b22-b3db45b0b9ab.jpg)
<br>
kode program = https://github.com/aldinurhanudin/Proyek3-VmartMobile-/tree/main/Vmart/login/lib/profile
## Shared Preferences
### penjelasan
pertama di sini ada <b>login</b>, pada aplikasi di saat login akan menyimpan data <i>shared preference</i> yang dimana ia akan menyimpan token dari user yang login.
ketika user menghapus jendela aplikasi user tidak akan login lagi, pada saat user membuka kembali aplikasi user akan diarahkan dari tampilan <b>splash</b> setelah itu ke tampilan home. untuk kembali ke default awal maka user perlu <i>logout</i> terlebih dahulu di halaman <b>profile<b>
  <br>
<b>Login</b><br>
https://github.com/aldinurhanudin/Proyek3-VmartMobile-/blob/main/Vmart/login/lib/login_page.dart
<br>
<b>Profile</b><br>
https://github.com/aldinurhanudin/Proyek3-VmartMobile-/blob/main/Vmart/login/lib/profile/components/body.dart
<br>
<b>Splash</b><br>
https://github.com/aldinurhanudin/Proyek3-VmartMobile-/blob/main/Vmart/login/lib/splash_page.dart
<br>
