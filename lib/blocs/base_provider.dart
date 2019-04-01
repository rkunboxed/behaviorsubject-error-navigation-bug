import 'package:flutter/widgets.dart';
//this provider is written in such a way that it can be used with lots of blocs.
//no need to write special providers for each bloc

//B is a "generic type", you can use any letter(s) as long as they aren't reserved keywords
Type _getType<B>() => B;

class BaseProvider<B> extends InheritedWidget {

  final B bloc;

  const BaseProvider({Key key, this.bloc, Widget child})
    : super(key: key, child: child);

  @override
  bool updateShouldNotify(BaseProvider<B> oldWidget) {
    return oldWidget.bloc != bloc;
  }

  static B of <B>(BuildContext context) {
    final type = _getType<BaseProvider<B>>();
    final BaseProvider<B> provider = context.inheritFromWidgetOfExactType(type);
    return provider.bloc;
  }
}

class BlocProvider<B> extends StatefulWidget {
  final void Function(BuildContext context, B bloc) onDispose;
  final B Function(BuildContext context, B bloc) builder;
  final Widget child;

  BlocProvider({
    Key key,
    @required this.child,
    @required this.builder,
    @required this.onDispose,
  }) : super(key: key);


  @override
  _BlocProviderState<B> createState() => _BlocProviderState<B>();
}

class _BlocProviderState<B> extends State<BlocProvider<B>> {
  B bloc;

  @override
  void initState() {
    super.initState();
    if (widget.builder != null) {
      bloc = widget.builder(context, bloc);
    }
  }

  @override
  void dispose() {
    if (widget.onDispose != null) {
      widget.onDispose(context, bloc);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseProvider(
      bloc: bloc,
      child: widget.child
    );
  }
}