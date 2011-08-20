class Chromium < Browser
  def initialize(path = File.join(ENV['ProgramFiles'] || 'c:\Program Files', '\chromium-browser\chromium-browser'))
    @path = path
  end

  def teardown
    if macos?
      system("killall chromium-browser")
    end
  end
end
