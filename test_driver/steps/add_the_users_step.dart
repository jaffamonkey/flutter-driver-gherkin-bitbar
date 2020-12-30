import 'package:gherkin/gherkin.dart';

StepDefinitionGeneric AddTheUsersStep() {
  return when1(
    'I add the users',
    (Table dataTable, context) async {
      for (var row in dataTable.rows) {
        // do something with row
        row.columns.forEach((columnValue) => print(columnValue));
      }
      // final columns = dataTable.asMap();
      // final personOne = columns.elementAt(0);
      // final personOneName = personOne["Firstname"];
      // print('Name of first user: `$personOneName` ');
    },
  );
}
