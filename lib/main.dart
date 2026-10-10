import 'package:flutter/material.dart';

void main() {
  runApp(const FoodDeliveryApp());
}

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SaborExpress',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFF5722),
          primary: const Color(0xFFFF5722),
        ),
        scaffoldBackgroundColor: const Color(0xFFF8F9FA),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header: Endereço, Alterar e Carrinho
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Entregar em',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                      Text(
                        'Rua das Flores, 123',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text('Alterar'),
                      ),
                      const SizedBox(width: 8),
                      OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.shopping_cart_outlined, size: 18),
                        label: const Text('Carrinho'),
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Saudação e Título Principal
              const Text(
                'Olá, Davi',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              const SizedBox(height: 4),
              const Text(
                'O que você deseja\npedir hoje?',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  height: 1.2,
                ),
              ),
              const SizedBox(height: 20),

              // Barra de Pesquisa
              TextField(
                decoration: InputDecoration(
                  hintText: 'Digite um produto ou restaurante',
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Banner de Promoção
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.orange.shade50,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.orange.shade100),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFFFF5722),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: const Text(
                              'DESTAQUE',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            'Cupom de 20% OFF',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            'Aproveite o desconto no seu primeiro pedido.',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          const SizedBox(height: 12),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFFF5722),
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: const Text('Ver promoção'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.orange.shade200,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.fastfood,
                        size: 48,
                        color: Color(0xFFFF5722),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Seção de Categorias
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Categorias',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Ver todas'),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  CategoryItem(icon: Icons.local_pizza, label: 'Pizzas'),
                  CategoryItem(icon: Icons.lunch_dining, label: 'Hambúrguer'),
                  CategoryItem(icon: Icons.ramen_dining, label: 'Japonesa'),
                  CategoryItem(icon: Icons.icecream, label: 'Doces'),
                ],
              ),
              const SizedBox(height: 24),

              // Seção de Produtos em Destaque
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Produtos em destaque',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Ver todos'),
                  ),
                ],
              ),
              const SizedBox(height: 8),

              // Lista de Produtos Fictícios
              const ProductCard(
                restaurantName: 'Burger House',
                productName: 'X-Burguer Artesanal',
                rating: '4.8 ⭐',
                deliveryTime: '30-40 min',
                price: 'R\$ 28,90',
                icon: Icons.lunch_dining,
              ),
              const SizedBox(height: 12),
              const ProductCard(
                restaurantName: 'Pizza Express',
                productName: 'Pizza Pepperoni Média',
                rating: '4.9 ⭐',
                deliveryTime: '40-50 min',
                price: 'R\$ 45,00',
                icon: Icons.local_pizza,
              ),
              const SizedBox(height: 12),
              const ProductCard(
                restaurantName: 'Sushiman Express',
                productName: 'Combo Sabor Japa (20 peças)',
                rating: '4.7 ⭐',
                deliveryTime: '35-45 min',
                price: 'R\$ 62,50',
                icon: Icons.ramen_dining,
              ),
              const SizedBox(height: 12),
              const ProductCard(
                restaurantName: 'Doce Sonho',
                productName: 'Açaí Completo 500ml',
                rating: '4.9 ⭐',
                deliveryTime: '20-30 min',
                price: 'R\$ 22,00',
                icon: Icons.icecream,
              ),
              const SizedBox(height: 12),
              const ProductCard(
                restaurantName: 'Cantina Italiana',
                productName: 'Lasanha à Bolonhesa',
                rating: '4.6 ⭐',
                deliveryTime: '45-55 min',
                price: 'R\$ 38,90',
                icon: Icons.restaurant,
              ),
              const SizedBox(height: 12),
              const ProductCard(
                restaurantName: 'Taco & Burrito',
                productName: 'Combo Burrito Mexicano',
                rating: '4.5 ⭐',
                deliveryTime: '25-35 min',
                price: 'R\$ 32,00',
                icon: Icons.takeout_dining,
              ),
            ],
          ),
        ),
      ),

      // Barra de Navegação Inferior
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFFFF5722),
        unselectedItemColor: Colors.grey,
        items: const [
            BottomNavigationBarItem(icon: Icon(Icons.grid_view_rounded), label: 'Início'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
            BottomNavigationBarItem(icon: Icon(Icons.receipt_long), label: 'Pedidos'),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Perfil'),
        ],
      ),
    );
  }
}

// Widget auxiliar para as Categorias
class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const CategoryItem({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.grey.shade200),
          ),
          child: Icon(icon, color: const Color(0xFFFF5722), size: 28),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}

// Widget auxiliar para os Cards de Produto
class ProductCard extends StatelessWidget {
  final String restaurantName;
  final String productName;
  final String rating;
  final String deliveryTime;
  final String price;
  final IconData icon;

  const ProductCard({
    super.key,
    required this.restaurantName,
    required this.productName,
    required this.rating,
    required this.deliveryTime,
    required this.price,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, size: 40, color: Colors.grey.shade600),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  restaurantName,
                  style: const TextStyle(fontSize: 11, color: Colors.grey),
                ),
                Text(
                  productName,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '$rating • $deliveryTime',
                  style: const TextStyle(fontSize: 11, color: Colors.grey),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFF5722),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        minimumSize: const Size(0, 32),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text('Adicionar', style: TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Classe auxiliar para contornar compatibilidade de nome da BottomNavigationBarItem em algumas versões
class BottomNavigationBarViewItem extends BottomNavigationBarItem {
  const BottomNavigationBarViewItem({
    required super.icon,
    required super.label,
  });
}