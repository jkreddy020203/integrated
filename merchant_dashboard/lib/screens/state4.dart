import 'package:flutter/material.dart';
import 'package:merchant_dashboard/utils/customer_data.dart';
import 'package:merchant_dashboard/utils/data_list.dart';

class State4 extends StatefulWidget {
  const State4({super.key});

  @override
  State<State4> createState() => _State4State();
}

class _State4State extends State<State4> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: PaginatedDataTable(
        columns: const [
          DataColumn(
            label: Text('All'),
          ),
          DataColumn(
            label: Text('Customer Id'),
          ),
          DataColumn(
            label: Text('Customer name'),
          ),
          DataColumn(
            label: Text('Date added'),
          ),
          DataColumn(
            label: Text('status'),
          ),
          DataColumn(
            label: Text('Hide Customer'),
          ),
          DataColumn(
            label: Text('Manage Customer'),
          ),
        ],
        source: HiddenSource(),
      ),
    );
  }
}

class HiddenSource extends DataTableSource {
  List<CustomerData> hiddenCustomers =
      customerDataList.where((element) => element.hide == true).toList();

  @override
  DataRow? getRow(int index) {
    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(
          Text(hiddenCustomers[index].all),
        ),
        DataCell(
          Text('${hiddenCustomers[index].customerId}'),
        ),
        DataCell(
          Text(hiddenCustomers[index].name),
        ),
        DataCell(
          Text('${hiddenCustomers[index].date}'),
        ),
        DataCell(
          Text(hiddenCustomers[index].status),
        ),
        DataCell(
          Text('${hiddenCustomers[index].hide}'),
        ),
        DataCell(
          Text(hiddenCustomers[index].manage),
        ),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => hiddenCustomers.length;

  @override
  int get selectedRowCount => 0;
}
