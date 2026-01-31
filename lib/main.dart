import 'package:flutter/material.dart';
import './src/theme/app_theme.dart';
import './src/components/ds_button.dart';
import './src/components/ds_text_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.light,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //homepage com botoes

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      //creating body
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DsButton(
              //primary
              label: 'Primary Button',
              onPressed: () {
                debugPrint('Primary pressed');
              },
            ),
            const SizedBox(height: 16),

            DsButton(
              //secondary
              label: 'Secondary Button',
              variant: DsButtonVariant.secondary,
              onPressed: () {},
            ),
            const SizedBox(height: 16),

            DsButton(
              //ghost button
              label: 'Ghost Button',
              variant: DsButtonVariant.ghost,
              onPressed: () {},
            ),
            const SizedBox(height: 32),

            DsButton(
              //loading
              label: 'Loading Button',
              isLoading: true,
              onPressed: () {},
            ),

            DsTextField(
              label: 'Nome:',
              placeholder: 'insira seu nome',
              isPassword: true,
            ),
          ],
        ),
      ),
    );
  }
}
