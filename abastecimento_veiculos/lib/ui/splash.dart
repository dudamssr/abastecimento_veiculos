import 'package:flutter/material.dart';
import '../style/theme.dart';
import 'home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    final temaEscuro =
        Theme.of(context).brightness ==
            Brightness.dark;

    return Scaffold(
      backgroundColor: temaEscuro
          ? const Color(0xFF0D47A1)
          : const Color(0xFFE3F2FD),

      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 35,
            ),

            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.center,

              children: [

                Container(
                  width: 150,
                  height: 150,

                  padding: const EdgeInsets.all(20),

                  decoration: BoxDecoration(
                    color: temaEscuro
                        ? const Color(0xFF1565C0)
                        : Colors.white,

                    borderRadius:
                        BorderRadius.circular(25),

                    boxShadow: [
                      BoxShadow(
                        color:
                            Colors.black.withOpacity(0.15),

                        blurRadius: 10,

                        offset:
                            const Offset(0, 5),
                      ),
                    ],
                  ),

                  child: Image.asset(
                    'assets/icone.png',
                    fit: BoxFit.contain,
                  ),
                ),

                const SizedBox(height: 50),

                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center,

                  children: [
                    Icon(
                      temaEscuro
                          ? Icons.dark_mode
                          : Icons.light_mode,

                      color: temaEscuro
                          ? Colors.white
                          : const Color(0xFF1976D2),
                    ),

                    const SizedBox(width: 10),

                    Text(
                      'Mudar tema',

                      style: TextStyle(
                        fontSize: 16,

                        fontWeight:
                            FontWeight.w600,

                        color: temaEscuro
                            ? Colors.white
                            : const Color(0xFF0D47A1),
                      ),
                    ),

                    const SizedBox(width: 10),

                    Switch(
                      value: temaEscuro,

                      activeThumbColor:
                          Colors.white,

                      activeTrackColor:
                          const Color(0xFF42A5F5),

                      inactiveThumbColor:
                          const Color(0xFF1976D2),

                      inactiveTrackColor:
                          const Color(0xFF90CAF9),

                      onChanged: (valor) {
                        AppTheme.modo.value =
                            valor
                                ? ThemeMode.dark
                                : ThemeMode.light;
                      },
                    ),
                  ],
                ),

                const SizedBox(height: 35),


                SizedBox(
                  width: double.infinity,
                  height: 55,

                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,

                        MaterialPageRoute(
                          builder: (context) =>
                              const Home(),
                        ),
                      );
                    },

                    style:
                        ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color(0xFF1976D2),

                      foregroundColor:
                          Colors.white,

                      elevation: 3,

                      shape:
                          RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(15),
                      ),
                    ),

                    child: const Text(
                      'Entrar',

                      style: TextStyle(
                        fontSize: 18,

                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}