import 'package:flutter/material.dart';
import 'package:merchant_dashboard/utils/customer_data.dart';
import 'package:merchant_dashboard/utils/data_list.dart';

class State2 extends StatefulWidget {
  const State2({super.key});

  @override
  State<State2> createState() => _State2State();
}

class _State2State extends State<State2> {
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
        source: ActiveSource(),
      ),
    );
  }
}

class ActiveSource extends DataTableSource {
  List<CustomerData> activeCustomers =
      customerDataList.where((element) => element.status == 'Active').toList();

  @override
  DataRow? getRow(int index) {
    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(
          Text(activeCustomers[index].all),
        ),
        DataCell(
          Text('${activeCustomers[index].customerId}'),
        ),
        DataCell(
          Text(activeCustomers[index].name),
        ),
        DataCell(
          Text('${activeCustomers[index].date}'),
        ),
        DataCell(
          Text(activeCustomers[index].status),
        ),
        DataCell(
          Text('${activeCustomers[index].hide}'),
        ),
        DataCell(
          Text(activeCustomers[index].manage),
        ),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => activeCustomers.length;

  @override
  int get selectedRowCount => 0;
}
