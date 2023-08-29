import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'football_state.dart';

class FootballCubit extends Cubit<FootballState> {
  FootballCubit() : super(FootballInitial());
}
