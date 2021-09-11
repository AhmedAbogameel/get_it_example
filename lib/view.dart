import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'service_locator.dart';

class View extends StatefulWidget {
  const View({Key? key}) : super(key: key);

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppLocator.controller,
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: BlocConsumer(
            bloc: AppLocator.controller,
            listener: (context, state) {
              if(AppLocator.controller.counter == 10) {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const FakeView(),));
              }
            },
            builder: (context, state) {
              return Text('Counter : ' + AppLocator.controller.counter.toString());
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: AppLocator.controller.plus,
        ),
      ),
    );
  }
}

class FakeView extends StatelessWidget {
  const FakeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Seems that we have a winner : ' + AppLocator.controller.counter.toString()),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.reset_tv_outlined),
        onPressed: ()=> Navigator.push(context, MaterialPageRoute(builder: (context) => const View(),)),
      ),
    );
  }
}
