import 'package:flutter/material.dart';
import 'package:flutter_template/model/webservice/product/product.dart';
import 'package:flutter_template/styles/theme_colors.dart';
import 'package:flutter_template/styles/theme_dimens.dart';
import 'package:flutter_template/util/locale/localization.dart';
import 'package:flutter_template/viewmodel/back_navigator.dart';
import 'package:flutter_template/viewmodel/error_navigator.dart';
import 'package:flutter_template/viewmodel/product_list/product_list_viewmodel.dart';
import 'package:flutter_template/widget/general/styled/flutter_template_progress_indicator.dart';
import 'package:flutter_template/widget/product/product_row_item.dart';
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
          body: Stack(
            children: [
              if (!viewModel.isLoading && viewModel.errorKey != null)
                Center(
                  child: Text(localization.getTranslation(viewModel.errorKey)),
                ),
              if (viewModel.isLoading) const Center(child: FlutterTemplateProgressIndicator.dark()),
              if (!viewModel.isLoading && viewModel.errorKey == null)
                Scrollbar(
                  child: FutureBuilder<List<Product>>(
                    future: viewModel.dataFuture,
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) return Container();
                      if (snapshot.data.isEmpty) {
                        return Center(
                          child: Padding(
                            padding: const EdgeInsets.all(ThemeDimens.padding32),
                            child: Text(
                              localization.todoEmptyState,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        );
                      }
                      return ListView.separated(
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, index) {
                          final item = snapshot.data[index];
                          return ProductRowItem(
                            title: item.data.brandName,
                          );
                        },
                        separatorBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: ThemeDimens.padding16),
                          child: Container(
                            height: 1,
                            color: ThemeColors.primary.withOpacity(0.1),
                          ),
                        ),
                      );
                    },
                  ),
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
