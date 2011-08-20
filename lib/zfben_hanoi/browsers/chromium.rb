class Chromium < Browser
  def name
    'chromium-browser'
  end
  
  def teardown
    if macos?
      system('killall ' + self.name)
    end
  end
end


