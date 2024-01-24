import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

typedef SyncedPageViewState = ({double pixels, Object? invoker});

class SyncedPageViewCubit extends Cubit<SyncedPageViewState> {
  SyncedPageViewCubit([
    super.initial = (pixels: 0, invoker: null),
  ]);

  void setPixels(double pixels, Object invoker) =>
      emit((pixels: pixels, invoker: invoker));
}

class SyncedPageViews extends StatelessWidget {
  final Widget child;

  const SyncedPageViews({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SyncedPageViewCubit(),
      child: child,
    );
  }
}
