import 'package:flutter/material.dart';
import 'package:flutter_template/util/locale/localization.dart';
import 'package:flutter_template/viewmodel/back_navigator.dart';
import 'package:flutter_template/viewmodel/error_navigator.dart';
import 'package:flutter_template/viewmodel/product_list/product_list_viewmodel.dart';
import 'package:flutter_template/widget/general/styled/flutter_template_progress_indicator.dart';
import 'package:kiwi/kiwi.dart';
import 'package:provider/provider.dart';

class ProductListScreen extends StatefulWidget {
  static const String routeName = 'product_list';
  const ProductListScreen({
    Key key,
  }) : super(key: key);

  @override
  _ProductListScreenState createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> with BackNavigatorMixin, ErrorNavigatorMixin implements ProductListNavigator {
  final _scaffoldKey = GlobalKey<ScaffoldState>(debugLabel: 'ProductListScaffoldKey');

  @override
  Widget build(BuildContext context) {
    final localization = Localization.of(context);

    return ChangeNotifierProvider<ProductListViewModel>(
      child: Consumer<ProductListViewModel>(
        builder: (context, viewModel, child) => Scaffold(
          appBar: AppBar(
            title: const Text('Product'),
          ),
          body: Stack(
            children: [
              if (!viewModel.isLoading && viewModel.errorKey != null)
                Center(
                  child: Text(localization.getTranslation(viewModel.errorKey)),
                ),
              if (viewModel.isLoading) const Center(child: FlutterTemplateProgressIndicator.dark()),
              if (!viewModel.isLoading && viewModel.errorKey == null)
                Center(
                  child: Text('${viewModel.product.data.brandName}'),
                ),
            ],
          ),
        ),
      ),
      create: (context) => KiwiContainer().resolve()..init(this),
    );
  }

  @override
  ScaffoldState getScaffoldState() => _scaffoldKey.currentState;
}
