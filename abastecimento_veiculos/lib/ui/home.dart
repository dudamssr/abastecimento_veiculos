import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, dynamic>> abastecimentos = [];

  @override
  void initState() {
    super.initState();
    carregarAbastecimentos();
  }

  Future<void> carregarAbastecimentos() async {
    final prefs = await SharedPreferences.getInstance();

    final dados = prefs.getStringList('abastecimentos');

    if (dados == null) return;

    setState(() {
      abastecimentos = dados.map((item) {
        final partes = item.split('|');

        return {
          'litros': partes[0],
          'valor': partes[1],
          'km': partes[2],
        };
      }).toList();
    });
  }

  Future<void> salvarAbastecimentos() async {
    final prefs = await SharedPreferences.getInstance();

    final dados = abastecimentos.map((item) {
      return '${item['litros']}|${item['valor']}|${item['km']}';
    }).toList();

    await prefs.setStringList(
      'abastecimentos',
      dados,
    );
  }

  void adicionarAbastecimento() {
    final litrosController = TextEditingController();
    final valorController = TextEditingController();
    final kmController = TextEditingController();

    showDialog(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: const Text(
            'Adicionar abastecimento',
            style: TextStyle(
              color: Color(0xFF1976D2),
              fontWeight: FontWeight.bold,
            ),
          ),

          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: litrosController,
                keyboardType:
                    const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                decoration: const InputDecoration(
                  labelText: 'Litros',
                  prefixIcon: Icon(
                    Icons.local_gas_station,
                    color: Color(0xFF1976D2),
                  ),
                ),
              ),

              TextField(
                controller: valorController,
                keyboardType:
                    const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                decoration: const InputDecoration(
                  labelText: 'Valor',
                  prefixIcon: Icon(
                    Icons.attach_money,
                    color: Color(0xFF1976D2),
                  ),
                ),
              ),

              TextField(
                controller: kmController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Quilometragem',
                  prefixIcon: Icon(
                    Icons.speed,
                    color: Color(0xFF1976D2),
                  ),
                ),
              ),
            ],
          ),

          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(dialogContext);
              },
              child: const Text(
                'Cancelar',
              ),
            ),

            ElevatedButton(
              onPressed: () async {
                final litros =
                    litrosController.text.trim();

                final valor =
                    valorController.text.trim();

                final km =
                    kmController.text.trim();

                if (litros.isEmpty ||
                    valor.isEmpty ||
                    km.isEmpty) {
                  return;
                }

                setState(() {
                  abastecimentos.add({
                    'litros': litros,
                    'valor': valor,
                    'km': km,
                  });
                });

                await salvarAbastecimentos();

                if (dialogContext.mounted) {
                  Navigator.pop(dialogContext);
                }
              },

              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color(0xFF1976D2),
                foregroundColor: Colors.white,
              ),

              child: const Text(
                'Adicionar',
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> excluirAbastecimento(
      int index) async {
    setState(() {
      abastecimentos.removeAt(index);
    });

    await salvarAbastecimentos();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Abastecimentos',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),


      body: abastecimentos.isEmpty
          ? const Center(
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.local_gas_station_outlined,
                    size: 70,
                    color: Color(0xFF64B5F6),
                  ),

                  SizedBox(height: 15),

                  Text(
                    'Nenhum abastecimento',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  SizedBox(height: 5),

                  Text(
                    'Clique no + para adicionar',
                  ),
                ],
              ),
            )

          : ListView.builder(
              padding: const EdgeInsets.all(16),

              itemCount: abastecimentos.length,

              itemBuilder: (context, index) {
                final item =
                    abastecimentos[index];

                return Card(
                  margin: const EdgeInsets.only(
                    bottom: 12,
                  ),

                  child: ListTile(
                    // ÍCONE
                    leading: const CircleAvatar(
                      backgroundColor:
                          Color(0xFF1976D2),

                      child: Icon(
                        Icons.local_gas_station,
                        color: Colors.white,
                      ),
                    ),

                    // LITROS
                    title: Text(
                      '${item['litros']} litros',

                      style: const TextStyle(
                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),

                    // VALOR E KM
                    subtitle: Text(
                      'Valor: R\$ ${item['valor']}'
                      '  •  Km: ${item['km']}',
                    ),

                    // LIXEIRA
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.delete_outline,
                      ),

                      color: Colors.red,

                      onPressed: () {
                        excluirAbastecimento(
                          index,
                        );
                      },
                    ),
                  ),
                );
              },
            ),

      floatingActionButton:
          FloatingActionButton(
        onPressed:
            adicionarAbastecimento,

        backgroundColor:
            const Color(0xFF1976D2),

        foregroundColor:
            Colors.white,

        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}