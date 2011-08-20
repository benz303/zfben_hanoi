class Firefox < Browser
  def name
    'firefox'
  end

  def teardown
    if macos?
      system('killall ' + self.name)
    end
  end
end
