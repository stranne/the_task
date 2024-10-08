enum TaskCurrentState {
  /// No active task
  none,

  /// A new task is being created
  creating,

  /// Failed to create a new task
  creatingFailed,

  /// Waiting for the user to accept a new proposed task, or to skip it
  waitingForApproval,

  /// A task, that the user has accepted, is active
  active,
}
