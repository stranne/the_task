enum TaskState {
  /// Waiting for the user to accept a new proposed task, or to skip it
  waitingForApproval,

  /// User has skipped this task
  skipped,

  /// Task user is current working on
  inProgress,

  /// Task user has completed
  completed,

  /// Task user has abandoned after initially accepted
  abandoned,
}
