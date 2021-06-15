class PersegiPanjang{
  double _panjang;
  double _lebar;

 double get panjang => _panjang;

 set panjang(double value) => _panjang = value;

 double get lebar => _lebar;

 set lebar(double value) => _lebar = value;

 double get countLarge => _panjang * _lebar;
}