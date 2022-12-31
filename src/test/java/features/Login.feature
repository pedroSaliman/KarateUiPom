Feature: Login case
  Background:
    * def res = read('../locators/locator.yml')
    * def LoginLocator = res.LoginPage

  Scenario: Login case To SwagLabs
    Given driver "https://www.saucedemo.com/"
    And input(LoginLocator.username,"standard_user")
    And input(LoginLocator.password,"secret_sauce")
    Then click(LoginLocator.Button)
    Then match driver.url == "https://www.saucedemo.com/inventory.html"


