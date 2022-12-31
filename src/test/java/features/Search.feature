Feature: compare case
  Background:
    * def res = read('../locators/search.yml')
    * def Search = res.SearchPage

  Scenario: Search case To SwagLabs
    Given driver "https://naveenautomationlabs.com/opencart/"
    And input(Search.searchbar,"Iphone")
    And input(Search.searchbar,Key.ENTER)
    Then match driver.url == 'https://naveenautomationlabs.com/opencart/index.php?route=product/search&search=Iphone'
    And clear(Search.searchbar)
    And input(Search.searchbar,"HTC Touch HD")
    And input(Search.searchbar,Key.ENTER)
    Then match driver.url == 'https://naveenautomationlabs.com/opencart/index.php?route=product/search&search=HTC%20Touch%20HD'





