import 'package:best_365/repositery/api/best365_api.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../model_class/best_model.dart';

part 'best_bloc_event.dart';
part 'best_bloc_state.dart';

class BestBlocBloc extends Bloc<best365Event, best365State> {
  Best365Api animiedbApi = Best365Api();
  late Best365Model best365model;

  BestBlocBloc() : super(best365Initial()) {
    {
      on<fetchbest365>((event, emit) async {
        emit(best365BlocLoading());

        try {
          best365model = await animiedbApi.getbest365();
          emit(best365locLoaded());
        } catch (e) {
          print(e);
          emit(best365locError());
        }
      });
    }
    ;
  }
}
