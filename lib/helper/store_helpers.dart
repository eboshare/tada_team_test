import 'package:mobx/mobx.dart';
import 'package:tada_team_test/helper/constants.dart';

LoadingStatus mapObservableFutureToStatus(ObservableFuture future) {
  final status = future?.status;
  if (status == null || status == FutureStatus.pending) {
    return LoadingStatus.loading;
  } else if (status == FutureStatus.fulfilled) {
    return LoadingStatus.success;
  } else {
    return LoadingStatus.error;
  }
}
