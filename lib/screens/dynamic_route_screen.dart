import 'package:flutter/material.dart';

class DynamicRouteScreen extends StatefulWidget {
  @override
  _DynamicRouteScreenState createState() => _DynamicRouteScreenState();
}

class _DynamicRouteScreenState extends State<DynamicRouteScreen> {
  final TextEditingController _controller = TextEditingController();
  List<int> _routes = [];

  void _generateRoutes() {
    final int count = int.tryParse(_controller.text) ?? 0;
    setState(() {
      _routes = List.generate(count, (index) => index + 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dynamic Routes')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter number of routes'),
            ),
          ),
          ElevatedButton(
            onPressed: _generateRoutes,
            child: Text('Generate Routes'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _routes.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Route ${_routes[index]}'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DynamicContentScreen(index: _routes[index]),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class DynamicContentScreen extends StatelessWidget {
  final int index;

  DynamicContentScreen({required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dynamic Screen $index')),
      body: Center(child: Text('Content for screen $index')),
    );
  }
}
