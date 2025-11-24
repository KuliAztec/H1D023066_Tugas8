class ApiUrl {
  // Untuk Android Emulator gunakan 10.0.2.2
  //static const String baseUrl = 'http://10.0.2.2:8080';
  // Untuk Device fisik gunakan IP Address komputer (cek dengan ipconfig)
  static const String baseUrl = 'http://192.168.1.9:8080';
  // Untuk Flutter Web gunakan localhost
  //static const String baseUrl = 'http://localhost:8080';

  static const String registrasi = '$baseUrl/registrasi';
  static const String login = '$baseUrl/login';
  static const String listProduk = '$baseUrl/produk';
  static const String createProduk = '$baseUrl/produk';

  static String updateProduk(int id) {
    return '$baseUrl/produk/$id';
  }

  static String showProduk(int id) {
    return '$baseUrl/produk/$id';
  }

  static String deleteProduk(int id) {
    return '$baseUrl/produk/$id';
  }
}