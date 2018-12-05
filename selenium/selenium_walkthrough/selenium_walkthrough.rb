require 'selenium-webdriver'

class SeleniumQaToolsForm

  def initialize
    @chrome_driver = Selenium::WebDriver.for :chrome
    @practise_form_url = 'http://toolsqa.com/automation-practice-form/'
    @first_name_field_name = 'firstname'
  end

  def visit_practise_form
    @chrome_driver.get(@practise_form_url)
  end

  def input_firstname_field(text)
    @chrome_driver.find_element(:name, @first_name_field_name).send_keys(text)
  end
end

test = SeleniumQaToolsForm.new.visit_practise_form
