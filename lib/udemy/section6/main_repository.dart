import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class IStorage {
  int getCouterValue();
}

class StorageProd implements IStorage {
  //don't need extends
  int getCouterValue() => 90;
}

class StorageTest implements IStorage {
  int getCouterValue() => 20;
}

void main() {
  runApp(
    //RepositoryProvider
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider<IStorage>(
          create: (context) {
            //if(test)
              return StorageTest();
            //return StorageProd();
          },
        ),
      ],
      child: MaterialApp(
        home: SafeArea(
          child: Page(),
        ),
      ),
    ),
  );
}

class Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    print(context.read<IStorage>().getCouterValue());
    return Scaffold(
      body: Center(),
    );
  }
}
