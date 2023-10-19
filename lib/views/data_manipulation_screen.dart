import 'package:flutter/material.dart';
import 'package:flutter_app/data/product_repository.dart';

import '../constants/colors.dart';
import '../models/product_model.dart';

class DataManipulationScreen extends StatefulWidget {
  const DataManipulationScreen({super.key});

  @override
  State<DataManipulationScreen> createState() => _DataManipulationScreenState();
}

class _DataManipulationScreenState extends State<DataManipulationScreen> {
  List<ProductModel> _products = [];
  final ProductRepository _productRepository = ProductRepository();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _products = _productRepository.getProducts();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Data Manipulation',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _products = _productRepository.getProducts();
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: const Text('All', style: TextStyle(fontSize: 10)),
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _products = _productRepository.getProductsByPriceRange(
                            12000, 100000);
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: const Text('PRICE RANGE',
                        style: TextStyle(fontSize: 10)),
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _products = _productRepository.getProducts();
                        _products =
                            _productRepository.getDiscountedProducts(10);
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child:
                        const Text('DISCOUNT', style: TextStyle(fontSize: 10)),
                  ),
                ),
              ],
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: _products.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: double.infinity,
                    child: Card(
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                                text: TextSpan(
                                    style: DefaultTextStyle.of(context).style,
                                    children: [
                                  const TextSpan(
                                    text: 'Name: ',
                                    style: TextStyle(
                                      color: AppColors.primary,
                                    ),
                                  ),
                                  TextSpan(
                                    text: _products[index].name,
                                  )
                                ])),
                            RichText(
                                text: TextSpan(
                                    style: DefaultTextStyle.of(context).style,
                                    children: [
                                  const TextSpan(
                                    text: 'Price: ',
                                    style: TextStyle(
                                      color: AppColors.primary,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        '\u20B1${_products[index].price.toStringAsFixed(2)}',
                                  )
                                ])),
                          ],
                        ),
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
