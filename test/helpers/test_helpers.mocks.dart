// Mocks generated by Mockito 5.4.4 from annotations
// in the_task/test/helpers/test_helpers.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i7;
import 'dart:ui' as _i8;

import 'package:flutter/material.dart' as _i6;
import 'package:google_generative_ai/google_generative_ai.dart' as _i18;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i5;
import 'package:stacked_services/stacked_services.dart' as _i4;
import 'package:the_task/models/goal.dart' as _i10;
import 'package:the_task/models/task.dart' as _i3;
import 'package:the_task/models/task_current_state.dart' as _i13;
import 'package:the_task/models/task_feedback.dart' as _i23;
import 'package:the_task/models/task_feedback_type.dart' as _i21;
import 'package:the_task/models/task_state.dart' as _i15;
import 'package:the_task/objectbox.g.dart' as _i2;
import 'package:the_task/services/generative_service.dart' as _i17;
import 'package:the_task/services/goal_service.dart' as _i9;
import 'package:the_task/services/store_service.dart' as _i11;
import 'package:the_task/services/task_create_service.dart' as _i19;
import 'package:the_task/services/task_current_service.dart' as _i12;
import 'package:the_task/services/task_feedback_service.dart' as _i22;
import 'package:the_task/services/task_feedback_type_service.dart' as _i20;
import 'package:the_task/services/task_service.dart' as _i16;
import 'package:the_task/services/task_state_service.dart' as _i14;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeStore_0 extends _i1.SmartFake implements _i2.Store {
  _FakeStore_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeTask_1 extends _i1.SmartFake implements _i3.Task {
  _FakeTask_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [NavigationService].
///
/// See the documentation for Mockito's code generation for more information.
class MockNavigationService extends _i1.Mock implements _i4.NavigationService {
  @override
  String get previousRoute => (super.noSuchMethod(
        Invocation.getter(#previousRoute),
        returnValue: _i5.dummyValue<String>(
          this,
          Invocation.getter(#previousRoute),
        ),
        returnValueForMissingStub: _i5.dummyValue<String>(
          this,
          Invocation.getter(#previousRoute),
        ),
      ) as String);

  @override
  String get currentRoute => (super.noSuchMethod(
        Invocation.getter(#currentRoute),
        returnValue: _i5.dummyValue<String>(
          this,
          Invocation.getter(#currentRoute),
        ),
        returnValueForMissingStub: _i5.dummyValue<String>(
          this,
          Invocation.getter(#currentRoute),
        ),
      ) as String);

  @override
  _i6.GlobalKey<_i6.NavigatorState>? nestedNavigationKey(int? index) =>
      (super.noSuchMethod(
        Invocation.method(
          #nestedNavigationKey,
          [index],
        ),
        returnValueForMissingStub: null,
      ) as _i6.GlobalKey<_i6.NavigatorState>?);

  @override
  void config({
    bool? enableLog,
    bool? defaultPopGesture,
    bool? defaultOpaqueRoute,
    Duration? defaultDurationTransition,
    bool? defaultGlobalState,
    _i4.Transition? defaultTransitionStyle,
    String? defaultTransition,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #config,
          [],
          {
            #enableLog: enableLog,
            #defaultPopGesture: defaultPopGesture,
            #defaultOpaqueRoute: defaultOpaqueRoute,
            #defaultDurationTransition: defaultDurationTransition,
            #defaultGlobalState: defaultGlobalState,
            #defaultTransitionStyle: defaultTransitionStyle,
            #defaultTransition: defaultTransition,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i7.Future<T?>? navigateWithTransition<T>(
    _i6.Widget? page, {
    bool? opaque,
    String? transition = r'',
    Duration? duration,
    bool? popGesture,
    int? id,
    _i6.Curve? curve,
    bool? fullscreenDialog = false,
    bool? preventDuplicates = true,
    _i4.Transition? transitionClass,
    _i4.Transition? transitionStyle,
    String? routeName,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #navigateWithTransition,
          [page],
          {
            #opaque: opaque,
            #transition: transition,
            #duration: duration,
            #popGesture: popGesture,
            #id: id,
            #curve: curve,
            #fullscreenDialog: fullscreenDialog,
            #preventDuplicates: preventDuplicates,
            #transitionClass: transitionClass,
            #transitionStyle: transitionStyle,
            #routeName: routeName,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i7.Future<T?>?);

  @override
  _i7.Future<T?>? replaceWithTransition<T>(
    _i6.Widget? page, {
    bool? opaque,
    String? transition = r'',
    Duration? duration,
    bool? popGesture,
    int? id,
    _i6.Curve? curve,
    bool? fullscreenDialog = false,
    bool? preventDuplicates = true,
    _i4.Transition? transitionClass,
    _i4.Transition? transitionStyle,
    String? routeName,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #replaceWithTransition,
          [page],
          {
            #opaque: opaque,
            #transition: transition,
            #duration: duration,
            #popGesture: popGesture,
            #id: id,
            #curve: curve,
            #fullscreenDialog: fullscreenDialog,
            #preventDuplicates: preventDuplicates,
            #transitionClass: transitionClass,
            #transitionStyle: transitionStyle,
            #routeName: routeName,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i7.Future<T?>?);

  @override
  bool back<T>({
    dynamic result,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #back,
          [],
          {
            #result: result,
            #id: id,
          },
        ),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  void popUntil(
    _i6.RoutePredicate? predicate, {
    int? id,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #popUntil,
          [predicate],
          {#id: id},
        ),
        returnValueForMissingStub: null,
      );

  @override
  void popRepeated(int? popTimes) => super.noSuchMethod(
        Invocation.method(
          #popRepeated,
          [popTimes],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i7.Future<T?>? navigateTo<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    bool? preventDuplicates = true,
    Map<String, String>? parameters,
    _i6.RouteTransitionsBuilder? transition,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #navigateTo,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #preventDuplicates: preventDuplicates,
            #parameters: parameters,
            #transition: transition,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i7.Future<T?>?);

  @override
  _i7.Future<T?>? navigateToView<T>(
    _i6.Widget? view, {
    dynamic arguments,
    int? id,
    bool? opaque,
    _i6.Curve? curve,
    Duration? duration,
    bool? fullscreenDialog = false,
    bool? popGesture,
    bool? preventDuplicates = true,
    _i4.Transition? transition,
    _i4.Transition? transitionStyle,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #navigateToView,
          [view],
          {
            #arguments: arguments,
            #id: id,
            #opaque: opaque,
            #curve: curve,
            #duration: duration,
            #fullscreenDialog: fullscreenDialog,
            #popGesture: popGesture,
            #preventDuplicates: preventDuplicates,
            #transition: transition,
            #transitionStyle: transitionStyle,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i7.Future<T?>?);

  @override
  _i7.Future<T?>? replaceWith<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    bool? preventDuplicates = true,
    Map<String, String>? parameters,
    _i6.RouteTransitionsBuilder? transition,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #replaceWith,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #preventDuplicates: preventDuplicates,
            #parameters: parameters,
            #transition: transition,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i7.Future<T?>?);

  @override
  _i7.Future<T?>? clearStackAndShow<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    Map<String, String>? parameters,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearStackAndShow,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #parameters: parameters,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i7.Future<T?>?);

  @override
  _i7.Future<T?>? clearStackAndShowView<T>(
    _i6.Widget? view, {
    dynamic arguments,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearStackAndShowView,
          [view],
          {
            #arguments: arguments,
            #id: id,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i7.Future<T?>?);

  @override
  _i7.Future<T?>? clearTillFirstAndShow<T>(
    String? routeName, {
    dynamic arguments,
    int? id,
    bool? preventDuplicates = true,
    Map<String, String>? parameters,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearTillFirstAndShow,
          [routeName],
          {
            #arguments: arguments,
            #id: id,
            #preventDuplicates: preventDuplicates,
            #parameters: parameters,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i7.Future<T?>?);

  @override
  _i7.Future<T?>? clearTillFirstAndShowView<T>(
    _i6.Widget? view, {
    dynamic arguments,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #clearTillFirstAndShowView,
          [view],
          {
            #arguments: arguments,
            #id: id,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i7.Future<T?>?);

  @override
  _i7.Future<T?>? pushNamedAndRemoveUntil<T>(
    String? routeName, {
    _i6.RoutePredicate? predicate,
    dynamic arguments,
    int? id,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #pushNamedAndRemoveUntil,
          [routeName],
          {
            #predicate: predicate,
            #arguments: arguments,
            #id: id,
          },
        ),
        returnValueForMissingStub: null,
      ) as _i7.Future<T?>?);
}

/// A class which mocks [BottomSheetService].
///
/// See the documentation for Mockito's code generation for more information.
class MockBottomSheetService extends _i1.Mock
    implements _i4.BottomSheetService {
  @override
  void setCustomSheetBuilders(Map<dynamic, _i4.SheetBuilder>? builders) =>
      super.noSuchMethod(
        Invocation.method(
          #setCustomSheetBuilders,
          [builders],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i7.Future<_i4.SheetResponse<dynamic>?> showBottomSheet({
    required String? title,
    String? description,
    String? confirmButtonTitle = r'Ok',
    String? cancelButtonTitle,
    bool? enableDrag = true,
    bool? barrierDismissible = true,
    bool? isScrollControlled = false,
    Duration? exitBottomSheetDuration,
    Duration? enterBottomSheetDuration,
    bool? ignoreSafeArea,
    bool? useRootNavigator = false,
    double? elevation = 1.0,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showBottomSheet,
          [],
          {
            #title: title,
            #description: description,
            #confirmButtonTitle: confirmButtonTitle,
            #cancelButtonTitle: cancelButtonTitle,
            #enableDrag: enableDrag,
            #barrierDismissible: barrierDismissible,
            #isScrollControlled: isScrollControlled,
            #exitBottomSheetDuration: exitBottomSheetDuration,
            #enterBottomSheetDuration: enterBottomSheetDuration,
            #ignoreSafeArea: ignoreSafeArea,
            #useRootNavigator: useRootNavigator,
            #elevation: elevation,
          },
        ),
        returnValue: _i7.Future<_i4.SheetResponse<dynamic>?>.value(),
        returnValueForMissingStub:
            _i7.Future<_i4.SheetResponse<dynamic>?>.value(),
      ) as _i7.Future<_i4.SheetResponse<dynamic>?>);

  @override
  _i7.Future<_i4.SheetResponse<T>?> showCustomSheet<T, R>({
    dynamic variant,
    String? title,
    String? description,
    bool? hasImage = false,
    String? imageUrl,
    bool? showIconInMainButton = false,
    String? mainButtonTitle,
    bool? showIconInSecondaryButton = false,
    String? secondaryButtonTitle,
    bool? showIconInAdditionalButton = false,
    String? additionalButtonTitle,
    bool? takesInput = false,
    _i8.Color? barrierColor = const _i8.Color(2315255808),
    double? elevation = 1.0,
    bool? barrierDismissible = true,
    bool? isScrollControlled = false,
    String? barrierLabel = r'',
    dynamic customData,
    R? data,
    bool? enableDrag = true,
    Duration? exitBottomSheetDuration,
    Duration? enterBottomSheetDuration,
    bool? ignoreSafeArea,
    bool? useRootNavigator = false,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showCustomSheet,
          [],
          {
            #variant: variant,
            #title: title,
            #description: description,
            #hasImage: hasImage,
            #imageUrl: imageUrl,
            #showIconInMainButton: showIconInMainButton,
            #mainButtonTitle: mainButtonTitle,
            #showIconInSecondaryButton: showIconInSecondaryButton,
            #secondaryButtonTitle: secondaryButtonTitle,
            #showIconInAdditionalButton: showIconInAdditionalButton,
            #additionalButtonTitle: additionalButtonTitle,
            #takesInput: takesInput,
            #barrierColor: barrierColor,
            #elevation: elevation,
            #barrierDismissible: barrierDismissible,
            #isScrollControlled: isScrollControlled,
            #barrierLabel: barrierLabel,
            #customData: customData,
            #data: data,
            #enableDrag: enableDrag,
            #exitBottomSheetDuration: exitBottomSheetDuration,
            #enterBottomSheetDuration: enterBottomSheetDuration,
            #ignoreSafeArea: ignoreSafeArea,
            #useRootNavigator: useRootNavigator,
          },
        ),
        returnValue: _i7.Future<_i4.SheetResponse<T>?>.value(),
        returnValueForMissingStub: _i7.Future<_i4.SheetResponse<T>?>.value(),
      ) as _i7.Future<_i4.SheetResponse<T>?>);

  @override
  void completeSheet(_i4.SheetResponse<dynamic>? response) =>
      super.noSuchMethod(
        Invocation.method(
          #completeSheet,
          [response],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [DialogService].
///
/// See the documentation for Mockito's code generation for more information.
class MockDialogService extends _i1.Mock implements _i4.DialogService {
  @override
  void registerCustomDialogBuilders(
          Map<dynamic, _i4.DialogBuilder>? builders) =>
      super.noSuchMethod(
        Invocation.method(
          #registerCustomDialogBuilders,
          [builders],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void registerCustomDialogBuilder({
    required dynamic variant,
    required _i6.Widget Function(
      _i6.BuildContext,
      _i4.DialogRequest<dynamic>,
      dynamic Function(_i4.DialogResponse<dynamic>),
    )? builder,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #registerCustomDialogBuilder,
          [],
          {
            #variant: variant,
            #builder: builder,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i7.Future<_i4.DialogResponse<dynamic>?> showDialog({
    String? title,
    String? description,
    String? cancelTitle,
    _i8.Color? cancelTitleColor,
    String? buttonTitle = r'Ok',
    _i8.Color? buttonTitleColor,
    bool? barrierDismissible = false,
    _i4.DialogPlatform? dialogPlatform,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showDialog,
          [],
          {
            #title: title,
            #description: description,
            #cancelTitle: cancelTitle,
            #cancelTitleColor: cancelTitleColor,
            #buttonTitle: buttonTitle,
            #buttonTitleColor: buttonTitleColor,
            #barrierDismissible: barrierDismissible,
            #dialogPlatform: dialogPlatform,
          },
        ),
        returnValue: _i7.Future<_i4.DialogResponse<dynamic>?>.value(),
        returnValueForMissingStub:
            _i7.Future<_i4.DialogResponse<dynamic>?>.value(),
      ) as _i7.Future<_i4.DialogResponse<dynamic>?>);

  @override
  _i7.Future<_i4.DialogResponse<T>?> showCustomDialog<T, R>({
    dynamic variant,
    String? title,
    String? description,
    bool? hasImage = false,
    String? imageUrl,
    bool? showIconInMainButton = false,
    String? mainButtonTitle,
    bool? showIconInSecondaryButton = false,
    String? secondaryButtonTitle,
    bool? showIconInAdditionalButton = false,
    String? additionalButtonTitle,
    bool? takesInput = false,
    _i8.Color? barrierColor = const _i8.Color(2315255808),
    bool? barrierDismissible = false,
    String? barrierLabel = r'',
    bool? useSafeArea = true,
    dynamic customData,
    R? data,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showCustomDialog,
          [],
          {
            #variant: variant,
            #title: title,
            #description: description,
            #hasImage: hasImage,
            #imageUrl: imageUrl,
            #showIconInMainButton: showIconInMainButton,
            #mainButtonTitle: mainButtonTitle,
            #showIconInSecondaryButton: showIconInSecondaryButton,
            #secondaryButtonTitle: secondaryButtonTitle,
            #showIconInAdditionalButton: showIconInAdditionalButton,
            #additionalButtonTitle: additionalButtonTitle,
            #takesInput: takesInput,
            #barrierColor: barrierColor,
            #barrierDismissible: barrierDismissible,
            #barrierLabel: barrierLabel,
            #useSafeArea: useSafeArea,
            #customData: customData,
            #data: data,
          },
        ),
        returnValue: _i7.Future<_i4.DialogResponse<T>?>.value(),
        returnValueForMissingStub: _i7.Future<_i4.DialogResponse<T>?>.value(),
      ) as _i7.Future<_i4.DialogResponse<T>?>);

  @override
  _i7.Future<_i4.DialogResponse<dynamic>?> showConfirmationDialog({
    String? title,
    String? description,
    String? cancelTitle = r'Cancel',
    _i8.Color? cancelTitleColor,
    String? confirmationTitle = r'Ok',
    _i8.Color? confirmationTitleColor,
    bool? barrierDismissible = false,
    _i4.DialogPlatform? dialogPlatform,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #showConfirmationDialog,
          [],
          {
            #title: title,
            #description: description,
            #cancelTitle: cancelTitle,
            #cancelTitleColor: cancelTitleColor,
            #confirmationTitle: confirmationTitle,
            #confirmationTitleColor: confirmationTitleColor,
            #barrierDismissible: barrierDismissible,
            #dialogPlatform: dialogPlatform,
          },
        ),
        returnValue: _i7.Future<_i4.DialogResponse<dynamic>?>.value(),
        returnValueForMissingStub:
            _i7.Future<_i4.DialogResponse<dynamic>?>.value(),
      ) as _i7.Future<_i4.DialogResponse<dynamic>?>);

  @override
  void completeDialog(_i4.DialogResponse<dynamic>? response) =>
      super.noSuchMethod(
        Invocation.method(
          #completeDialog,
          [response],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [GoalService].
///
/// See the documentation for Mockito's code generation for more information.
class MockGoalService extends _i1.Mock implements _i9.GoalService {
  @override
  int get listenersCount => (super.noSuchMethod(
        Invocation.getter(#listenersCount),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);

  @override
  _i7.Future<void> createAsync(_i10.Goal? goal) => (super.noSuchMethod(
        Invocation.method(
          #createAsync,
          [goal],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);

  @override
  _i7.Future<void> updateAsync(_i10.Goal? goal) => (super.noSuchMethod(
        Invocation.method(
          #updateAsync,
          [goal],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);

  @override
  _i7.Future<void> deleteAsync(_i10.Goal? goal) => (super.noSuchMethod(
        Invocation.method(
          #deleteAsync,
          [goal],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);

  @override
  List<_i10.Goal> getAll() => (super.noSuchMethod(
        Invocation.method(
          #getAll,
          [],
        ),
        returnValue: <_i10.Goal>[],
        returnValueForMissingStub: <_i10.Goal>[],
      ) as List<_i10.Goal>);

  @override
  void listenToReactiveValues(List<dynamic>? reactiveValues) =>
      super.noSuchMethod(
        Invocation.method(
          #listenToReactiveValues,
          [reactiveValues],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void addListener(void Function()? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void removeListener(void Function()? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void notifyListeners() => super.noSuchMethod(
        Invocation.method(
          #notifyListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [StoreService].
///
/// See the documentation for Mockito's code generation for more information.
class MockStoreService extends _i1.Mock implements _i11.StoreService {
  @override
  _i2.Store get store => (super.noSuchMethod(
        Invocation.getter(#store),
        returnValue: _FakeStore_0(
          this,
          Invocation.getter(#store),
        ),
        returnValueForMissingStub: _FakeStore_0(
          this,
          Invocation.getter(#store),
        ),
      ) as _i2.Store);

  @override
  _i7.Future<void> init() => (super.noSuchMethod(
        Invocation.method(
          #init,
          [],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
}

/// A class which mocks [TaskCurrentService].
///
/// See the documentation for Mockito's code generation for more information.
class MockTaskCurrentService extends _i1.Mock
    implements _i12.TaskCurrentService {
  @override
  set state(_i13.TaskCurrentState? value) => super.noSuchMethod(
        Invocation.setter(
          #state,
          value,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i13.TaskCurrentState get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _i13.TaskCurrentState.none,
        returnValueForMissingStub: _i13.TaskCurrentState.none,
      ) as _i13.TaskCurrentState);

  @override
  int get listenersCount => (super.noSuchMethod(
        Invocation.getter(#listenersCount),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);

  @override
  _i7.Future<void> init() => (super.noSuchMethod(
        Invocation.method(
          #init,
          [],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);

  @override
  _i7.Future<_i3.Task?> getTaskOrNullAsync() => (super.noSuchMethod(
        Invocation.method(
          #getTaskOrNullAsync,
          [],
        ),
        returnValue: _i7.Future<_i3.Task?>.value(),
        returnValueForMissingStub: _i7.Future<_i3.Task?>.value(),
      ) as _i7.Future<_i3.Task?>);

  @override
  _i7.Future<_i3.Task> getTaskAsync() => (super.noSuchMethod(
        Invocation.method(
          #getTaskAsync,
          [],
        ),
        returnValue: _i7.Future<_i3.Task>.value(_FakeTask_1(
          this,
          Invocation.method(
            #getTaskAsync,
            [],
          ),
        )),
        returnValueForMissingStub: _i7.Future<_i3.Task>.value(_FakeTask_1(
          this,
          Invocation.method(
            #getTaskAsync,
            [],
          ),
        )),
      ) as _i7.Future<_i3.Task>);

  @override
  _i7.Future<void> createAsync() => (super.noSuchMethod(
        Invocation.method(
          #createAsync,
          [],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);

  @override
  _i7.Future<void> skipAsync(_i3.Task? task) => (super.noSuchMethod(
        Invocation.method(
          #skipAsync,
          [task],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);

  @override
  _i7.Future<void> acceptAsync() => (super.noSuchMethod(
        Invocation.method(
          #acceptAsync,
          [],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);

  @override
  _i7.Future<void> abandonAsync(_i3.Task? task) => (super.noSuchMethod(
        Invocation.method(
          #abandonAsync,
          [task],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);

  @override
  _i7.Future<void> completeAsync(_i3.Task? task) => (super.noSuchMethod(
        Invocation.method(
          #completeAsync,
          [task],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);

  @override
  void listenToReactiveValues(List<dynamic>? reactiveValues) =>
      super.noSuchMethod(
        Invocation.method(
          #listenToReactiveValues,
          [reactiveValues],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void addListener(void Function()? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void removeListener(void Function()? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void notifyListeners() => super.noSuchMethod(
        Invocation.method(
          #notifyListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [TaskStateService].
///
/// See the documentation for Mockito's code generation for more information.
class MockTaskStateService extends _i1.Mock implements _i14.TaskStateService {
  @override
  int toInt(_i15.TaskState? state) => (super.noSuchMethod(
        Invocation.method(
          #toInt,
          [state],
        ),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);

  @override
  _i15.TaskState fromInt(int? stateId) => (super.noSuchMethod(
        Invocation.method(
          #fromInt,
          [stateId],
        ),
        returnValue: _i15.TaskState.waitingForApproval,
        returnValueForMissingStub: _i15.TaskState.waitingForApproval,
      ) as _i15.TaskState);

  @override
  String toText(_i15.TaskState? state) => (super.noSuchMethod(
        Invocation.method(
          #toText,
          [state],
        ),
        returnValue: _i5.dummyValue<String>(
          this,
          Invocation.method(
            #toText,
            [state],
          ),
        ),
        returnValueForMissingStub: _i5.dummyValue<String>(
          this,
          Invocation.method(
            #toText,
            [state],
          ),
        ),
      ) as String);
}

/// A class which mocks [TaskService].
///
/// See the documentation for Mockito's code generation for more information.
class MockTaskService extends _i1.Mock implements _i16.TaskService {
  @override
  _i7.Future<List<_i3.Task>> getAllAsync() => (super.noSuchMethod(
        Invocation.method(
          #getAllAsync,
          [],
        ),
        returnValue: _i7.Future<List<_i3.Task>>.value(<_i3.Task>[]),
        returnValueForMissingStub:
            _i7.Future<List<_i3.Task>>.value(<_i3.Task>[]),
      ) as _i7.Future<List<_i3.Task>>);

  @override
  _i7.Future<List<_i3.Task>> get20LatestAsync() => (super.noSuchMethod(
        Invocation.method(
          #get20LatestAsync,
          [],
        ),
        returnValue: _i7.Future<List<_i3.Task>>.value(<_i3.Task>[]),
        returnValueForMissingStub:
            _i7.Future<List<_i3.Task>>.value(<_i3.Task>[]),
      ) as _i7.Future<List<_i3.Task>>);

  @override
  int totalSkippedTasks() => (super.noSuchMethod(
        Invocation.method(
          #totalSkippedTasks,
          [],
        ),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);

  @override
  int totalAbandonedTasks() => (super.noSuchMethod(
        Invocation.method(
          #totalAbandonedTasks,
          [],
        ),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);

  @override
  int totalCompletedTasks() => (super.noSuchMethod(
        Invocation.method(
          #totalCompletedTasks,
          [],
        ),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);
}

/// A class which mocks [GenerativeService].
///
/// See the documentation for Mockito's code generation for more information.
class MockGenerativeService extends _i1.Mock implements _i17.GenerativeService {
  @override
  _i18.GenerativeModel get model => (super.noSuchMethod(
        Invocation.getter(#model),
        returnValue: _i5.dummyValue<_i18.GenerativeModel>(
          this,
          Invocation.getter(#model),
        ),
        returnValueForMissingStub: _i5.dummyValue<_i18.GenerativeModel>(
          this,
          Invocation.getter(#model),
        ),
      ) as _i18.GenerativeModel);

  @override
  _i7.Future<String> generateAsync(
    String? systemPrompt,
    String? userPrompt,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #generateAsync,
          [
            systemPrompt,
            userPrompt,
          ],
        ),
        returnValue: _i7.Future<String>.value(_i5.dummyValue<String>(
          this,
          Invocation.method(
            #generateAsync,
            [
              systemPrompt,
              userPrompt,
            ],
          ),
        )),
        returnValueForMissingStub:
            _i7.Future<String>.value(_i5.dummyValue<String>(
          this,
          Invocation.method(
            #generateAsync,
            [
              systemPrompt,
              userPrompt,
            ],
          ),
        )),
      ) as _i7.Future<String>);
}

/// A class which mocks [TaskCreateService].
///
/// See the documentation for Mockito's code generation for more information.
class MockTaskCreateService extends _i1.Mock implements _i19.TaskCreateService {
  @override
  _i7.Future<_i3.Task> createAsync() => (super.noSuchMethod(
        Invocation.method(
          #createAsync,
          [],
        ),
        returnValue: _i7.Future<_i3.Task>.value(_FakeTask_1(
          this,
          Invocation.method(
            #createAsync,
            [],
          ),
        )),
        returnValueForMissingStub: _i7.Future<_i3.Task>.value(_FakeTask_1(
          this,
          Invocation.method(
            #createAsync,
            [],
          ),
        )),
      ) as _i7.Future<_i3.Task>);
}

/// A class which mocks [TaskFeedbackTypeService].
///
/// See the documentation for Mockito's code generation for more information.
class MockTaskFeedbackTypeService extends _i1.Mock
    implements _i20.TaskFeedbackTypeService {
  @override
  int toInt(_i21.TaskFeedbackType? type) => (super.noSuchMethod(
        Invocation.method(
          #toInt,
          [type],
        ),
        returnValue: 0,
        returnValueForMissingStub: 0,
      ) as int);

  @override
  List<int> toInts(List<_i21.TaskFeedbackType>? types) => (super.noSuchMethod(
        Invocation.method(
          #toInts,
          [types],
        ),
        returnValue: <int>[],
        returnValueForMissingStub: <int>[],
      ) as List<int>);

  @override
  _i21.TaskFeedbackType fromInt(int? typeId) => (super.noSuchMethod(
        Invocation.method(
          #fromInt,
          [typeId],
        ),
        returnValue: _i21.TaskFeedbackType.notRelevant,
        returnValueForMissingStub: _i21.TaskFeedbackType.notRelevant,
      ) as _i21.TaskFeedbackType);

  @override
  List<_i21.TaskFeedbackType> fromInts(List<int>? typeIds) =>
      (super.noSuchMethod(
        Invocation.method(
          #fromInts,
          [typeIds],
        ),
        returnValue: <_i21.TaskFeedbackType>[],
        returnValueForMissingStub: <_i21.TaskFeedbackType>[],
      ) as List<_i21.TaskFeedbackType>);

  @override
  String toText(_i21.TaskFeedbackType? type) => (super.noSuchMethod(
        Invocation.method(
          #toText,
          [type],
        ),
        returnValue: _i5.dummyValue<String>(
          this,
          Invocation.method(
            #toText,
            [type],
          ),
        ),
        returnValueForMissingStub: _i5.dummyValue<String>(
          this,
          Invocation.method(
            #toText,
            [type],
          ),
        ),
      ) as String);
}

/// A class which mocks [TaskFeedbackService].
///
/// See the documentation for Mockito's code generation for more information.
class MockTaskFeedbackService extends _i1.Mock
    implements _i22.TaskFeedbackService {
  @override
  _i7.Future<void> saveAsync(
    _i23.TaskFeedback? taskFeedback,
    _i3.Task? task,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #saveAsync,
          [
            taskFeedback,
            task,
          ],
        ),
        returnValue: _i7.Future<void>.value(),
        returnValueForMissingStub: _i7.Future<void>.value(),
      ) as _i7.Future<void>);
}
