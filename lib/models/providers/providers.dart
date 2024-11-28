import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:urun_katalog_projesi/models/category_model.dart';
import 'package:urun_katalog_projesi/models/product_details.dart';
import 'package:urun_katalog_projesi/models/product_model.dart';
import 'package:urun_katalog_projesi/repositories/product_repository.dart';
import 'package:urun_katalog_projesi/services/category_api_services.dart';



@lazySingleton
final apiServiceProvider = Provider<ApiService>((ref) => ApiService());

final categoryProvider = FutureProvider<List<Category>>((ref) async {
  final apiService = ref.watch(apiServiceProvider);
  return await apiService.fetchCategories();
});

final productProvider = FutureProvider.family<List<Product>, int>((ref, categoryId) async {
  final productRepository = ProductRepository();
  return await productRepository.fetchProductsByCategoryId(categoryId);
});

final productDetailsProvider = FutureProvider.family<ProductDetails, int>((ref, productId) async {
  final productRepository = ProductRepository();
  return await productRepository.fetchProductDetails(productId);
});


