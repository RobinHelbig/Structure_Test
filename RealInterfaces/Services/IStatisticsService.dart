abstract class IWhiskyService{
  Statistics getStatistics(int? year, int? quarter, int? month);
}

class Statistics {
  Statistic sales;
  Statistic purchases;
  Statistic revenues;
  Statistic expenditures;
  Statistic profits;

  Statistics(this.sales, this.purchases, this.revenues, this.expenditures, this.profits);
}

class Statistic{
  String caption;
  String? unit;
  int overallValue;
  List<SingleValue> singleValues;

  Statistic(this.caption, this.unit, this.overallValue, this.singleValues);
}


class SingleValue{
  String caption; //z. B. Januar, Februar für Monate im Jahr/Quartal oder 1, 2, 3 für Tage im Monat
  int value;

  SingleValue(this.caption, this.value);
}