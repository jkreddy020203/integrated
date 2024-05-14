import 'package:flutter/material.dart';
import 'package:merchant_dashboard/utils/data_list.dart';

class State1 extends StatefulWidget {
  const State1({super.key});

  @override
  State<State1> createState() => _State1State();
}

class _State1State extends State<State1> {
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
        source: DataSources(),
      ),
    );
  }
}

class DataSources extends DataTableSource {
  
  @override
  DataRow? getRow(int index) {
    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(
          Text(customerDataList[index].all),
        ),
        DataCell(
          Text('${customerDataList[index].customerId}'),
        ),
        DataCell(
          Text(customerDataList[index].name),
        ),
        DataCell(
          Text('${customerDataList[index].date}'),
        ),
        DataCell(
          Text(customerDataList[index].status),
        ),
        DataCell(
          Text('${customerDataList[index].hide}'),
        ),
        DataCell(
          Text(customerDataList[index].manage),
        ),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => customerDataList.length;

  @override
  int get selectedRowCount => 0;
}