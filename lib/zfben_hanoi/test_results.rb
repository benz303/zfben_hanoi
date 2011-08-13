class TestResults
  attr_reader :total, :passed, :failed, :filename
  def initialize(query, filename)
    @total = query['total'].to_i
    @passed = query['passed'].to_i
    @failed = query['failed'].to_i
    @filename   = filename
  end
  
  def failed?
    @failed > 0
  end
  
  def to_s
    return "F" if failed?
    "."
  end
end
