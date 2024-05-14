import 'package:flutter/material.dart';
import 'package:merchant_dashboard/utils/customer_data.dart';
import 'package:merchant_dashboard/utils/data_list.dart';

class State3 extends StatefulWidget {
  const State3({super.key});

  @override
  State<State3> createState() => _State3State();
}

class _State3State extends State<State3> {
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
        source: StoppedSource(),
      ),
    );
  }
}

class StoppedSource extends DataTableSource {
  List<CustomerData> stoppedCustomers =
      customerDataList.where((element) => element.status == 'Stopped').toList();

  @override
  DataRow? getRow(int index) {
    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(
          Text(stoppedCustomers[index].all),
        ),
        DataCell(
          Text('${stoppedCustomers[index].customerId}'),
        ),
        DataCell(
          Text(stoppedCustomers[index].name),
        ),
        DataCell(
          Text('${stoppedCustomers[index].date}'),
        ),
        DataCell(
          Text(stoppedCustomers[index].status),
        ),
        DataCell(
          Text('${stoppedCustomers[index].hide}'),
        ),
        DataCell(
          Text(stoppedCustomers[index].manage),
        ),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => stoppedCustomers.length;

  @override
  int get selectedRowCount => 0;
}
