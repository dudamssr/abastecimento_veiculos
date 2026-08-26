class Abastecimento {
  String data;
  String combustivel;
  double litros;
  double valorPago;
  double quilometragem;

  Abastecimento({
    required this.data,
    required this.combustivel,
    required this.litros,
    required this.valorPago,
    required this.quilometragem,
  });

  double get precoPorLitro {
    if (litros == 0) {
      return 0;
    }

    return valorPago / litros;
  }

  String toCSV() {
    return "$data;$combustivel;$litros;$valorPago;$quilometragem";
  }

  factory Abastecimento.fromCSV(String csv) {
    List<String> partes = csv.split(";");

    return Abastecimento(
      data: partes[0],
      combustivel: partes[1],
      litros: double.parse(partes[2]),
      valorPago: double.parse(partes[3]),
      quilometragem: double.parse(partes[4]),
    );
  }
}