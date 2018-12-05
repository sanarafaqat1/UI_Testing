require 'selenium-webdriver'

class SeleniumQaToolsForm

  def initialize
    @chrome_driver = Selenium::WebDriver.form :chrome
    @practise_form_url = 'http://toolsqa.com/automation-practice-form/'
    @first_name_field = 'firstname'
  end
end
