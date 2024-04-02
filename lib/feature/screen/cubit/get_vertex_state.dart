part of 'get_vertex_cubit.dart';

@immutable
sealed class GetVertexState {}

final class GetVertexInitial extends GetVertexState {}

final class GetVertexSuccess extends GetVertexState {
  final List<VertexModel> vertese;

  GetVertexSuccess({required this.vertese});
}

final class ErrorGettingVertex extends GetVertexState {
  final ErrorModel error;

  ErrorGettingVertex({required this.error});
}

final class ExcptionVertex extends GetVertexState {
  final ExcptionModel excption;

  ExcptionVertex({required this.excption});
}
