_done = QUnit.done;
if(QUnit.urlParams.resultsURL){
  QUnit.done = function(result){
    $.get(QUnit.urlParams.resultsURL, {
      modules: result.total,
      tests: result.total,
      assertions: result.total,
      failures: result.failed,
      errors: result.failed
    });
    _done(arguments[0]);
  }
}
