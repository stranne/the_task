import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'ordered_list_model.dart';

class OrderedList extends StackedView<OrderedListModel> {
  final List<Widget> items;

  const OrderedList({
    super.key,
    required this.items,
  });

  @override
  Widget builder(
    BuildContext context,
    OrderedListModel viewModel,
    Widget? child,
  ) {
    if (items.isEmpty) {
      return const SizedBox();
    }

    return Column(
      children: items
          .map(
            (item) => ListTile(
              leading: Text(
                '${items.indexOf(item) + 1}',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              title: DefaultTextStyle(
                style: Theme.of(context).textTheme.bodyMedium!,
                child: item,
              ),
              visualDensity: VisualDensity.compact,
            ),
          )
          .toList(),
    );
  }

  @override
  OrderedListModel viewModelBuilder(
    BuildContext context,
  ) =>
      OrderedListModel();
}
