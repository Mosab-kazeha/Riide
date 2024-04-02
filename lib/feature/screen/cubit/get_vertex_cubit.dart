import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:riide/core/domain/model/error_model.dart';
import 'package:riide/core/domain/model/excption_model.dart';
import 'package:riide/core/domain/model/response_model/vertex.dart';
import 'package:riide/core/domain/service/get_service/get_verteses_service.dart';

part 'get_vertex_state.dart';

class GetVertexCubit extends Cubit<GetVertexState> {
  List<VertexModel> vertex = [];
  GetVertexCubit() : super(GetVertexInitial());

  Future<void> getVertex() async {
    print('test00');
    final model = await GetVerticesService().getVertices();
    if (model is List<VertexModel>) {
      vertex = model;
      emit(GetVertexSuccess(vertese: model));
    } else if (model is ErrorModel) {
      emit(ErrorGettingVertex(error: model));
    } else if (model is ExcptionModel) {
      emit(ExcptionVertex(excption: model));
    }
  }

  @override
  void onChange(Change<GetVertexState> change) {
    print(change.currentState);
    super.onChange(change);
  }
}
