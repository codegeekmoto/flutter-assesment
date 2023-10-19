abstract class DataState<T> {
  const DataState({this.data, this.error});

  final T? data;
  final dynamic error;
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(dynamic error) : super(error: error);
}

class DataNotSet<T> extends DataState<T> {
  const DataNotSet() : super(data: null);
}
