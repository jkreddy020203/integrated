import 'package:flutter/material.dart';
import 'package:merchant_dashboard/utils/customer_data.dart';
import 'package:merchant_dashboard/utils/data_list.dart';
// import 'package:merchant_dashboard/utils/data_source.dart';

class SearchScreen extends StatelessWidget {
  final String? searchQuery;

  const SearchScreen({super.key, required this.searchQuery});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: PaginatedDataTable(
        header: Text('Results for $searchQuery'),
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
        source: SearchedSource(searchQuery: searchQuery),
      ),
    );
  }
}

class SearchedSource extends DataTableSource {
  final String? searchQuery;
  late List<CustomerData> searchedCustomers;

  SearchedSource({this.searchQuery}) {
    initializeSearchedCustomers();
  }

  void initializeSearchedCustomers() {
    searchedCustomers = customerDataList
        .where((element) =>
            element.name.toLowerCase().contains(searchQuery!.toLowerCase()))
        .toList();
  }

  @override
  DataRow? getRow(int index) {
    return DataRow.byIndex(
      index: index,
      cells: [
        DataCell(
          Text(searchedCustomers[index].all),
        ),
        DataCell(
          Text('${searchedCustomers[index].customerId}'),
        ),
        DataCell(
          Text(searchedCustomers[index].name),
        ),
        DataCell(
          Text('${searchedCustomers[index].date}'),
        ),
        DataCell(
          Text(searchedCustomers[index].status),
        ),
        DataCell(
          Text('${searchedCustomers[index].hide}'),
        ),
        DataCell(
          Text(searchedCustomers[index].manage),
        ),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => searchedCustomers.length;

  @override
  int get selectedRowCount => 0;
}
