import 'package:flutter/material.dart';

void main() => runApp(const BonusHoraApp());

class BonusHoraApp extends StatelessWidget {
  const BonusHoraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TelaPrincipal(),
    );
  }
}

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  int _indiceAtual = 0;

  final List<Widget> _telas = [
    const TelaInicio(), // Tela 1
    const Center(child: Text("Mural de Oportunidades")), // Tela 2
    const Center(child: Text("Loja de Créditos")), // Tela 3
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: (index) => setState(() => _indiceAtual = index),
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Início"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Oportunidades"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "Loja"),
        ],
      ),
    );
  }
}

// --- TELA 1: CARTEIRA DE TEMPO ---
class TelaInicio extends StatelessWidget {
  const TelaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Olá, Maria!"), backgroundColor: Colors.white, foregroundColor: Colors.black, elevation: 0),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // O CARD DE SALDO
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [Color(0xFF2E7D32), Color(0xFF1565C0)]),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Column(
                children: [
                  Text("SEU SALDO DE IMPACTO", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text("12h 45m", style: TextStyle(fontSize: 42, color: Colors.white, fontWeight: FontWeight.bold)),
                  Text("Equivalente a 12 créditos sociais", style: TextStyle(color: Colors.white70)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}