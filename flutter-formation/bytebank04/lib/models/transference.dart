class Transference {
  final double value;
  final int accountNumber;

  Transference(
    this.value,
    this.accountNumber,
  );

  @override
  String toString() {
    return 'Transferencia{valor: $value, numeroConta: $accountNumber}';
  }
}
