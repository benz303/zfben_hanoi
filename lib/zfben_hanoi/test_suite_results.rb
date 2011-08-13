class TestSuiteResults
  def initialize
    @total = 0
    @passed = 0
    @failed = 0
    @failed_files = []
  end
  
  def <<(result)
    @total += result.total
    @passed += result.passed
    @failed += result.failed
    @failed_files.push(result.filename) if result.failed?
  end
  
  def failed?
    @failed > 0
  end
  
  def to_s
    str = ""
    str << "\n  Filed: #{@failed_files.join(', ')}" if failed?
    "#{str}\n#{summary}\n\n"
  end
  
  def summary
    "#{@total} tests, #{@passed} passed, #{@failed} failed."
  end
end
