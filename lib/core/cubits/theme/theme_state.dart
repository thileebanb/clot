part of 'theme_cubit.dart';

@freezed
sealed class ThemeState with _$ThemeState {
  const factory ThemeState.light() = Light;
  const factory ThemeState.dark() = Dark;
}
